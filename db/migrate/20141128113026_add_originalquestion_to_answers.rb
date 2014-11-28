class AddOriginalquestionToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :original_question, :string
  end
end
