class SimpleWebsiteController < ApplicationController

  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  def home
    respond_to do |format|
      format.html # home.html.erb
    end
  end
  def about
    respond_to do |format|
      format.html # home.html.erb
    end
  end
  def contact
    
    # @contact_form = ContactForm.all
    
    respond_to do |format|
      format.html # home.html.erb
    end
  end
end