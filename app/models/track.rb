class Track < ActiveRecord::Base
  has_many :exercises
  has_many :sessions
end
