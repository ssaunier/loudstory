class RemoveSessionsrefToAnswers < ActiveRecord::Migration
  def change
    remove_reference :answers, :sessions, index: true
  end
end
