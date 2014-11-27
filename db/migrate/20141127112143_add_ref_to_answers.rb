class AddRefToAnswers < ActiveRecord::Migration
  def change
    add_reference :answers, :users, index: true
    add_reference :answers, :sessions, index: true
  end
end
