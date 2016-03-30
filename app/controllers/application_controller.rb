class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  rescue_from ActiveRecord::RecordNotFound, with: :not_found_error
  
  protected
  
  def not_found_error
    render file: 'public/401.html', status: :not_found
  end
end
