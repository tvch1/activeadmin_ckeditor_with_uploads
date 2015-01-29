class Upload < ActiveRecord::Base
  validates_presence_of :file
end