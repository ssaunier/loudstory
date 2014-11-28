class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :session
  belongs_to :user
  belongs_to :exercise

  has_attached_file :photo,
    styles: { moodboard: "200x200>" }

  validates_attachment_content_type :photo,
    content_type: /\Aimage\/.*\z/
end
