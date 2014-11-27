class AddAttachmentPhotoToTracks < ActiveRecord::Migration
  def self.up
    change_table :tracks do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :tracks, :photo
  end
end
