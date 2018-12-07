class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  layout "admin"

  def index
    @users = User.all.order(created_at: :desc)
  end

  private
    def is_admin?
      unless current_user.admin?
        flash[:alert] = "You dont have permissions"
        redirect_to root_path
      end
    end
end
