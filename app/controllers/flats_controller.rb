class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    Flat.create(flat_params)
    redirect_to flats_path
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    Flat.update(flat_params)
    redirect_to flats_index_path
  end

  def show
    @flat = Flat.find(params[:id])
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description,
                                 :number_of_guests, :price_per_night)
  end
end
