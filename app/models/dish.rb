class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :tags, through: :dish_tags, dependent: :destroy

  validates :name, :restaurant, presence: {message: "must be present"}
  # this should be in dishtag**
  # validates :dish_tags, uniqueness: {message: "already used"}
end
