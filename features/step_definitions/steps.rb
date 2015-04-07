Given(/^The user is on the homepage$/) do
	$parking.navigate()
end

When(/^The user selects valet parking$/) do
	$parking.selectParking("Valet Parking")
end

When(/^The user selects (.+) hours for duration$/) do |hours|
	$parking.typeIn('#time', hours)
end

When(/^The user selects no special services$/) do
  
end

When(/^The user clicks on the calculate button$/) do
  $parking.click("#calculate")
end

Then(/^The user will see the parking price of (.+) euro$/) do |price|
  $parking.assertPrice(price)
end

When(/^The user types in no hours for duration$/) do
  $parking.click('#calculate')
end

Then(/^The user will see an alert$/) do
  $parking.assertAlert("You forgot to choose an amount of time.")
end