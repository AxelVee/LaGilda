require 'spec helper'

describe HomeController do
  render_views
  
  describe "GET 'about' " do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
      response should have_selector("title", :content => "#{base_title} | About")
    end
  end
end
