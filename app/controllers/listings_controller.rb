class ListingsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  def index
    listings = Listing.all
    if params[:search]
      listings = listings.where("title iLIKE ?", "%#{params[:search]}%")
    end
    listings = listings.order(:id)
    render json: listings
  end

  def create
    listing = Listing.new(
      user_id: current_user.id, 
      brand: params[:brand],
      model: params[:model],
      year: params[:year],
      description: params[:description],
      image_url: params[:image_url],
      location: params[:location]
    )
    if listing.save
      render json: listing
    else
      render json: { errors: listing.errors.full_messages }, status: :bad_request
    end
  end

  def show
    listing = Listing.find(params[:id])
    render json: listing
  end

  def update
    listing = Listing.find(params[:id])
      listing.brand = params[:brand] || listing.brand
      listing.model = params[:model] || listing.model
      listing.year = params[:year] || listing.year
      listing.description = params[:description] || listing.description
      listing.image_url = params[:image_url] || listing.image_url
      listing.location = params[:location] || listing.location
    if listing.save
      render json: listing
    else 
      render json: {errors: listing.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy
    render json: {message: "Listing was successfully erased"}
  end
end
