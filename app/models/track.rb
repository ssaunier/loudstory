class Track < ActiveRecord::Base
  has_many :exercises
  has_many :sessions

  has_attached_file :photo,
    styles: { medium: "200x200#", thumb: "100x100>" }

  validates_attachment_content_type :photo,
    content_type: /\Aimage\/.*\z/

end
