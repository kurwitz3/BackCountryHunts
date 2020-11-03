class Hunt < ApplicationRecord
has_many :users, through: :guides 
end 