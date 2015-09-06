class AddBalanceAndChargeList < ActiveRecord::Migration
  def change
    add_column :users, :current_balance, :decimal, :precision => 5, :scale => 2
  end
end
