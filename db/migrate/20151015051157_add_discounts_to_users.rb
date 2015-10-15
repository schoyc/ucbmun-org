class AddDiscountsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :delegate_discount, :decimal, :precision => 10, :scale => 2
    add_column :users, :delegation_discount, :decimal, :precision => 10, :scale => 2
  end
end
