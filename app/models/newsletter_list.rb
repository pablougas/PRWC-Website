class NewsletterList < ActiveRecord::Base
    include HTTParty
    attr_accessor :recap
    before_validation :verify_authenticity
    validates :name, presence: true
    validates :email, presence: true

    private

    def verify_authenticity
        uri = URI('https://www.google.com/recaptcha/api/siteverify')
        res = HTTParty.post(uri, body: {
            secret: Rails.application.secrets.captcha,
            response: self.recap
            })
        puts res.inspect
        body = JSON.parse res.body
        puts body
        raise "Invalid account info" unless body['success'] == true
    end
end
