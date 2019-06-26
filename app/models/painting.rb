class Painting < ApplicationRecord
  belongs_to :artist
  has_attached_file :image, styles: { medium: "167x170>"}
  # validates_attachment_content_type :photo, content_type: /image/
  # validates_attachment_content_type :photo, content_type: /^image\/(png|gif|jpeg|jpg)/
  validates :image, :attachment_content_type => { :content_type =>["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
