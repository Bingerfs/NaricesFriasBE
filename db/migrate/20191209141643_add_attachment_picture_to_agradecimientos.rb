class AddAttachmentPictureToAgradecimientos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :agradecimientos do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :agradecimientos, :picture
  end
end
