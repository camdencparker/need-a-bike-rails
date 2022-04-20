class MessagesController < ApplicationController
  before_action :authenticate_user

  def index
    messages = Message.all
    messages = messages.order(:updated_at)
    render json: messages
  end

  def create
    message = Message.new(
      user_id: current_user.id,
      conversation_id: params[:conversation_id],
      body: params[:body],
    )
    if message.save
      render json: message
    else
      render json: { errors: message.errors.full_messages }, status: :bad_request
    end
  end
end
