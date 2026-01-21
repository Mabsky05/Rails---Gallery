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

  def user_images
    @user.images = User.images
  end

  def new
    @user.images = User.images.new
  end

  def create
    @user.images = User.images.new(image_params)
    if @user.images.save
      redirect_to @user.image
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @user.images.update(image_params)
    if @user.images.save
      redirect_to @user.image
    else
      render :new, status: :unprocessable_entity
    end
  end
end
