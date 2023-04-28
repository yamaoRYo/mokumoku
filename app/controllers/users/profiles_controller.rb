class Users::ProfilesController < ApplicationController
  before_action :require_login

  def show
    @user = User.find(params[:user_id])
  end
end
