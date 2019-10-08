Then(/^I am on the contact us page$/) do
  Capybara.visit('/contact-us')
  step 'I should see Contact Us page'
end

Then(/^I should see Contact Us page$/) do
  expect(@pages.contact_us_page.contact_info_header).to eq('Contact Information')
  expect(@pages.contact_us_page.first_name_input.element_on_page?).to eq(true)
  expect(@pages.contact_us_page.last_name_input.element_on_page?).to eq(true)
end

When(/^I enter "(.*)" in the "(.*)" input field$/) do |input_value, input_field_type|
  case input_field_type
  when 'first name'
    @pages.contact_us_page.first_name_input.send_keys(input_value)
  when 'last name'
    @pages.contact_us_page.last_name_input.send_keys(input_value)
  when 'email'
    @pages.contact_us_page.email_field_input.send_keys(input_value)
  else
    raise(input_field_type + ' input field currently not supported')
  end
end
