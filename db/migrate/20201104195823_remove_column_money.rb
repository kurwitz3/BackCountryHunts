class RemoveColumnMoney < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :spending_money 
  end
end
