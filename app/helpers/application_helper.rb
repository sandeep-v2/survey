module ApplicationHelper
  def login_or_logout
    if user_signed_in?
      raw %Q(<li><a href=#{new_user_session_path}>Logout</a></li>)
    else
      raw %Q(<li><a href=#{destroy_user_session_path}>Login</a></li>)
    end
  end
end
