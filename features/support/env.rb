require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require_relative 'feature_helper'
require 'securerandom'
require 'require_all'
require 'rest-client'
require 'cucumber'

  Before do
    @api_url = 'http://159.65.86.98:8182/'
  end

#setting Capybara driver
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1800,1000]))
end

After do
  #setting Capybara driver to reset sessions after all tests are done
  Capybara.reset_sessions!
end
