module HomeHelper

	def instagram
		@instagram = Instagram.user_recent_media("197447146", {:count => 10})
	end

end
