require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Tweeter App" }

  describe "Home page" do

    it "should have the content 'Tweeter App'" do
      visit root_path
      expect(page).to have_content('Tweeter App')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Tweeter App")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Help | #{base_title}")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit about_path
      expect(page).to have_title("About | #{base_title}")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Contact | #{base_title}")
    end
  end
end
