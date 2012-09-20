require 'spec_helper'

describe "Static pages" do
	let!(:prefix_title) { "Ruby on Rails Tutorial Sample App | "}

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('title',
			:text => prefix_title + "Sample App")
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title',
			:text => prefix_title + "Help")
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('title',
			:text => prefix_title + "About Us")
		end
	end

	describe "Contact" do

		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('title',
			:text => prefix_title + "Contact")
		end
	end
end