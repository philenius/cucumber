Feature:	This is the feature for the use case 'calculate parking price'.

As		a user
I want	to select a parking place
so that	I can see the parking costs for it

Scenario Outline: 	The user selects valet parking

	Given 	The user is on the homepage

	When 	The user selects valet parking
	And 	The user selects <hours> hours for duration
	And 	The user selects no special services
	And 	The user clicks on the calculate button
	
	Then 	The user will see the parking price of <price> euro

	Examples:
	| hours	| price	|
	| 0.5	| 12.00	|
	| 3		| 12.00	|
	| 5		| 12.00	|
	| 12	| 18.00	|
	| 72	| 54.00	|
	
Scenario: 	The user doesn't type in the amount of hours

	Given 	The user is on the homepage

	When 	The user types in no hours for duration
	
	Then 	The user will see an alert

