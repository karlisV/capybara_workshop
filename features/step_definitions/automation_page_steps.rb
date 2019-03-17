Then(/^I should see Test automation page$/) do
  assert_true(@pages.test_automation_page.contains_section?('TESTING SERVICES'))
end