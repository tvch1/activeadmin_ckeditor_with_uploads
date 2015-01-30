module ActiveadminCkeditorWithUploads
  class Engine < Rails::Engine

    initializer "ActiveAdmin precompile hook" do |app|
      app.config.assets.precompile += ['admin/ckeditor.js admin/active_admin.css']
    end

  end
end