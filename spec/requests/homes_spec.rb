require 'spec_helper'

describe "Home" do
  describe "About Page" do

    it "should have the content 'About Us'" do
      visit '/home/about'
      page.should have_content('About Us')
    end
    
     it "should have the title 'About Us'" do
      visit '/home/about'
      page.should have_selector('title',
                        :text => "Yet Another Academic Site  | About Us")
    end
    
  end

  describe "Help page" do

    it "should have the content 'How to'" do
      visit '/home/help'
      page.should have_content('How to')
    end
    it "should have the title 'Help'" do
      visit '/home/help'
      page.should have_selector('title',
                        :text => "Yet Another Academic Site  | Help")
    end
    
  end
  
  describe "Feature page" do

    it "should have the content 'Awesome'" do
      visit '/home/features'
      page.should have_content('Awesome')
    end
    
    it "should have the title 'Features'" do
      visit '/home/features'
      page.should have_selector('title',
                        :text => "Yet Another Academic Site  | Features")
    end
    
  end
  
end
