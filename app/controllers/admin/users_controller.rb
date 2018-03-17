class Admin::UsersController < ApplicationController
  layout 'admin/layouts/application'
  before_action :require_sign_in!

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    @user.save!
    redirect_to '/admin/users'
  end

  def new
    @user = User.new
  end

  def destroy
    User.destroy(params[:id])
    redirect_to '/admin/users'
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    @user.save!
    redirect_to '/admin/users'
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation, :display_name)
  end
end
