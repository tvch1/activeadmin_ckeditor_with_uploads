module ActiveadminCkeditorWithUploads
  class Railtie < Rails::Railtie

    initializer "activeadmin_ckeditor_with_uploads_railtie.configure_rails_initialization" do
      ActiveAdmin.setup do |config|
        config.register_javascript 'admin/ckeditor'
      end
    end

  end
end