require 'watir-webdriver'

browser = Watir::Browser.new :firefox
Before do
  @browser = browser
end

After do
  @browser.close
end
