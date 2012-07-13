class ContactForm < ActiveRecord::Base
  attr_accessible :comments, :email, :name
end
