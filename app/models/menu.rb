class Menu < ApplicationRecord
	belongs_to :restaurants
	has_many :items
end
