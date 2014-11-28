class AddRefToAnswers < ActiveRecord::Migration
  def change
    add_reference :answers, :user, index: true
    add_reference :answers, :sessions, index: true
  end
end
