require 'spec_helper'

describe "pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/pages/home'
      page.should have_selector('h1', :text => 'App')
    end

    it "should have the title 'Home'" do
      visit '/pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails App | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails App | About Us")
    end
  end
end

