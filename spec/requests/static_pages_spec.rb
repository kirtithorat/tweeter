require 'spec_helper'

describe "StaticPages" do

    let(:base_title) { "Tweeter App" }

  describe "Home page" do

    it "should have content 'Tweeter App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Tweeter App')
    end

     it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Tweeter App")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Help | #{base_title}")
    end
  end

   describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("About | #{base_title}")
    end
  end

   describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact | #{base_title}")
    end
  end
end
