class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
			t.references :user, null: false, foreign_key: true

    	t.string :store
    	t.string :address
    	t.string :city
    	t.string :country, len: 2
    	t.integer :status, limit: 1
    	
      t.timestamps
    end
  end
end
