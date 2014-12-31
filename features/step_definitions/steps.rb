Given(/^User lands on homepage$/) do
  visit('C:\Users\IEUser\Documents\git_workspace\html\index.html')
  page.has_xpath?("html/body/form/center/input[2]")
end

When(/^User fills in <username> and <password>$/) do
  find(:xpath, "html/body/form/center/input[1]").set username
  find(:xpath, "html/body/form/center/input[2]").set password
end

When(/^User fills in "(.*?)" and "(.*?)"$/) do |username, password|
  find(:xpath, "html/body/form/center/input[1]").set username
  find(:xpath, "html/body/form/center/input[2]").set password
end


When(/^User fills in <"(.*?)"> and <"(.*?)">$/) do |username, password|
  find(:xpath, "html/body/form/center/input[1]").set username
  find(:xpath, "html/body/form/center/input[2]").set password
end


When(/^User presses login$/) do
  click_button('Login')
  page.driver.browser.switch_to.alert.accept
end

Then(/^User is directed to success page$/) do
    page.has_content?('You have successfully entered a correct username and password')  
end

When(/^the time is "(.*?)"$/) do |time|
  @abc = Timecop.freeze Time.parse(time)
  puts @abc
end

# Given 'the time is $time' do |time|
#   Timecop.freeze Time.parse(time)
# end

Given /^I time travel to (.+)$/ do |period|
  Delorean.time_travel_to(period)
  time = Time.new
  puts time.inspect
end
