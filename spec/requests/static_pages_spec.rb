require 'spec_helper'

describe "Static Pages" do
  subject { page }

  describe "Home pages" do
    before { visit root_path }
    
    it { should have_selector('h1', text: 'My Blog') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end

  describe "Help pages" do 
    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help'))}
  end

  describe "Work pages" do
    before { visit work_path }

    it { should have_selector('h1',text: 'Works') }
    it { should have_selector('title', text: full_title('Works')) }
  end

  describe "About pages" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Contact pages" do 
     before { visit contact_path }

     it { should have_selector('h1', text: 'Contact Us') }
     it { should have_selector('title', text: full_title('Contact Us')) }
  end
end
