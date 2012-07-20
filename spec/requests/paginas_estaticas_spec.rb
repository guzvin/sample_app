require 'spec_helper'

describe "Paginas estaticas" do
  describe "Home page" do
    it "deve ter o h1 'Sample App'" do
      visit '/paginas_estaticas/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "deve ter o title 'Home'" do
      visit '/paginas_estaticas/home'
      page.should have_selector('title', 
      							:text => '| Home')
    end
  end

  describe "Help page" do
    it "deve ter o h1 'Help'" do
      visit '/paginas_estaticas/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "deve ter o title 'Help'" do
      visit '/paginas_estaticas/help'
      page.should have_selector('title', 
                    :text => '| Help')
    end
  end

  describe "About page" do
    it "deve ter o h1 'About Us'" do
      visit '/paginas_estaticas/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "deve ter o title 'About Us'" do
      visit '/paginas_estaticas/about'
      page.should have_selector('title', 
                    :text => '| About Us')
    end
  end
end
