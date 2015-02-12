$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activeadmin_ckeditor_with_uploads/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin_ckeditor_with_uploads"
  s.version     = ActiveadminCkeditorWithUploads::VERSION
  s.authors     = ["Vizvamitra"]
  s.email       = ["vizvamitra@gmail.com"]
  s.homepage    = "https://github.com/tvch1/activeadmin_ckeditor_with_uploads"
  s.summary     = "Adds ckeditor with working file and image uploads to activeadmin"
  s.description = "Adds ckeditor with working file and image uploads to activeadmin"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency 'ckeditor_rails', '~> 4.4.3'
  s.add_dependency 'activeadmin', '~> 1.0.0.pre'
  s.add_dependency 'haml-rails', '>= 0.5.3'
  s.add_dependency 'carrierwave', '~> 0.10.0'
  s.add_dependency 'mini_magick', '~> 3.8.1'

  s.add_development_dependency "sqlite3"
end
