class Tag < ApplicationRecord
    has_many :dishes, through: :dish_tags

    validates :name, length: { minimum: 3 }
end
