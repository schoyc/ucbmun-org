class AddBalanceAndChargeList < ActiveRecord::Migration
  def change
    add_column :users, :current_balance, :decimal
  end
end
