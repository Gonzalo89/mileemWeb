class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , only: [:new, :edit, :update, :create, :destroy]
  before_action :usuarioValido , only: [:edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  # BUG 117
  # BUG 119
  def create

    @video = Video.new(video_params)
    prop = @video.propiedad    
    
    if @video.url ==""
      redirect_to propiedad_path(prop), alert: 'No puede ingresar una url vacía'
    else
      
      if !@video.url.match("youtube.com")
        redirect_to propiedad_path(prop), alert: 'Debe ingresar un video de youtube'
      else
        if(prop.videos.count >= TipoPublicacion.find(prop.tipo_publicacion).maxVideos)
          redirect_to propiedad_path(prop), notice: 'No se puede cargar mas videos.'
        else
          if @video.save
            redirect_to propiedad_path(prop), notice: 'El video se creó correctamente.'
          else
            redirect_to propiedad_path(prop)
          end
        end 
       end
    end
        
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to propiedad_path(@video.propiedad), notice: 'El video se eliminó correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:url, :propiedad_id)
    end
    
    def usuarioValido   
    if @video.propiedad.user_id != current_user.id
      redirect_to propiedads_url, alert: 'La propiedad no pertenece a este usuario.'
    end
  end
end
