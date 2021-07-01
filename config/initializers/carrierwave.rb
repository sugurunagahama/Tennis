require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage :fog
  config.fog_provider = 'fog/aws'
  config.fog_directory  = 'sygyrubucket'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIASIAUVOSYTLVIJE3K',
    aws_secret_access_key: 'tSAPmXHWBnM2utwUoqK ZhlY82rqLeW0nzh03sXR3',
    region: 'ap-northeast-1',
    path_style: true
  }
end