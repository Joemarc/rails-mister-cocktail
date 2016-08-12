class CocktailsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]
  # GET /cocktails
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  def show
    @dose = Dose.new
  end

  # GET /cocktails/new
  def new
    @cocktail = Cocktail.new
  end

  # POST /cocktails
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end


  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end


  # def update
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_restaurant
    @cocktail = Cocktail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cocktail_params
    params.require(:cocktail).permit(:name, photos: [])
  end
end


