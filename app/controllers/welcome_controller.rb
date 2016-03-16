class WelcomeController < ApplicationController
  def index
  	@projects = Project.joins(:user).where("user_id = users.id")
  	@events = Event.all
  	@posts = Blog.all
  end
end
