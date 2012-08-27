require 'spec_helper'

describe "Static Pages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Home pages" do
    before { visit root_path }
    let(:heading)  {'My Blog'}
    let(:page_title) { '' } 
    
    it_should_behave_like "all static pages"
    it { should_not have_selector('title', text: '| Home') }
  end

  describe "Help pages" do 
    before { visit help_path }
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "Work pages" do
    before { visit work_path }
    let(:heading) { 'Works' }
    let(:page_title) { 'Works' }

    it_should_behave_like "all static pages"
  end

  describe "About pages" do
    before { visit about_path }
    let(:heading) { 'About Us' }
    let(:page_title) { 'About' }

    it_should_behave_like "all static pages"
  end

  describe "Contact pages" do 
     before { visit contact_path }
     let(:heading) { 'Contact Us' }
     let(:page_title) { 'Contact Us' }

     it_should_behave_like "all static pages"
  end
end
