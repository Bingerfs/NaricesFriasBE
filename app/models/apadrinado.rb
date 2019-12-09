class Apadrinado < ApplicationRecord
    has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, :path => ":rails_root/public/apadrinados/:id/:style/:basename.:extension",
    :url => "/apadrinados/:id/:style/:basename.:extension"
    # default_url: "/images/:style/missing.png", :url => "/system/adoptados/pictures/000/000/008/original/4.jpg"
#validates_attachment :picture, presence: true
#do_not_validate_attachment_file_type :picture
# validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/png", "image/jpeg"]
end
