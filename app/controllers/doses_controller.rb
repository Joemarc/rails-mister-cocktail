class IngredientsController < ApplicationController
  before_action :set_dose, only: [ :show, :edit, :update, :destroy ]

  def home
  end

  def index
    @doses = dose.all
  end


  def show
  end

  # def new
  #   @dose = dose.new
  # end

  # def create
  #   @dose = dose.new(dose_params)
  #   if @dose.save
  #     redirect_to dose_path(@dose)
  #   else
  #     render :new
  #   end
  # end

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

#   private

#   def set_dose
#     @dose = dose.find(params[:id])
#   end

#   def dose_params
#     params.require(:dose).permit(:name, :address, :category, :phone_number)
#   end
end

