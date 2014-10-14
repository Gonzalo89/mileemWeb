class PropiedadsController < ApplicationController
  before_action :set_propiedad, only: [:show, :edit, :update, :destroy, :pausar, :reanudar, :finalizar]
  before_action :set_amenities, only: [:create, :new, :update, :destroy, :show, :edit]
  before_action :authenticate_user! , only: [:new, :edit, :update, :create, :destroy]
  before_action :usuarioValido , only: [:edit, :update, :destroy, :pausar, :reanudar, :finalizar]
  
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
    
    case @propiedad.tipo_publicacion_id
      when 1
        @propiedad.fecha_finalizacion = @propiedad.fecha_publicacion + TipoPublicacion.find(1).mesesDuracion.month
      when 2
        @propiedad.fecha_finalizacion = @propiedad.fecha_publicacion + TipoPublicacion.find(2).mesesDuracion.month
      when 3
         @propiedad.fecha_finalizacion = @propiedad.fecha_publicacion + TipoPublicacion.find(3).mesesDuracion.month
    end
    
    @propiedad.estado_id = 1

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

        format.html { redirect_to @propiedad, notice: 'La propiedad fue publicada exitosamente.' }
        format.json { render :show, status: :created, location: @propiedad }
      else
        format.html { render :new }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def pausar
    @propiedad.estado_id = 2
    
    @propiedad.save    
    redirect_to propiedads_path          
  end
  
  def reanudar
    @propiedad.estado_id = 1
    
    @propiedad.save    
    redirect_to propiedads_path          
  end
  
  def finalizar
    @propiedad.estado_id = 3
    
    @propiedad.save    
    redirect_to propiedads_path          
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
  
  def filtro
    @propiedades = Propiedad.all
    
    @propiedades = @propiedades.select { |propiedad|        
       (propiedad.fecha_publicacion < Time.now) && (propiedad.fecha_finalizacion > Time.now) && (propiedad.estado_id == 1)           
    }
    
    if params["barrioId"]
      @propiedades = @propiedades.select { |propiedad| propiedad.barrio_id == params["barrioId"].to_i }
    end
    
    if params["tipoPropiedadId"]
      @propiedades = @propiedades.select { |propiedad| propiedad.tipo_propiedad_id == params["tipoPropiedadId"].to_i }
    end
    
    if params["operacionId"]
      @propiedades = @propiedades.select { |propiedad| propiedad.operacion_id == params["operacionId"].to_i }
    end
    
    if params["codAmb"]
      case params["codAmb"].to_i
      when 1
        @propiedades = @propiedades.select { |propiedad| propiedad.ambientes == params["codAmb"].to_i }
      when 2
        @propiedades = @propiedades.select { |propiedad| propiedad.ambientes == params["codAmb"].to_i }
      when 3
        @propiedades = @propiedades.select { |propiedad| propiedad.ambientes == params["codAmb"].to_i }
      when 4
        @propiedades = @propiedades.select { |propiedad| propiedad.ambientes >= params["codAmb"].to_i }
      end      
    end
    
    if params["codPrecio"]
      case params["codPrecio"].to_i
      when 1
        @propiedades = @propiedades.select { |propiedad| propiedad.precio_pesos < 100000 }        
      when 2
        @propiedades = @propiedades.select { |propiedad| propiedad.precio_pesos >= 100000 }
        @propiedades = @propiedades.select { |propiedad| propiedad.precio_pesos < 500000 }
      when 3
        @propiedades = @propiedades.select { |propiedad| propiedad.precio_pesos >= 500000 }
        @propiedades = @propiedades.select { |propiedad| propiedad.precio_pesos < 900000 }
      when 4
        @propiedades = @propiedades.select { |propiedad| propiedad.precio_pesos >= 900000 }
      end      
    end
    
    if params["codSup"]
      case params["codSup"].to_i
      when 1
        @propiedades = @propiedades.select { |propiedad| propiedad.superficie < 50 }
      when 2
        @propiedades = @propiedades.select { |propiedad| propiedad.superficie >= 50 }
        @propiedades = @propiedades.select { |propiedad| propiedad.superficie < 100 }
      when 3
        @propiedades = @propiedades.select { |propiedad| propiedad.superficie >= 100}
        @propiedades = @propiedades.select { |propiedad| propiedad.superficie < 200 }
      when 4
        @propiedades = @propiedades.select { |propiedad| propiedad.superficie >= 200 }
      end      
    end
    
    if params["codFecha"]
      case params["codFecha"].to_i
      when 1
        @propiedades = @propiedades.select { |propiedad| propiedad.fecha_publicacion >= (Time.now - 1.week) }
      when 2
        @propiedades = @propiedades.select { |propiedad| propiedad.fecha_publicacion >= (Time.now - 1.month) }
      when 3
        @propiedades = @propiedades.select { |propiedad| propiedad.fecha_publicacion >= (Time.now - 3.month) }
      when 4
        @propiedades = @propiedades.select { |propiedad| propiedad.fecha_publicacion >= (Time.now - 6.month) }
      end      
    end
      
    if params["codOrd"]
      case params["codOrd"].to_i
      when 1
        @propiedades.sort_by! { |prop| [prop.precio, -prop.tipo_publicacion_id] }        
      when 2
        @propiedades.sort! do |a,b|
          [b[:fecha_publicacion], b[:tipo_publicacion_id]] <=> [a[:fecha_publicacion], a[:tipo_publicacion_id]]
        end
      else 
        @propiedades.sort_by! { |prop| [-prop.tipo_publicacion_id, prop.precio] }
      end      
    else 
      @propiedades.sort_by! { |prop| [-prop.tipo_publicacion_id, prop.precio] }  
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
    :tipo_propiedad_id, :amenities, :user_id, :tipo_publicacion_id, :fecha_publicacion,
    :fecha_finalizacion, :estado)
  end
  
  def usuarioValido   
    if @propiedad.user_id != current_user.id
      redirect_to propiedads_url, alert: 'La propiedad no pertenece a este usuario.'
    end
  end
  
end