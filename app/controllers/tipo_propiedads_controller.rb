class TipoPropiedadsController < ApplicationController
  before_action :set_tipo_propiedad, only: [:show, :edit, :update, :destroy]

  # GET /tipo_propiedads
  # GET /tipo_propiedads.json
  def index
    @tipo_propiedads = TipoPropiedad.all
  end

  # GET /tipo_propiedads/1
  # GET /tipo_propiedads/1.json
  def show
  end

  # GET /tipo_propiedads/new
  def new
    @tipo_propiedad = TipoPropiedad.new
  end

  # GET /tipo_propiedads/1/edit
  def edit
  end

  # POST /tipo_propiedads
  # POST /tipo_propiedads.json
  def create
    @tipo_propiedad = TipoPropiedad.new(tipo_propiedad_params)

    respond_to do |format|
      if @tipo_propiedad.save
        format.html { redirect_to @tipo_propiedad, notice: 'Tipo propiedad was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_propiedad }
      else
        format.html { render :new }
        format.json { render json: @tipo_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_propiedads/1
  # PATCH/PUT /tipo_propiedads/1.json
  def update
    respond_to do |format|
      if @tipo_propiedad.update(tipo_propiedad_params)
        format.html { redirect_to @tipo_propiedad, notice: 'Tipo propiedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_propiedad }
      else
        format.html { render :edit }
        format.json { render json: @tipo_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_propiedads/1
  # DELETE /tipo_propiedads/1.json
  def destroy
    @tipo_propiedad.destroy
    respond_to do |format|
      format.html { redirect_to tipo_propiedads_url, notice: 'Tipo propiedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_propiedad
      @tipo_propiedad = TipoPropiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_propiedad_params
      params.require(:tipo_propiedad).permit(:nombre)
    end
end
