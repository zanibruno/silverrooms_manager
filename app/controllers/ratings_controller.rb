class RatingsController < ApplicationController

  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to rating_path(rating)
    else
      render :new
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:rating, :comment)
  end

end
