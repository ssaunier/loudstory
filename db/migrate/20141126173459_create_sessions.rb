class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.references :track, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
