class UsersController < ApplicationController
  before_action :require_authentication, only: [ :show ]
  before_action :set_user, only: [ :show ]
  wrap_parameters :user, include: [ :email_address, :password, :password_confirmation ]
  def new
    @user.images = User.images.new
  end

  def image_params
    params.expect(user: [ :images, :password ])
  end

  def create
    @user = User.create!(user_params)
  end

  # def create
  #   @user.images = User.images.new(image_params)
  #   if @user.images.save
  #     redirect_to @user.image
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def user_params
    params.require(:user).permit(:username, :password, :email_address, :password_confirmation, :password_digest, :images)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user
    @user = User.find(params[:id])
  end



  # def update
  #   @user.images.update(image_params)
  #   if @user.images.save
  #     redirect_to @user.image
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end
end
