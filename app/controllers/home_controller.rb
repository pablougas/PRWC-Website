class HomeController < ApplicationController
  before_action :set_blog, only: :post   
  include HomeHelper

  def index
    @contact = Contact.new(params[:contact_form])
    @blogs = Blog.all.order("created_at DESC").limit(3)
  end

  def about
  end

  def events
    @events = Event.all.order("date ASC")
  end

  def gallery
    @images = Dir.glob("app/assets/images/bg/*")
  end

  def post
  end

  def blog
    @blogs = Blog.all.order("created_at DESC")
    instagram
  end

  def contact
  end

  private
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
