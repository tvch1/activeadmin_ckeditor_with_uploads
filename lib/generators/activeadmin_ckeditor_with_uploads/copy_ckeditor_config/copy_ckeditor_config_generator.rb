require 'rails/generators/base'

module ActiveadminCkeditorWithUploads
  module Generators
    class CopyCkeditorConfigGenerator < Rails::Generators::Base
      desc 'Copy ckeditor.js.coffee file to your application'

      def copy_ckeditor_config
        copy_file "../../../app/assets/javascripts/admin/ckeditor.js.coffee", 'app/assets/javascripts/admin/ckeditor.js.coffee'
      end

    end
  end
end