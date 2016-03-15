class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  protect_from_forgery with: :exception

  before_filter :require_login

private

  def require_login
    if !current_user && !(action_name == 'new' || action_name == 'create') && controller_name != 'sessions' && controller_name != 'omniauth_callbacks'
     redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
  end
end
