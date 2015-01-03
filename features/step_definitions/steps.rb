Given(/^User lands on homepage$/) do
  @browser.goto('file://C:\Users\IEUser\Documents\git_workspace\html\index.html')
  # page.has_xpath?("html/body/form/center/input[2]")
end

When(/^User fills in <username> and <password>$/) do
  @browser.text_field(:name => 'username').set username
  @browser.text_field(:name => 'password').set password
end

When(/^User fills in "(.*?)" and "(.*?)"$/) do |username, password|
  @browser.text_field(:name => 'username').set username
  @browser.text_field(:name => 'password').set password
end


When(/^User presses login$/) do
  @browser.button(:value => 'Login')
end

When(/^the time is "(.*?)"$/) do |time|
  @abc = Timecop.freeze Time.parse(time)
  puts @abc
end


Given /^I time travel to (.+)$/ do |period|
  Delorean.time_travel_to(period)
  time = Time.new
  puts time.inspect
end
