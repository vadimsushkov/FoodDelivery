class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
    	t.string :email
    	t.string :password
      t.string :type
      t.string :token

      t.timestamps
    end
    add_index :users, :type
  end
end
