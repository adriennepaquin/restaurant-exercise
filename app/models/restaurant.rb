class Restaurant < ApplicationRecord
    has_many :dishes, dependent: :destroy

    validates :name, presence: {message: "must be present"}
end
