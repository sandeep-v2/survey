class Admin::DashboardController < ApplicationController
  layout :layout_by_user
  before_filter :authenticate_user!
  before_filter :ensure_admin_user

  def index
  end
end
