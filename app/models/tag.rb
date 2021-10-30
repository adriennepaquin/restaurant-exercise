class Tag < ApplicationRecord
    has_many :dishes, through: :dish_tags, dependent: :destroy

    validates :name, length: { minimum: 3 }
end
