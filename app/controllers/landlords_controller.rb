class LandlordsController < ApplicationController

  def index
    @landlords = Landlord.all
  end

  def new
    @landlord = Landlord.new
  end

  def create
    @landlord = Landlord.new(landlord_params)
    if @landlord.save
      redirect_to landlords_path
    else
      render :new
    end
  end

  def show
    @landlord = Landlord.find_by(id: params[:id])
  end

  def edit
    @landlord = Landlord.find_by(id: params[:id])
  end

  def update
    @landlord = Landlord.find_by(id: params[:id])
    @landlord.update(landlord_params)
    redirect_to landlord_path(@landlord)
  end

  def set_properties
    @properties = Landlord.find_by(property: [:property_id])
  end

  private

  def landlord_params
    params.require(:landlord).permit(:name, :phone_number)
  end

  def set_landlord
    @landlord = Landlord.find_by(id: params[:id])
  end



end
