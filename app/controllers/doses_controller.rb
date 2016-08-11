class IngredientsController < ApplicationController
  before_action :set_dose, only: [ :show, :edit, :update, :destroy ]

  def home
  end

  def index
    @doses = Dose.all(cocktail_id)
  end


  def show
  end

  def new
    @dose = dose.new
  end

  def create
    @dose = dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  # def edit
  #   @dose = dose.find(params[:id])
  # end


  # def update
  #   @dose.update(dose_params)
  #   redirect_to dose_path(@dose)
  # end

  # def destroy
  #   @dose.delete
  #   redirect_to doses_path
  # end

  private

  def set_dose
    @dose = dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:name, :address, :category, :phone_number)
  end
end


class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
