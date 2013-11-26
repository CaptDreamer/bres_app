require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Bre's Website'" do
      visit '/static_pages/home'
      expect(page).to have_content("Bre's Website")
    end
  end

  describe "About page" do

  	it "should have the content 'About the author'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About the author')
  	end
  end
end
