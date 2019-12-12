Then(/^I am on the contact us page$/) do
  @pages.contact_us_page.visit
end

Then(/^I should see Contact Us page$/) do
  expect(@pages.contact_us_page.page_loaded?).to eq(true)
end

And(/^I fill in "(.*)" as first name$/) do |input_text|
  @pages.contact_us_page.fill_first_name(input_text)
end