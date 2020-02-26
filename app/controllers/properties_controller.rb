class PropertiesController < ApplicationController


    def index
        @properties = Property.all
    end

    def new
        @property = Property.new
    end

    def create
        @property = Property.new(property_params)
        if @property.save
            redirect_to property_path(@property)
        else
            redirect_to new_property_path
        end
    end

    def show
      @property = Property.find_by(id: params[:id])
    end

    def update
      @property.update(property_params)
    end

    def landlords
      @plandlord = Property.landlord_id(:name)

    end

    private

    def property_params
      params.require(:property).permit(:address, :single_rooms, :double_rooms, :bathrooms, :landlord_id)
    end
end
