class AddAttachmentPhotoToParkings < ActiveRecord::Migration
  def self.up
    change_table :parkings do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :parkings, :photo
  end
end
