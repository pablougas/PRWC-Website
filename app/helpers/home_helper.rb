module HomeHelper

	def instagram
		@instagram = Instagram.user_recent_media("3560974685", {:count => 10})
	end

end
