class UsersController < ApplicationController
  def create
    user = User.new(
      email: params[:email],
      password: params[:password]
    )
    if user.save
      render json: user
    else
      render json: {message: users.errors.full_messages}, status: :bad_request
    end
  end
  def show
    user = User.find(params[:id])
    render json: user
  end
end
