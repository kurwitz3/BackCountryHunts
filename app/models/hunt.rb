class Hunt < ApplicationRecord
belongs_to :guide 
has_many :reviews
has_many :users , through: :reviews 

scope :budget_hunts, -> { where("cost < 3000")}
end 