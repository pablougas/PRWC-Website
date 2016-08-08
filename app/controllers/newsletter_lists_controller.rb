class NewsletterListsController < ApplicationController
  layout 'dashboard'
  before_action :set_newsletter_list, only: [:show, :edit, :update, :destroy]

  # GET /newsletter_lists
  # GET /newsletter_lists.json
  def index
    @newsletter_lists = NewsletterList.all
  end

  # GET /newsletter_lists/1
  # GET /newsletter_lists/1.json
  def show
  end

  # GET /newsletter_lists/new
  def new
    @newsletter_list = NewsletterList.new
  end

  # GET /newsletter_lists/1/edit
  def edit
  end

  # POST /newsletter_lists
  # POST /newsletter_lists.json
  def create
    @newsletter_list = NewsletterList.new(newsletter_list_params)

    respond_to do |format|
      if @newsletter_list.save
        format.html { redirect_to newsletter_lists_path, notice: 'Newsletter Subscriber was successfully created.' }
        format.json { render :show, status: :created, location: @newsletter_list }
      else
        format.html { render :new }
        format.json { render json: @newsletter_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsletter_lists/1
  # PATCH/PUT /newsletter_lists/1.json
  def update
    respond_to do |format|
      if @newsletter_list.update(newsletter_list_params)
        format.html { redirect_to newsletter_lists_path, notice: 'Newsletter Subscriber was successfully updated.' }
        format.json { render :show, status: :ok, location: @newsletter_list }
      else
        format.html { render :edit }
        format.json { render json: @newsletter_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletter_lists/1
  # DELETE /newsletter_lists/1.json
  def destroy
    @newsletter_list.destroy
    respond_to do |format|
      format.html { redirect_to newsletter_lists_url, notice: 'Newsletter list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter_list
      @newsletter_list = NewsletterList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletter_list_params
      params.require(:newsletter_list).permit(:name, :email, :added)
    end
end
