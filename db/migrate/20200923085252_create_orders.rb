class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.decimal :price, precision: 10, scale: 2, default: "0.0", null: false
      t.string :currency, len: 3

      t.timestamps
    end
  end
end
