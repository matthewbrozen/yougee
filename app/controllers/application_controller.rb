class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #

  def after_sign_in_path_for(resource)
    if current_user.profile_type == "Gardener"
      gardener_path(current_user.profile)
    elsif current_user.profile_type == "Cook"
      cook_path(current_user.profile)
    else
      new_cook_path
    end
  end

end
