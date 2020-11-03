class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :guides , :user_id 
    remove_column :guides, :hunt_id 
  end
end
