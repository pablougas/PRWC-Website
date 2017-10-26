class WelcomeController < ApplicationController
  layout 'dashboard'
  before_action :authenticate_user!

  def index
  	@projects = Project.joins(:user).where("user_id = users.id")
  	@events = Event.where("date >= ?", Date.today).order("date ASC").limit(3)
  	@posts = Blog.where("created_at <= ?", Date.today).order("created_at DESC").limit(3)

  end
end
