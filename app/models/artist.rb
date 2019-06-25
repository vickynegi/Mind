class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_attached_file :photo, styles: { medium: "167x170>"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
