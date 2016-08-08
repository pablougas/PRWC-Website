class HomeController < ApplicationController
    include HomeHelper
    before_action :set_blog, only: :post
    before_action :set_album, only: :show_album
    before_filter -> { gon.clear }

    def index
        @contact_form = ContactForm.new
        @blogs = Blog.all.order("created_at DESC").limit(3)
        @event = Event.where('date >= ?', Date.today).order('date ASC').first
        @meeting = Minute.where('date >= ?', Date.today).order('date ASC').first
        @newsletter_list = NewsletterList.new
    end

    def show_album
        gon.photos = @album.photographs
    end

    def about
    end

    def events
        @events = Event.all.order("date ASC")
    end

    def gallery
        @album = Album.all
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

    def set_album
        @album = Album.find(params[:id])
    end
end
