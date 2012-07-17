require 'spec_helper'

describe "SimpleWebsite" do  
  context "should have three pages, home, about, contact" do
    it "should have a home page" do
        get simple_website_home_path
        response.status.should be(200)
    end
    it "should have an about page" do
      get simple_website_about_path
      response.status.should be(200)
    end
    it "should have a contact page" do
      get simple_website_contact_path
      response.status.should be(200)
    end
  end
  context "contact page form fields" do
    it "should contain a form tag" do
      get 'simple_website/contact'
      response.should have_selector("form")
    end       
    xit "should contain a name field" do
      get 'simple_website/contact'
      response.should have_selector("input", :name => "firstname")
    end
    xit "should contain an email field" do
      get 'simple_website/contact'
      response.should have_selector("input", :name => "email")
    end
    xit "should contain and a comment field" do
      get 'simple_website/contact'
      response.should have_selector("textarea", :name => "comment")
    end
  end
end
