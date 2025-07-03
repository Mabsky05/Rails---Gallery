class PicsController < ApplicationController
  # \/\/\/=delete unauthenticated access later!
  allow_unauthenticated_access only: %i[ index show]

  # index should be made into gallery of photos
  def index
    @pics = Pic.all
  end

  def show
    @pic = Pic.find(params[:id])
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to @pic
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete
  end

  private
    def pic_params
      params.expect(pic: [ :name, :description, :featured_image ])
    end
end
