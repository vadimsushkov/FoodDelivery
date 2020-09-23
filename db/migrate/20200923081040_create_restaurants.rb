class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
    	t.string :store
    	t.string :adress
    	t.string :city
    	t.string :country
    	t.string :contact
    	t.integer :status
    	
      t.timestamps
    end
  end
end
