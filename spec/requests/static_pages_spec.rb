require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end
end

describe "About page" do
	it "should have the content 'About Us'" do
		 visit '/static_pages/about'
		 expect(page).to have_title('Ruby on Rails Tutorial Sample App | About')
		end
	end

end
