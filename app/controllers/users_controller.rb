class UsersController < ApplicationController
  before_action :require_authentication, only: [ :show ]
  before_action :set_user, only: [ :show ]

  def new
    @user.images = User.images.new
  end

  def image_params
    # params.expect(:user).permit(images [])
    params.expect(user: [ :email_address, :password, :images ])
  end

  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id
    # redirect_to root_path
  end

  # def create
  #   @user.images = User.images.new(image_params)
  #   if @user.images.save
  #     redirect_to @user.image
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  private

  def user_params
    params.expect(user: [ :images ])
  end

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
