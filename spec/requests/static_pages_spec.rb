	require 'spec_helper'
	describe "Static pages" do

		let(:base_title) {"Ruby on Rails Tutorial Sample App"}

		describe "Home page" do
			before {visit root_path}

			it "should have the h1 'Sample App'" do
				page.should have_selector('h1', :text =>'Sample App')
			end

			it "should have the title 'Home'" do
				page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
			end

			it "should not have a custom page title" do
				page.should_not have_selector('title', :text => '| Home')
			end

		end


		describe "Help Page" do
			it "should have the h1 'Help'" do
				visit help_path
				page.should have_selector('h1', :text => 'Help')
			end

			it "should have the title 'Help'" do
				visit help_path
				page.should have_selector('title',
					:text => "Ruby on Rails Tutorial Sample App | Help")
			end
		end

		describe "About page" do
			it "should have the h1 'About Us'" do
				visit about_path
				page.should have_selector('h1', :text => 'About Us')
			end
			it "should have the title 'About Us'" do
				visit about_path
				page.should have_selector('title',
					:text => "Ruby on Rails Tutorial Sample App | About Us")
			end
		end

		describe "Contact page" do
			it "should have h1 as 'Contact Us'" do
				visit contact_path
				page.should have_selector('h1',:text => 'Contact Us')
			end

			it "should have the ttile 'Contact'" do
				visit contact_path
				page.should have_selector('title',
					:text => "#{base_title} | Contact")
			end
		end




	end

