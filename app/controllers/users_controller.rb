class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      location: params[:location],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(current_user.id)
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.phone = params[:phone] || user.phone
    user.location = params[:location] || user.location
    user.profile_pic = params[:profile_pic] || user.profile_pic
    if user.save
      render json: user
    else 
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(current_user.id)
      render json: {message: "User profile was successfully erased"}
  end
end
