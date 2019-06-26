class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_attached_file :photo, styles: { medium: "167x170>"}
  # validates_attachment_content_type :photo, content_type: /image/
  # validates_attachment_content_type :photo, content_type: /^image\/(png|gif|jpeg|jpg)/
  validates :photo, :attachment_content_type => { :content_type =>["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_many :paintings

  def images=(array = [])
    array["images"].each do |f|
      paintings.create image: f
    end
  end
end
