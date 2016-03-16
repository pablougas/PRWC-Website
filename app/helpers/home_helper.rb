module HomeHelper

	def image_urls
		@image_urls = Dir.glob("#{Rails.root}/app/assets/images/carousel/*.jpg")
	end

	def instagram
		@instagram = Instagram.user_recent_media("197447146", {:count => 30})
	end

end
