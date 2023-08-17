class ApplicationController < ActionController::API

  helper_method :current_user

  include ActionController::Cookies
  include ActionController::MimeResponds
  include ActionController::RequestForgeryProtection

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  before_action :authorize
  # TODO ogarnąć jak w requestach puszczać token X-CSRF
  # protect_from_forgery with: :exception

  private

  def authorize
    @current_user = User.find_by(id: session[:user_id])
    return unless @current_user
    render json: { errors: ["Not authorized"] }, status: :unauthorized
  end
  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    puts "user id"
    puts session[:user_id]
  end

end
