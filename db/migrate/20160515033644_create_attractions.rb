class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.decimal :x_pos
      t.decimal :y_pos
      t.string :name
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
