class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def current_user
    @user=User.find(session[:user_id]) if user_sign_in?

  end
  helper_method "current_user"

  def user_sign_in?
    session[:user_id].present?
  end
  helper_method "user_sign_in?"

  def authentication
    redirect_to homes_index_path unless user_sign_in?

  end



end
