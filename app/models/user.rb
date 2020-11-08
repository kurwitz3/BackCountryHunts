class User < ApplicationRecord
  has_many :hunts, through: :reviews 
  has_many :reviews 
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

         def self.from_omniauth(auth)
          where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
            user.provider = auth.provider
            user.name = auth.info.name
            user.uid= auth.uid
            user.email = auth.info.email
            user.password = Devise.friendly_token[0,20]

          end 
        end

        def current_user 
          User.find_by(session[:user_id])
        end 

end
