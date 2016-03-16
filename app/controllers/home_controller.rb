class HomeController < ApplicationController
  include HomeHelper

  def index
    image_urls
    @contact = Contact.new(params[:contact_form])
  end

  def about
  end

  def events
    @events = Event.all.order("date ASC")
  end

  def blog
    instagram
  end

  def contact
  end
end
