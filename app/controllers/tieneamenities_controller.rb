class TieneamenitiesController < ApplicationController
  before_action :set_tieneamenity, only: [:show, :edit, :update, :destroy]
  # GET /tieneamenities
  # GET /tieneamenities.json
  def index
    @tieneamenities = Tieneamenity.all
  end

  # GET /tieneamenities/1
  # GET /tieneamenities/1.json
  def show
  end

  # GET /tieneamenities/new
  def new
    @tieneamenity = Tieneamenity.new
  end

  # GET /tieneamenities/1/edit
  def edit
  end

  # POST /tieneamenities
  # POST /tieneamenities.json
  def create
    @tieneamenity = Tieneamenity.new(tieneamenity_params)

    respond_to do |format|
      if @tieneamenity.save
        format.html { redirect_to @tieneamenity, notice: 'Tieneamenity was successfully created.' }
        format.json { render :show, status: :created, location: @tieneamenity }
      else
        format.html { render :new }
        format.json { render json: @tieneamenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tieneamenities/1
  # PATCH/PUT /tieneamenities/1.json
  def update
    respond_to do |format|
      if @tieneamenity.update(tieneamenity_params)
        format.html { redirect_to @tieneamenity, notice: 'Tieneamenity was successfully updated.' }
        format.json { render :show, status: :ok, location: @tieneamenity }
      else
        format.html { render :edit }
        format.json { render json: @tieneamenity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tieneamenities/1
  # DELETE /tieneamenities/1.json
  def destroy
    @tieneamenity.destroy
    respond_to do |format|
      format.html { redirect_to tieneamenities_url, notice: 'Tieneamenity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tieneamenity
    @tieneamenity = Tieneamenity.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tieneamenity_params
    params.require(:tieneamenity).permit(:propiedad_id, :amenity_id)
  end
end
