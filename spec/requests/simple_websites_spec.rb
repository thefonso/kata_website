require 'spec_helper'

describe "Simple Website" do

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
      visit simple_website_contact_path
      expect(page).to have_selector('form')
    end       
    xit "should contain a name field" do
      visit simple_website_contact_path
      expect(page).to have_selector("input", :name => "name")
    end
    xit "should contain an email field" do
      visit simple_website_contact_path
      response.should have_selector("input", :name => "email")
    end
    xit "should contain and a comment field" do
      visit simple_website_contact_path
      response.should have_selector("textarea", :name => "comments")
    end
    xit "post to content database"
    xit "emails site admin"
  end

end
