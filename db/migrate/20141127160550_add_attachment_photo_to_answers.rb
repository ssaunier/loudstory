class AddAttachmentPhotoToAnswers < ActiveRecord::Migration
  def self.up
    change_table :answers do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :answers, :photo
  end
end
