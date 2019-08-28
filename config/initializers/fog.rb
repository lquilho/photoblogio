# here is where we create our connection to AWS - LQ

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => "AWS",
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
    :region                 => ENV['AWS_REGION']
  }

  config.fog_directory = ENV['AWS_BUCKET']
  config.fog_public    = false
  #config.fog_region    = ENV['AWS_REGION']
end
