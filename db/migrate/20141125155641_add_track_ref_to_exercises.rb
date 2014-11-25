class AddTrackRefToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :track, index: true
  end
end
