require 'capybara'
require 'capybara/cucumber'
require 'timecop'
require 'delorean'

# Date.today => Wed Feb 24

Before do
Delorean.time_travel_to "1 month ago" # Date.today => Sun Jan 24
end


After do
   Delorean.back_to_the_present
 end



Before do
  Capybara.register_driver :selenium_firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
  Capybara.default_driver = :selenium_firefox
  #Capybara.app_host = 'file:///Users/hamzarazzak/Desktop/index.html'
end

