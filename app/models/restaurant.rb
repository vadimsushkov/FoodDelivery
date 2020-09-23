class Restaurant < ApplicationRecord
	has_many :menus 
	has_many :users
end
