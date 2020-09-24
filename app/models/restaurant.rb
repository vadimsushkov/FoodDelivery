class Restaurant < ApplicationRecord
	has_many :menus 
	has_many :users
	has_many :orders, dependent: :destroy
end
