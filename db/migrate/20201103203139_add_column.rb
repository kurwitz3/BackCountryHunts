class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :guides, :expertise, :string 
  end
end
