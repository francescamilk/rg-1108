class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    # def initialize(properties = {})
    #     @name   = properties[:name]
    #     @rating = properties[:rating]
    # end
end
