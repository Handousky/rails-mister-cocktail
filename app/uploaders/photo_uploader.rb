class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :large do
    resize_to_fit 400, 300
  end

  version :thumbnail do
    cloudinary_transformation radius: 2, width: 100, height: 100, crop: :thumb
  end
end
