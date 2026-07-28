class PicsController < ApplicationController
  allow_unauthenticated_access

  def index
    @pics = Pic.all
  end

  def show
    @pic = Pic.find(params[:id])
  end

  def new
    @pic = Pic.new
  end

  def edit
    @pic = Pic.find(params[:id])
  end

  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to @pic, notice: "uploaded pic"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @pic = Pic.find(params[:id])
    if @pic.update(pic_params)
      redirect_to @pic
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pic = Pic.destroy(params[:id])
    redirect_to pics_path
  end

  private
    def pic_params
      params.expect(pic: [ :name, :description, :images ])
    end
end
