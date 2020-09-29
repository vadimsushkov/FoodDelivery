class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.references :restaurant, null: false, foreign_key: true

    	t.hstore :title_translations
      t.hstore :sub_title_translations

      t.timestamps
    end
  end
end
