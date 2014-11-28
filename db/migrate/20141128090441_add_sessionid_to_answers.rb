class AddSessionidToAnswers < ActiveRecord::Migration
  def change
    add_reference :answers, :session, index: true
  end
end
