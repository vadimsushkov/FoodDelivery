class Owner < User
  belongs_to :user
  has_one :restaurant
end