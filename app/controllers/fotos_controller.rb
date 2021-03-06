class FotosController < ApplicationController
  before_action :set_foto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , only: [:new, :edit, :update, :create, :destroy]
  before_action :usuarioValido , only: [:edit, :update, :destroy]

  # GET /fotos
  # GET /fotos.json
  def index
    @fotos = Foto.all
  end

  # GET /fotos/1
  # GET /fotos/1.json
  def show
  end

  # GET /fotos/new
  def new
    @foto = Foto.new
  end

  # GET /fotos/1/edit
  def edit
  end

  # POST /fotos
  # POST /fotos.json
  def create
    @propiedad = Propiedad.find(params[:propiedad_id])

    if(@propiedad.fotos.count >= TipoPublicacion.find(@propiedad.tipo_publicacion).maxFotos)
      redirect_to propiedad_path(@propiedad), alert: 'No se puede cargar más fotos.'
    else
      @foto = @propiedad.fotos.create(foto_params)
      redirect_to propiedad_path(@propiedad)
    end
  end

  # PATCH/PUT /fotos/1
  # PATCH/PUT /fotos/1.json
  def update
    respond_to do |format|
      if @foto.update(foto_params)
        format.html { redirect_to @foto, notice: 'La foto fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @foto }
      else
        format.html { render :edit }
        format.json { render json: @foto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotos/1
  # DELETE /fotos/1.json
  def destroy
    propiedad = @foto.propiedad
    @foto.destroy
    respond_to do |format|
    # format.html { redirect_to fotos_url, notice: 'Foto was successfully destroyed.' }
      format.html { redirect_to propiedad_path(propiedad), notice: 'La foto fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_foto
    @foto = Foto.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def foto_params
    params.require(:foto).permit(:nombre, :propiedad_id)
  end
  
  def usuarioValido   
    if @foto.propiedad.user_id != current_user.id
      redirect_to propiedads_url, alert: 'La propiedad no pertenece a este usuario.'
    end
  end
end
