class UpdateSchema < ActiveRecord::Migration
  def change
    #add_reference(:exercices, :user)
    add_column :answers, :exercise_id, :integer
    rename_column :sessions, :track_id, :exercise_id
  end
end
