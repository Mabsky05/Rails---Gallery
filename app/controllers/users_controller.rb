class UsersController < ApplicationController
  before_action :require_authentication, only: [ :show ]
  before_action :set_user, only: [ :show ]
  def show
    @pic = Pic.new
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
