class AddAttachmentPictureToApadrinados < ActiveRecord::Migration[5.2]
  def self.up
    change_table :apadrinados do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :apadrinados, :picture
  end
end
