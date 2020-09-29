class CreateRestaurantsUsersJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :restaurants, :users
  end
end
