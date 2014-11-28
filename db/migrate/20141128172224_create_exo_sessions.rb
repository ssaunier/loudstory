class CreateExoSessions < ActiveRecord::Migration
  def change
    create_table :exo_sessions do |t|
      t.references :exercise
      t.references :session
      t.timestamps
    end
  end
end
