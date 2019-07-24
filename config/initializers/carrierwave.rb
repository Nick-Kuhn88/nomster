# config/initializers/carrierwave.rb
require 'carrierwave/storage/fog'
# CarrierWave.configure do |config|
#   config.fog_provider = 'fog/aws'                        # required
#   config.fog_public = false
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
#     aws_secret_access_key: ENV["AWS_SECRET_KEY"],        # required
#   }
#   config.fog_directory  = ENV["AWS_BUCKET"]              # required
#   config.storage = :fog 
# end

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_public = false
  config.fog_credentials = {
    provider:               'AWS',
    aws_access_key_id:      ENV["AWS_ACCESS_KEY"],
    aws_secret_access_key:  ENV["AWS_SECRET_KEY"],
  }

  config.fog_directory = ENV["AWS_BUCKET"]
end