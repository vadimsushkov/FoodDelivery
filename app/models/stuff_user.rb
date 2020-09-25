class StuffUser < User
  belongs_to :user
  has_one :restaurant
end