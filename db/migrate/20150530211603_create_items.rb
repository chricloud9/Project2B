class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user, index: true, foreign_key: true
      t.references :orderline, index: true, foreign_key: true
      t.string :item_name
      t.integer :stock_quantity
      t.float :marked_price

      t.timestamps null: false
    end
  end
end
