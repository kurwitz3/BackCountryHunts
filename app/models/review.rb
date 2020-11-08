class Review < ApplicationRecord
  belongs_to :user 
  belongs_to :hunts, optional: true
 validates :title, :content, presence: true 
end