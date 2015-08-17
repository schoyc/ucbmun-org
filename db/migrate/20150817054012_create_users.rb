class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :university
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.integer :delegates_count
      t.string :username

      t.timestamps null: false
    end
  end
end
