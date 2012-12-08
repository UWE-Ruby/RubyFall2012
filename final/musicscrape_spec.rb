require "#{File.dirname(__FILE__)}/musicscrape"

describe Scrape do
  before do
    @scrape = Scrape.new(:strangermusic)
    @scrape.url = "http://www.thestranger.com/seattle/Music"
  end
  it "Should load the stranger music page" do
    @scrape.load_page.should not eq "" #I mean the string shouldn't be empty
  end
  it "Should Identify the beginning of the recommended shows"do
  end
  it "Should Idenfify the end of the recommended shows" do
  end
  it "Should throw away the rest of the text" do
  end
end

describe Parse do
  it "Should pick out all the event names" do 
  end
  it "Should pick out all the event locations" do
  end
  it "Should pick out all the dates" do
  end
  it "Should pick out all the prices" do
  end
end

describe PushToGoogle do
  it "Should send each event to your google calendar" do
  end
end


describe GetUserInfo do
  it "Should get your username" do
  end
  it "Should get your password" do
  end
end