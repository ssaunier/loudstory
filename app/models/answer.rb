class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :session
  belongs_to :user
end
