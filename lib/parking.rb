class Parking

	def initialize(driver)
		@driver = driver
	end
	
	def navigate()
		@driver.navigate.to "file:///C:/Users/Philipp/Desktop/ePortfolio/Website/Test-Site/parking.html"
	end
	
	def typeIn(item, value)
		@driver.find_element(:css, item).clear
		@driver.find_element(:css, item).send_keys value
	end
	
	def click(item)
		@driver.find_element(:css, item).click
	end
	
	def checkbox(item, check)
		checkbox = @driver.find_element(:css, item)
		if check
			if checkbox.attribute("checked") == nil
				checkbox.click
			end
		else
			if checkbox.attribute("checked") == "true"
				checkbox.click
			end
		end
	end
	
	def selectParking(text)
		select = Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "parkingType"))
		select.select_by(:text, text)
	end
	
	def assertPrice(price)
		@driver.find_element(:id, "money").text.should == price
	end
	
	def assertAlert(text)
		alert = @driver.switch_to.alert()
		alert.text.should == text
		alert.accept
	end

end