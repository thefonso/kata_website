class ContactFormController < ApplicationController
  def new
    @contact_form = Contactform.new
  end
end
