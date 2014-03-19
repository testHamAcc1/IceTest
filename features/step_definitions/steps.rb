Given(/^User lands on homepage$/) do
end

When(/^User fills in "(.*?)" and "(.*?)"$/) do |username, password|
  fill_in'Username:',with: username
  fill_in'password', with: password
end

	

When(/^User presses login$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^User is directed to success page$/) do
  pending # express the regexp above with the code you wish you had
end
