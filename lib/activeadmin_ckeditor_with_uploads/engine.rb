module ActiveadminCkeditorWithUploads
  class Engine < Rails::Engine

    initializer "ActiveAdmin precompile hook" do |app|
      app.config.assets.precompile += ['admin/ckeditor.js']
    end

  end
end