class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart

  def cart
    # returns an array of the items stored in the cart using session
    session[:cart] ||=[]
  end
end
