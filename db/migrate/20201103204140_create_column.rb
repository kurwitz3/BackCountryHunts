class CreateColumn < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content 
      t.integer :user_id 
      t.integer :hunt_id
      t.timestamps 
    end
  end
end
