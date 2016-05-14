class AddPaidAmountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :amount_paid, :decimal, :precision => 10, :scale => 2
  end
end
