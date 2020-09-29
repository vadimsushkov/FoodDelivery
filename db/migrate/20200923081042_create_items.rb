class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :menu, null: false, foreign_key: true

      t.hstore :title_translations
      t.hstore :description_translations
    	t.decimal :price, precision: 10, scale: 2, default: "0.0", null: false
      t.string :currency, len: 3

      t.timestamps
    end
  end
end
