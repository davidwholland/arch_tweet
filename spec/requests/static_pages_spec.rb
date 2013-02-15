require 'spec_helper'

describe "StaticPages" do
  
  # Home page
  describe "Home page" do

  	it "should have the h1 'Arch Tweet'" do
  		visit '/static_pages/home'
  		page.should	have_selector('h1', :text => 'Arch Tweet')
  	end

  	it "should have the title 'Home'" do
  		visit '/static_pages/home'
  		page.should have_selector('title',
  				:text => "Arch Tweet | Home")
  	end

  end

  # Help page
  describe "Help page" do

  	it "should have the h1 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end

  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('title', 
  				:text => "Arch Tweet | Help")
  	end

  end

  # About page
  describe "About page" do

  	it "should have the h1 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About Us')
  	end

	
	it "should have the title 'About Us'" do
		visit '/static_pages/about'
		page.should have_selector('title',
				:text => "Arch Tweet | About Us")
	end

  end

end
