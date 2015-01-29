require 'rails/generators/base'

module ActiveadminCkeditorWithUploads
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copy necessary files to your application'

      source_root File.expand_path("../templates", __FILE__)

      def copy_view
        empty_directory "app/views/admin/uploads"
        copy_file "views/select_resource.html.haml", 'app/views/admin/uploads/select_resource.html.haml'
      end

      def copy_resources
        template "admin/upload.rb", 'app/admin/upload.rb'
        template "admin/uploaded_file.rb", 'app/admin/uploaded_file.rb'
        template "admin/uploaded_image.rb", 'app/admin/uploaded_image.rb'
      end

      def create_migration
        template 'migrations/create_uploads.rb', "db/migrate/#{migration_date}_create_uploads.rb"
      end

      private

      def migration_date
        DateTime.now.strftime('%Y%m%d%H%M%S')
      end
    end
  end
end