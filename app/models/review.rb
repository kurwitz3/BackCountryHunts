class Review < ApplicationRecord
  belongs_to :user 
  belongs_to :hunts, optional:true
 


  def user_name(review) 
    @user = User.find_by(review.user_id)
    @user.name
  end
    

end 