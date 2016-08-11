class DosesController < ApplicationController
  before_action :set_dose, only: [ :show, :edit, :update, :destroy, :new, :create ]

  def home
  end

  def index
    @doses = Dose.all(cocktail_id)
  end


  def show
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
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
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:name, :address, :category, :phone_number)
  end
end


# class ReviewsController < ApplicationController
#   before_action :set_restaurant, only: [:new, :create]

#   def new
#     @review = Review.new
#   end

#   def create
#     @review = Review.new(review_params)
#     @review.restaurant = @restaurant
#     # @restaurant.reviews.build(review_params)
#     if @review.save
#       redirect_to restaurant_path(@restaurant)
#     else
#       render :new
#     end
#   end

#   private

#   def set_restaurant
#     @restaurant = Restaurant.find(params[:restaurant_id])
#   end

#   def review_params
#     params.require(:review).permit(:content)
#   end
# end
