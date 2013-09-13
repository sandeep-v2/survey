class ApplicationController < ActionController::Base
  protect_from_forgery

  #layout :layout_by_user

  # Check role of current user is admin or not
  def is_admin?
    current_user.role.eql?("admin")
  end

  # Filter to ensure only admin can access this area or else redirect to dashboard index
  def ensure_admin_user
   redirect_to dashboard_index_path unless is_admin?
  end

  # Set redirect path after logging the user
  def after_sign_in_path_for(resource)
    is_admin? ? admin_dashboard_index_path : dashboard_index_path
  end

  # Set redirect path after registration of user
  def after_sign_up_path_for(resource)
    new_user_session_path
  end

  def get_field_types
    @field_types = FieldType.all
  end

  protected
  def layout_by_user
    is_admin? ? "admin" : "application"
  end
end
