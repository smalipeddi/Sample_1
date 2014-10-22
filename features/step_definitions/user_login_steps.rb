require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^the user is on the visitor page$/) do
  visit "http://0.0.0.0:3000"
end

Given(/^the user is a registered user$/) do
  @user = User.create!({
             :email => "minikermit@hotmail.com",
             :password => "12345678",
             })
end

When(/^the user enters email address$/) do
  fill_in "Email", :with => "minikermit@hotmail.com"
end

When(/^the user enters password$/) do
 fill_in "Password", :with => "12345678"
end

When(/^clicks on the "(.*?)" button$/) do |arg1|
  click_button "Sign in"
end 

Then(/^the user should see "(.*?)"$/) do |text|
   page.should have_content(text)
end


