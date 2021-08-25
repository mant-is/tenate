class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save 
      flash[:notice] = "Listing successfully created"
      redirect_to listing_path @listing
    else
      flash[:alert] = "Error: #{ @listing.errors.full_messages }"
      render :new
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end  

  private
  def listing_params
    params.require(:listing).permit(:address, :unit, :bedrooms, :bathrooms, :sqft, images: [])
  end
end
