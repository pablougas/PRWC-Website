class Message
    include ActiveModel::Model
    attr_accessor :name, :email, :content
    validates :name, :email, :subject, :content, presence: true
end
