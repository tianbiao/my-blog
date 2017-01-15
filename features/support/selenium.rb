if ENV['FORCE_SELENIUM']
  require 'capybara'
  require 'selenium-webdriver'

  Capybara.default_driver = :selenium

  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
end
