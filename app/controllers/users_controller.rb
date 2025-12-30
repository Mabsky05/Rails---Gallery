class UsersController < ApplicationController
  before_action :require_authentication, only: [ :show ]
  before_action :set_user, only: [ :show ]


  private

  def user_params
    params.expect(:user).permit(images [])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
