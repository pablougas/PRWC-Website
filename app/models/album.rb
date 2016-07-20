class Album < ActiveRecord::Base
    has_many :photographs, dependent: :destroy
    accepts_nested_attributes_for :photographs, reject_if: :all_blank, allow_destroy: true

    has_attached_file :avatar, styles: { medium: "600x600>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    validates :avatar, attachment_presence: true
    validates_with AttachmentPresenceValidator, attributes: :avatar
    validates_with AttachmentSizeValidator, attributes: :avatar, less_than: 1.megabytes
end
