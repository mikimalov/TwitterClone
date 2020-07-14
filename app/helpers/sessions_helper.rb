module SessionsHelper
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def user_present
    current_user.present?
  end

  def valid_user?(user)
    current_user == user
  end

  def session_notice
    flash # still not finished
    redirect_to root_path
  end
end
