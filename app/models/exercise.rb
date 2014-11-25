class Exercise < ActiveRecord::Base
  belongs_to :track
  has_many :questions
end
