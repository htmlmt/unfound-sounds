require 'spec_helper'

describe "Posts" do
  before :each do
    Post.create(:album_cover => "http://rdio1img-a.akamaihd.net/album/1/e/6/00000000003f06e1/3/square-600.jpg", :album_review => "Puppeteer and puppet of the performance art show, St. Vincent plays the part of a lifeless, computer-bound being as she speaks to us, the last generation to make fire with a magnifying glass and the sun, before notifications encased in red swallowed our attention.", :album_title => "\"St. Vincent\" by St. Vincent", :found => false, :place_title => "somewhere in Benson", :rdio => "https://rd.io/i/QUWZfCJgVKA/", :week_name => "April 13-19", :week => "1", :url => "st-vincent-by-st-vincent", :review_link => "http://www.hearnebraska.org/content/st-vincent-sokol-auditorium-concert-review")
    Post.create(:album_cover => "http://rdio1img-a.akamaihd.net/album/1/e/6/00000000003f06e1/3/square-600.jpg", :album_review => "Puppeteer and puppet of the performance art show, St. Vincent plays the part of a lifeless, computer-bound being as she speaks to us, the last generation to make fire with a magnifying glass and the sun, before notifications encased in red swallowed our attention.", :album_title => "\"St. Vincent\" by St. Vincent", :found => false, :place_title => "somewhere in Benson", :rdio => "https://rd.io/i/QUWZfCJgVKA/", :week_name => "April 13-19", :week => "1", :url => "st-vincent-by-st-vincent", :review_link => "http://www.hearnebraska.org/content/st-vincent-sokol-auditorium-concert-review")
    Post.create(:album_cover => "http://rdio1img-a.akamaihd.net/album/1/e/6/00000000003f06e1/3/square-600.jpg", :album_review => "Puppeteer and puppet of the performance art show, St. Vincent plays the part of a lifeless, computer-bound being as she speaks to us, the last generation to make fire with a magnifying glass and the sun, before notifications encased in red swallowed our attention.", :album_title => "\"St. Vincent\" by St. Vincent", :found => false, :place_title => "somewhere in Benson", :rdio => "https://rd.io/i/QUWZfCJgVKA/", :week_name => "April 13-19", :week => "1", :url => "st-vincent-by-st-vincent", :review_link => "http://www.hearnebraska.org/content/st-vincent-sokol-auditorium-concert-review")
    Post.create(:album_cover => "http://rdio1img-a.akamaihd.net/album/1/e/6/00000000003f06e1/3/square-600.jpg", :album_review => "Puppeteer and puppet of the performance art show, St. Vincent plays the part of a lifeless, computer-bound being as she speaks to us, the last generation to make fire with a magnifying glass and the sun, before notifications encased in red swallowed our attention.", :album_title => "\"St. Vincent\" by St. Vincent", :found => false, :place_title => "somewhere in Benson", :rdio => "https://rd.io/i/QUWZfCJgVKA/", :week_name => "April 13-19", :week => "1", :url => "st-vincent-by-st-vincent", :review_link => "http://www.hearnebraska.org/content/st-vincent-sokol-auditorium-concert-review")
    Post.create(:album_cover => "http://rdio1img-a.akamaihd.net/album/1/e/6/00000000003f06e1/3/square-600.jpg", :album_review => "Puppeteer and puppet of the performance art show, St. Vincent plays the part of a lifeless, computer-bound being as she speaks to us, the last generation to make fire with a magnifying glass and the sun, before notifications encased in red swallowed our attention.", :album_title => "\"St. Vincent\" by St. Vincent", :found => false, :place_title => "somewhere in Benson", :rdio => "https://rd.io/i/QUWZfCJgVKA/", :week_name => "April 13-19", :week => "1", :url => "st-vincent-by-st-vincent", :review_link => "http://www.hearnebraska.org/content/st-vincent-sokol-auditorium-concert-review")
    Post.create(:album_cover => "http://rdio1img-a.akamaihd.net/album/1/e/6/00000000003f06e1/3/square-600.jpg", :album_review => "Puppeteer and puppet of the performance art show, St. Vincent plays the part of a lifeless, computer-bound being as she speaks to us, the last generation to make fire with a magnifying glass and the sun, before notifications encased in red swallowed our attention.", :album_title => "\"St. Vincent\" by St. Vincent", :found => false, :place_title => "somewhere in Benson", :rdio => "https://rd.io/i/QUWZfCJgVKA/", :week_name => "April 13-19", :week => "1", :url => "st-vincent-by-st-vincent", :review_link => "http://www.hearnebraska.org/content/st-vincent-sokol-auditorium-concert-review")
  end
  
  it "shows donate page" do
    visit "/donate"
    expect(page).to have_content('You must be real generous')
  end
  
  it "shows album_details when album is clicked", :js => true do
    visit "/"
    first(".album").click
    expect(page).to have_css('.album_details')
  end
  
  it "shows hint when hint thumbnail is clicked", :js => true do
    
  end
  
  it "appends Rdio when album is clicked", :js => true do
    
  end
  
  it "removes album_details when week is clicked", :js => true do
    
  end
  
  it "adds one week on previous week button unless it's the current week", :js => true do
    
  end
  
  it "subtracts one week on next week button unless it's the first week", :js => true do
    
  end
    
end
