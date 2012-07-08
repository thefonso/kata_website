require 'spec_helper'

describe "SimpleWebsite" do  
  it "should have three pages, home, about, contact" do
    describe "Home page" do
      it "should exist" do
        get simple_website_home_path
        response.status.should be(200)
      end
    end
    describe "about page" do
      it "should exist" do
        get simple_website_about_path
        response.status.should be(200)
      end
    end
    describe "contact page" do
      it "should exist" do
        get simple_website_contact_path
        response.status.should be(200)
      end
      xit "should contain a form" do
        get 'simple_website/contact'
        response.should have_selector("form")
      end
    end
  end
end
