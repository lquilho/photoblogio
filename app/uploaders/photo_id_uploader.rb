class PhotoIdUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
