require 'rails/generators/base'

module ActiveadminCkeditorWithUploads
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copy uploads migration to your application'

      source_root File.expand_path("../templates", __FILE__)

      def create_migration
        template 'migrations/create_uploads.rb', "db/migrate/#{migration_date}_create_uploads.rb"
      end

      def copy_resources
        template "admin/upload.rb", 'app/admin/upload.rb'
        template "admin/uploaded_file.rb", 'app/admin/uploaded_file.rb'
        template "admin/uploaded_image.rb", 'app/admin/uploaded_image.rb'
      end

      private

      def migration_date
        DateTime.now.strftime('%Y%m%d%H%M%S')
      end
    end
  end
end