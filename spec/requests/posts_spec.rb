require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do
    
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get posts_index_path
      response.status.should be(200)
    end
    
    it "goes home" do
      visit root_path
      expect(page).to have_content("Week")
    end
    
    it "shows album_details when album is clicked", :js => true do
      click_link
    end
    
    it "shows hint when hint thumbnail is clicked", :js => true do
      click_link
    end
    
    it "appends Rdio when album is clicked", :js => true do
      click_link
    end
    
    it "removes album_details when week is clicked", :js => true do
      click_link
    end
    
    it "adds one week on previous week button unless it's the current week", :js => true do
      click_link
    end
    
    it "subtracts one week on next week button unless it's the first week", :js => true do
      click_link
    end
    
  end
end
