class PicsController < ApplicationController
  allow_unauthenticated_access

  def index
    @pics = Pic.all
    html_content = render_to_string(formats: [ :html ], template: "pics/index")
    pdf = Grover.new(html_content).pdf
    send_data pdf, filename: "invoice.pdf", type: "application/pdf"
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
      redirect_to @pic, notice: "uploaded pic"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pic = Pic.find(pic_params[:id])
  end

  def destroy
    @pic = Pic.destroy(params[:id])
    redirect_to pics_path
  end

  private
    def pic_params
      params.expect(pic: [ :name, :description, :images ])
    end

    def pics_params
      params.expect(pics: [ :name, :description, :images ])
    end
end
