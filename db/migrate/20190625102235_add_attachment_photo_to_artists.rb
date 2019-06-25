class AddAttachmentPhotoToArtists < ActiveRecord::Migration[5.2]
  def self.up
    change_table :artists do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :artists, :photo
  end
end
