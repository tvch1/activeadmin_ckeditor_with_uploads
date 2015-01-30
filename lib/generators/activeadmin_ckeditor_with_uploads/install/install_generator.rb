require 'rails/generators/base'

module ActiveadminCkeditorWithUploads
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copy uploads migration to your application'

      source_root File.expand_path("../templates", __FILE__)

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