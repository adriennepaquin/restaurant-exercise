class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :tags, through: :dish_tags

  validates :name, :restaurant, presence: {message: "must be present"}
  validates :tag, uniqueness: {message: "already used"}
end
