class AddAttachmentPictureToAdoptados < ActiveRecord::Migration[5.2]
  def self.up
    change_table :adoptados do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :adoptados, :picture
  end
end
