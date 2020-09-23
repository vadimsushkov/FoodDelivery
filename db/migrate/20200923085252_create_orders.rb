class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
    	t.string :customer
    	t.integer :products_number
    	t.string :total_price
      t.timestamps
    end
  end
end
