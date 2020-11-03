class CreateGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :guides do |t|
t.string :name
t.integer :hunt_id
t.integer :user_id 
    end
  end
end
