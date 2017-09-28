Then(/^There's a text titled "(.*?)" with "(.*?)" subtitle$/) do |title, subtitle|
  #@post = FactoryGirl.create(:post, title: title, content: content)
  expect(page).to have_content(title)
  expect(page).to have_content(subtitle)
end

When(/^I am on the Welcome page/) do
  visit "/"
end

#And(/^I should see the "(.*?)" and "(.*?)" button/) do |loginbutton, signupbutton|
  #@post = Post.find_by_title(title)
  #page.find_button(loginbutton)
  #page.find_button(signupbutton)
#end