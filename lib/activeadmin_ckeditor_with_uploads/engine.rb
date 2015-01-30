module ActiveadminCkeditorWithUploads
  class Engine < Rails::Engine

    config.autoload_paths << File.expand_path("../../../app/admin", __FILE__)

    initializer "ActiveAdmin precompile hook" do |app|
      app.config.assets.precompile += ['admin/ckeditor.js']
    end

  end
end