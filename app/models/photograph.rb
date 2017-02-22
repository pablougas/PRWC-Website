class Photograph < ActiveRecord::Base
    belongs_to :user
    belongs_to :album
    has_attached_file :avatar, styles: { large: "600x600>", medium: "300x300>", small:"200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    validates :avatar, attachment_presence: true
    validates_with AttachmentPresenceValidator, attributes: :avatar
    validates_with AttachmentSizeValidator, attributes: :avatar, less_than: 2.megabytes
end
