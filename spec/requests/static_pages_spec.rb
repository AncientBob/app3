require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "App3, the best app on planet Zarflax" }

  describe "Home page" do
    it "should have the content 'App3'" do
      visit '/'
      expect(page).to have_content('App3')
    end
    it "should have the right title" do
      visit '/'
      expect(page).to have_title("#{base_title}")
#      expect(page).to have_title("App3, the best app on planet Zarflax")
    end
  end

  describe "Help page" do
    it "should have the content 'Help me!'" do
      visit '/help'
      expect(page).to have_content('Help me!')
    end
    it "should have the right title" do
      visit '/help'
      expect(page).to have_title("#{base_title} | Help")
#      expect(page).to have_title("App3, the best app on planet Zarflax | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit '/about'
      expect(page).to have_title("#{base_title} | About")
#      expect(page).to have_title("App3, the best app on planet Zarflax | About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us'" do
      visit '/contact'
      expect(page).to have_content('Contact Us')
    end
    it "should have the right title" do
      visit '/contact'
      expect(page).to have_title("#{base_title} | Contact")
#      expect(page).to have_title("App3, the best app on planet Zarflax | Contact")
    end
  end
 
end
