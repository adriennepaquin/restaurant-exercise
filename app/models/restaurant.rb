class Restaurant < ApplicationRecord
    has_many :dishes

    validates :name, presence: {message: "must be present"}
end
