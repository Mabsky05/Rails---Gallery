class PicsController < ApplicationController
  allow_unauthenticated_access
  def new
    @pic = Pic.new
  end

  def index
    @pics = Pic.all
  end

  def show
    @pic = Pic.find(params[:id])
  end

  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to pics_path, notice: "uploaded pic"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pic = Pic.find(params[:id])
  end

  def destroy
    @pic = Pic.destroy(params[:id])
    redirect_to pics_path
  end

  private
    def pic_params
      params.expect(pic: [ :id, :name ])
    end
end
