require 'capybara'
require 'capybara/cucumber'

Before do
  Capybara.register_driver :selenium_firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
  Capybara.default_driver = :selenium_firefox
  #Capybara.app_host = 'file:///Users/hamzarazzak/Desktop/index.html'
end

