class BoxContentsController < ApplicationController
  before_action :set_box_content, only: [:show, :edit, :update, :destroy]

  # GET /box_contents
  # GET /box_contents.json
  def index
    @box_contents = BoxContent.all
  end

  # GET /box_contents/1
  # GET /box_contents/1.json
  def show
  end

  # GET /box_contents/new
  def new
    @box_content = BoxContent.new
  end

  # GET /box_contents/1/edit
  def edit
  end

  # POST /box_contents
  # POST /box_contents.json
  def create
    @box_content = BoxContent.new(box_content_params)

    respond_to do |format|
      if @box_content.save
        format.html { redirect_to @box_content, notice: 'Box content was successfully created.' }
        format.json { render :show, status: :created, location: @box_content }
      else
        format.html { render :new }
        format.json { render json: @box_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /box_contents/1
  # PATCH/PUT /box_contents/1.json
  def update
    respond_to do |format|
      if @box_content.update(box_content_params)
        format.html { redirect_to @box_content, notice: 'Box content was successfully updated.' }
        format.json { render :show, status: :ok, location: @box_content }
      else
        format.html { render :edit }
        format.json { render json: @box_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /box_contents/1
  # DELETE /box_contents/1.json
  def destroy
    @box_content.destroy
    respond_to do |format|
      format.html { redirect_to box_contents_url, notice: 'Box content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_box_content
      @box_content = BoxContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def box_content_params
      params.require(:box_content).permit(:box_id, :content_id)
    end
end
