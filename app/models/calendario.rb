class Calendario < ApplicationRecord
    has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, :path => ":rails_root/public/eventos/:id/:style/:basename.:extension",
    :url => "/eventos/:id/:style/:basename.:extension"
    validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/png", "image/jpeg"]
end
