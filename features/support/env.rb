require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'test/unit/assertions'
require 'capybara/rspec'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://www.testdevlab.com'
  Capybara::Screenshot.autosave_on_failure = false
  Capybara::Screenshot.prune_strategy = :keep_all
end

Capybara.register_driver(:selenium) do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

World(Test::Unit::Assertions)
