require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'capybara/rspec'

APP_HOST = 'https://www.testdevlab.com'.freeze

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = APP_HOST
  Capybara::Screenshot.autosave_on_failure = false
  Capybara::Screenshot.prune_strategy = :keep_last_run
end

Capybara.register_driver(:selenium) do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

World(Capybara::RSpecMatchers)
