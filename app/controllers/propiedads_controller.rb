class PropiedadsController < ApplicationController
  before_action :set_propiedad, only: [:show, :edit, :update, :destroy]
  before_action :set_amenities, only: [:create, :new, :update, :destroy, :show, :edit]
  before_action :authenticate_user! , only: [:new, :edit, :update, :create, :destroy]
  before_action :usuarioValido , only: [:edit, :update, :destroy]
  # GET /propiedads
  # GET /propiedads.json
  def index
    @propiedads = Propiedad.all
  end

  # GET /propiedads/1
  # GET /propiedads/1.json
  def show
  end

  # GET /propiedads/new
  def new
    @propiedad = Propiedad.new
  end

  # GET /propiedads/1/edit
  def edit
  end

  # POST /propiedads
  # POST /propiedads.json
  def create
    @propiedad = Propiedad.new(propiedad_params)
    tieneamenities = params[:tieneamenities]

    respond_to do |format|
      if @propiedad.save
        if tieneamenities
          tieneamenities.each do |a|
            if a[1] == '1'
              newAmenity = Tieneamenity.new
              newAmenity.propiedad = @propiedad
              newAmenity.amenity = Amenity.find_by_nombre(a[0])
            newAmenity.save
            end
          end
        end

        format.html { redirect_to @propiedad, notice: 'La propiedad fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @propiedad }
      else
        format.html { render :new }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propiedads/1
  # PATCH/PUT /propiedads/1.json
  def update
    respond_to do |format|
      if @propiedad.update(propiedad_params)
        tieneamenities = params[:tieneamenities]

        @propiedad.tieneamenities.each do |aprop|
          aprop.destroy
        end

        if tieneamenities
          tieneamenities.each do |a|
            if a[1] == '1'
              newAmenity = Tieneamenity.new
              newAmenity.propiedad = @propiedad
              newAmenity.amenity = Amenity.find_by_nombre(a[0])
            newAmenity.save
            end
          end
        end

        format.html { redirect_to @propiedad, notice: 'La propiedad fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @propiedad }
      else
        format.html { render :edit }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propiedads/1
  # DELETE /propiedads/1.json
  def destroy
    @propiedad.destroy
    respond_to do |format|
      format.html { redirect_to propiedads_url, notice: 'La propiedad fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_propiedad
    @propiedad = Propiedad.find(params[:id])
  end

  def set_amenities
    @amenities = Amenity.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def propiedad_params
    params.require(:propiedad).permit(:direccion, :numero, :piso, :departamento,
    :descripcion, :antiguedad, :operacion_id, :precio, :moneda_id, :superficie,
    :superficie_nc, :ambientes, :dormitorios, :expensas, :barrio_id,
    :tipo_propiedad_id, :amenities, :user_id, :tipo_publicacion_id, :fecha_publicacion)
  end

  def usuarioValido   
    if @propiedad.user_id != current_user.id
      redirect_to propiedads_url, alert: 'La propiedad no pertenece a este usuario.'
    end
  end
  
end
