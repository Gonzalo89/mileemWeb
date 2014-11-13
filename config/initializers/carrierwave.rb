# Archivo base tomado de https://github.com/carrierwaveuploader/carrierwave
# en la seccion "Using Amazon S3"
# y con modificaciones de:
# https://gist.github.com/cblunt/1303386
CarrierWave.configure do |config|
  if Rails.env.production?
    # Credenciales
    config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => 'AKIAJSVS5IWT2QOK7ZYA',       # required
      :aws_secret_access_key  => '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', # required
    }
    config.fog_directory  = 'mileemgrupo7'  # required
    config.storage = :fog
    config.cache_dir = "#{Rails.root}/tmp/uploads"             # To let CarrierWave work on heroku
  else
    config.storage = :file
  end
end