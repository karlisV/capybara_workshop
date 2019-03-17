Given(/^I am on the landing page$/) do
  Capybara.visit('/')
  assert_true(@pages.landing_page.contains_section?('TESTIMONIALS'),
              'Expected section not found')
end
