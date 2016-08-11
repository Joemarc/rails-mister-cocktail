class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [ :show, :edit, :update, :destroy ]

  def home
  end

  def index
    @cocktails = cocktail.all
  end


  def show
  end

  def new
    @cocktail = cocktail.new
  end

  def create
    @cocktail = cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  # def edit
  #   @cocktail = cocktail.find(params[:id])
  # end


  # def update
  #   @cocktail.update(cocktail_params)
  #   redirect_to cocktail_path(@cocktail)
  # end

  # def destroy
  #   @cocktail.delete
  #   redirect_to cocktails_path
  # end

  private

  def set_cocktail
    @cocktail = cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :address, :category, :phone_number)
  end
end


