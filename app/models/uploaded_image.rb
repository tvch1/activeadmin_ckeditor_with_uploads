class UploadedImage < Upload
  mount_uploader :file, CkeUploadsImageUploader

  def self.image_versions
    {file: {resize_to_limit: [728, 10000]}}
  end

  def self.thumb_versions
    nil
  end
end