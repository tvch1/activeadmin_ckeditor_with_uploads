class CkeUploadsImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  version :thumb do
    process dynamic_resize: :thumb
    process :quality => 100
  end

  process dynamic_resize: :origin
  process :quality => 100
  
  def dynamic_resize(target)
    actions = get_actions_for(target, mounted_as)
    actions.each { |method, args| self.send(method, *args) }
  end

  def get_actions_for(target, attribute)
    default = default_actions_for(target)
    actions_data = get_actions_data_for(target)
    actions_data[attribute] || default rescue default
  end

  def default_actions_for(target)
    case target
    when :origin then {}
    when :thumb then {resize_to_fit: [150,150]}
    end
  end

  def get_actions_data_for(target)
    case target
    when :origin then model.class.image_versions
    when :thumb then model.class.thumb_versions
    end rescue nil
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png bmp)
  end

end