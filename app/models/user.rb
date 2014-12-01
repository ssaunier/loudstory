class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :answers
  has_many :sessions

  has_attached_file :picture,
    styles: { profile: "100x100#", nav: "30x30#" }, :default_url => "http://placehold.it/200&text=user"

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/


  def exercises
    self.sessions.map{|session| session.exercise}.uniq
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver
  end

end
