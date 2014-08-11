require 'spec_helper'

describe "Simple Website" do

  describe "Home page" do

    it "should have the content 'sample application'" do
      visit '/simple_website/home'
      expect(page).to have_content('sample application')
    end
  end
end
