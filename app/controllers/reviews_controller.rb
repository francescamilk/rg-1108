class ReviewsController < ApplicationController
    def create
        @review = Review.new(review_params)
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review.restaurant = @restaurant

        if @review.save 
            redirect_to restaurant_path(@restaurant)
        else
            render :show, status: :unprocessable_entity
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to restaurant_path(@review.restaurant)
        #status: :see_other
    end

    private

    def review_params
        params.require(:review).permit(:content)
    end
end
