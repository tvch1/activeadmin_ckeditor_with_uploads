require "activeadmin"
require 'carrierwave'
require 'ckeditor_rails'

require "formtastic/inputs/ckeditor_input"

require 'carrierwave/mini_magick'

require 'activeadmin_ckeditor_with_uploads/uploaders/cke_uploads_file_uploader'
require 'activeadmin_ckeditor_with_uploads/uploaders/cke_uploads_image_uploader'

require 'activeadmin_ckeditor_with_uploads/engine'
require 'activeadmin_ckeditor_with_uploads/railtie'

module ActiveadminCkeditorWithUploads
end
