class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
    	t.string :food_menu
    	t.string :categories
    	
      t.timestamps
    end
  end
end
