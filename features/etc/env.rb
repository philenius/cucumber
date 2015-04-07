require "rubygems"
require "selenium-webdriver"
require "rspec/expectations"
require "rspec"
require "././lib/parking.rb"

# before all
selenium_driver = Selenium::WebDriver.for :firefox
$parking = Parking.new(selenium_driver)

# after all
at_exit do
	selenium_driver.quit
end



