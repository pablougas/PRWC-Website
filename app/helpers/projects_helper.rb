module ProjectsHelper

	def range?
		date = @project.deadline
		warning = (@project.deadline - 10.days)
		if Date.today.between?(warning, date)
			return true
		else 
			return false
		end
	end
end
