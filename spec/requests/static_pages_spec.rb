require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }
    it "should have the h1 'Home'" do
      page.should have_selector('h1', text: '')
    end

    it "should have the base title" do
      page.should have_selector('title',
                                text: "Hate2wait")
    end

    describe "Help page" do
      before { visit help_path }
      it "should have the h1 'Help'" do
        page.should have_selector('h1', text: 'Help')
      end

      it "should have the title 'Help'" do
        page.should have_selector('title',
              text: "Hate2wait | Help")

      end
    end

    describe "About" do
      it "should have the h1 'about'" do
        visit about_path
        page.should have_selector('h1', text: 'About Us')
      end

      it "should have the title 'About Us'" do
        visit about_path
        page.should have_selector('title',
                  text: "Hate2wait | About Us")
      end
    end

    describe "Contact page" do
      before { visit contact_path }
      it "should have the h1 'Contact'" do
        page.should have_selector('h1', text: 'Contact')
      end

      it "should have the title 'Contact'" do
        page.should have_selector('title',
                text: "Hate2wait | Contact")
      end
    end
  end
end

