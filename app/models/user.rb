class User < ApplicationRecord
	belongs_to :restaurants
	has_many :orders
end
