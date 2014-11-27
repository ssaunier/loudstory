class RemoveUidFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :uid, :string
  end
end
