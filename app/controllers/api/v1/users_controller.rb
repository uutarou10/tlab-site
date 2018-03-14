class Api::V1::UsersController < ApplicationController
  protect_from_forgery

  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    user.password_confirmation = user_params[:password]
    user.save!
    render json: user # TODO: digestを返さないようにする
  end

  def update
    user = User.find(params[:id])
    user.update_attributes!(user_params)
    render json: user
  end

  def show
    render json: User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy!
    head 204
  end

  private

  def user_params
    params.permit(:name, :email, :password, :display_name)
  end
end
