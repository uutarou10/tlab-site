class ApplicationController < ActionController::Base
  include Knock::Authenticable
  protect_from_forgery with: :exception
  before_action :current_user
  # before_action :require_sign_in!
  helper_method :signed_in?

  def current_user
    remember_token = User.encrypt(cookies[:user_remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def signed_in?
    @current_user.present?
  end

  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:user_remember_token] = remember_token
    user.update!(remember_token: User.encrypt(remember_token))
    @current_user = user
  end

  def sign_out
    cookies.delete(:user_remember_token)
  end

  def require_sign_in!
    redirect_to '/admin/login' unless signed_in?
  end
end
