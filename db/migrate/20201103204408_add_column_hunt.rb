class AddColumnHunt < ActiveRecord::Migration[6.0]
  def change
    add_column :hunts, :guide_id, :integer 
  end
end
