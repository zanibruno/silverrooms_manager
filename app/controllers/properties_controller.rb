class PropertiesController < ApplicationController

    def index
        @properties = Property.all
    end 

    def new
        @property = Property.new 
    end 

    def create 
        @property = Property.new(params.require(:property).permit(:address, :single_rooms, :double_rooms, :bathrooms))
        if @property.save 
            redirect_to property_path(@property)
        else 
            redirect_to new_property_path
        end 
    end 
end
