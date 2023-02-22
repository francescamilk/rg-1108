class Restaurant < ApplicationRecord
    has_many :reviews

    # def initialize(properties = {})
    #     @name   = properties[:name]
    #     @rating = properties[:rating]
    # end
end
