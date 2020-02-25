class RatingsController < ApplicationController

  def index
    if tenant = Tenant.find_by(id: params[:tenant_id])
      @ratings = tenant.ratings
    else
    @ratings = Rating.all
  end
  end

  def new
    if tenant = Tenant.find_by(id: params[:tenant_id])
      @rating = Rating.new(tenant_id: tenant.id)
    else
      redirect_to tenants_path
    end
  end



  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to rating_path(@rating)
    else
      render :new
    end
  end

  def show
    @rating = Rating.find_by(id: params[:id])
  end

  def rated
    @rated = Rating.rated
  end

  private

  def rating_params
    params.require(:rating).permit(:rating, :comment, :tenant_id, :property_id)
  end

end
