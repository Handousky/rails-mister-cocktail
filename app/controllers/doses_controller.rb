class DosesController < ApplicationController
  #pas de new, on intègre directement le new dose dans le show des cocktails
  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
      #something is missing here
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail, :ingredient, :cocktail_id, :ingredient_id)
  end
end
