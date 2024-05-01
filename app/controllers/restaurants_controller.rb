class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  # CRUD Restaurants
  def index
    @restaurants = Restaurant.all
  end

  def show
    @reviews = Review.where(restaurant: @restaurant)
    @review = Review.new
    @avg_review = @reviews.map {|review| review.rating.to_i}.sum / @reviews.length.to_f
    @avg_review = @avg_review.round(1)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
