Given(/^User lands on homepage$/) do
  visit('file:///Users/hamzarazzak/Desktop/index.html') 
  sleep 5
  page.has_xpath?("html/body/form/center/input[2]")
end

When(/^User fills in "(.*?)" and "(.*?)"$/) do |username, password|
  find(:xpath, "html/body/form/center/input[1]").set username
  find(:xpath, "html/body/form/center/input[2]").set password
end

When(/^User presses login$/) do
  sleep 5
  click_button('Login')
  page.driver.browser.switch_to.alert.accept
end

Then(/^User is directed to success page$/) do
    page.has_content?('You have successfully entered a correct username and password')  
end
