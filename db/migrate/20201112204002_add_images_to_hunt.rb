class AddImagesToHunt < ActiveRecord::Migration[6.0]
  def change
    add_column :hunts, :image, :string
  end
end
