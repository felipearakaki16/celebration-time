class DosesController < ApplicationController

  def index
  end

  # def new
  #   @dose = Dose.new
  # end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)     
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_dose
  #   @dose = Dose.find(params[:id])
  # end

  # Only allow a trusted parameter "Allow list" through.
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
