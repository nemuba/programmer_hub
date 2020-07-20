class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  # Choose what kind of storage to use for this uploader:
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fit: [50, 50]
  end

  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end


end
