class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :answers, :users_id, :integer
  end
end
