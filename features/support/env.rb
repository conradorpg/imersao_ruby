# frozen_string_literal: true

require 'capybara'
require 'cucumber'
require 'pry'
require 'report_builder'
require 'rubocop'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :remote, url: 'http://localhost:4444/hub', desired_capabilities: :chrome)
end

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page_driver.browser.manage.window.maximize
  config.default_max_wait_time = 10
  config.app_host = 'http://www.automationpractice.com/index.php'
end
