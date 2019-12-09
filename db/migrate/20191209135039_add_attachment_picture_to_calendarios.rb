class AddAttachmentPictureToCalendarios < ActiveRecord::Migration[5.2]
  def self.up
    change_table :calendarios do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :calendarios, :picture
  end
end
