class CreateHunts < ActiveRecord::Migration[6.0]
  def change
    create_table :hunts do |t|
      t.string :animal 
      t.string :location
      t.integer :cost 
    end
  end
end
