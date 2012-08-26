require 'spec_helper'

describe "Static Pages" do
  describe "Home pages" do
    it "should have the content 'My Blog" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('My Blog')
    end
  end

  describe "Help pages" do 
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "Work pages" do
    it "should have the content 'works'" do
      visit '/static_pages/work'
      page.should have_content('works')
    end
  end
end
