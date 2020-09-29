class Restaurant < ApplicationRecord
	has_many :menus 
	belongs_to :users, as: :owner, class_name: 'OwnerUser'
	has_many :orders, dependent: :destroy
	has_and_belongs_to_many :users, as: :stuffs, class_name: 'StuffUser', join_table: :restaurants_stuffs
end
