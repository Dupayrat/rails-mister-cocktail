class DosesController < ApplicationController

before_action :set_doses, only: [:show, :destroy]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.create(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "dose/new"
    end

  end


  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

end

