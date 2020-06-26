class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [ :show ]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = @cocktail.doses
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: 'Dose successfully created.'
    else
      render 'cocktails/show'
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  # Only allow a trusted parameter "Allow list" through.
  def cocktail_params
    params.require(:cocktail).permit(:name, images: [])
  end
end
