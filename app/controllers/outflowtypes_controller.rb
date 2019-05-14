class OutflowtypesController < ApplicationController
  before_action :set_outflowtype, only: [:show, :edit, :update, :destroy]

  # GET /outflowtypes
  # GET /outflowtypes.json
  def index
    @outflowtypes = Outflowtype.all
  end

  # GET /outflowtypes/1
  # GET /outflowtypes/1.json
  def show
  end

  # GET /outflowtypes/new
  def new
    @outflowtype = Outflowtype.new
  end

  # GET /outflowtypes/1/edit
  def edit
  end

  # POST /outflowtypes
  # POST /outflowtypes.json
  def create
    @outflowtype = Outflowtype.new(outflowtype_params)

    respond_to do |format|
      if @outflowtype.save
        format.html { redirect_to @outflowtype, notice: 'Outflowtype was successfully created.' }
        format.json { render :show, status: :created, location: @outflowtype }
      else
        format.html { render :new }
        format.json { render json: @outflowtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outflowtypes/1
  # PATCH/PUT /outflowtypes/1.json
  def update
    respond_to do |format|
      if @outflowtype.update(outflowtype_params)
        format.html { redirect_to @outflowtype, notice: 'Outflowtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @outflowtype }
      else
        format.html { render :edit }
        format.json { render json: @outflowtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outflowtypes/1
  # DELETE /outflowtypes/1.json
  def destroy
    @outflowtype.destroy
    respond_to do |format|
      format.html { redirect_to outflowtypes_url, notice: 'Outflowtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outflowtype
      @outflowtype = Outflowtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outflowtype_params
      params.require(:outflowtype).permit(:name, :description, :system_item)
    end
end
