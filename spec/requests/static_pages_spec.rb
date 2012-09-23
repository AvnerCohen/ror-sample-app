require 'spec_helper'

describe "Static pages" do
	let!(:prefix_title) { "Ruby on Rails Tutorial Sample App | "}

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit home_path
			page.should_not have_selector('title',
			:text => prefix_title + "Sample App")
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit help_path
			page.should have_selector('title',
			:text => prefix_title + "Help")
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit about_path
			page.should have_selector('title',
			:text => prefix_title + "About Us")
		end
	end

	describe "Contact" do

		it "should have the content 'Contact'" do
			visit contact_path
			page.should have_selector('title',
			:text => prefix_title + "Contact")
		end
	end
end