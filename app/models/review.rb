class Review < ApplicationRecord
  belongs_to :user 
  belongs_to :hunts
  validates :title,:content, presence: :true

end 