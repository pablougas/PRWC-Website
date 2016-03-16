class Blog < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "300x600>", thumb: "150x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  belongs_to :user
end
