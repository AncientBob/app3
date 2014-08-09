require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "App3, the best app on planet Zarflax" }

  describe "Home page" do
    it "should have the content 'App3'" do
      visit '/static_pages/home'
      expect(page).to have_content('App3')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help me!'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help me!')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
 
end
