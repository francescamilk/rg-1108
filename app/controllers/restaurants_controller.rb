class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]

    def index
        @restaurants = Restaurant.all
    end

    def top
        # @restaurants = Restaurant.all.select { |restaurant| restaurant.rating == 5 }
        @restaurants = Restaurant.where(rating: 5)
    end

    def show; end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        redirect_to restaurant_path(@restaurant.id) if @restaurant.save
    end

    def edit; end

    def update
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant.id) if @restaurant.save
    end

    def destroy
        @restaurant.destroy
        redirect_to restaurants_path, status: :see_other
    end

    private

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :rating)
    end
end
