require 'rails/generators/base'

module ActiveadminCkeditorWithUploads
  module Generators
    class CustomizeGenerator < Rails::Generators::Base
      desc 'Copy ckeditor.js.coffee file to your application'

      def copy_ckeditor_config
        copy_file "../../../../app/assets/javascripts/admin/ckeditor.js.coffee", 'app/assets/javascripts/admin/ckeditor.js.coffee'
      end

      def copy_view
        empty_directory "app/views/admin/uploads"
        copy_file "../../../../app/views/select_resource.html.haml", 'app/views/admin/uploads/select_resource.html.haml'
      end

    end
  end
end