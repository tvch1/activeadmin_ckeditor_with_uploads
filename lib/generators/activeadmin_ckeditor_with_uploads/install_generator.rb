# require 'rails/generators/base'

# module ActiveadminCkeditorWithUploads
#   module Generators
#     class InstallGenerator < Rails::Generators::Base
#       desc 'Copy necessary files to your application'

#       def copy_resource
#         copy_file "../../../app/admin/upload.rb", 'app/admin/upload.rb'
#       end

#       def copy_view
#         copy_file "../../../app/views/admin/uploads/select_resource.html.haml", 'app/views/admin/uploads/select_resource.html.haml'
#       end

#       def copy_migrations
#         copy_file "../../../db/migrate/create_uploads.rb", "db/migrate/#{migration_date}_create_uploads.rb"
#       end

#       private

#       def migration_date
#         now = DateTime.now
#         [:year, :month, :day, :hour, :minute, :second].map do |method|
#           now.send(method).to_s
#         end.join('')
#       end

#     end
#   end
# end