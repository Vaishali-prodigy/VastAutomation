#Author: vaishali.katta@prodigylabs.net
#Keywords Summary : VAST Automation 
#Feature: VAST Login
#Scenario: #NA
Feature: Login Features

@Login @Smoke @Regression @TC001
Scenario Outline: Verify Login with valid credentials
	Given User launches the Vast application "<url>"
		And user enters text "<Username>" in textbox "Username"
		And user enters text "<Password>" in textbox "Password"
		And user selects the environment "<Environment>"
		And user clicks on button "Login"
		Then user is on Vast Homepage
		
		Examples:
		| url | Username | Password | Environment |
		| http://vnbaxmqaapp.vnb.internal:8080/bpc/ | adeep | test | VAST - Jack Henry QAT |

@Login @Regression @TC002	
Scenario Outline: Verify Login with invalid credentials
	Given User launches the Vast application "<url>"
		And user enters text "<Username>" in textbox "Username"
		And user enters text "<Password>" in textbox "Password"
		And user selects the environment "<Environment>"
		And user clicks on button "Login"
		Then User gets error "<Message>" on login page 
		
		Examples:
		| url | Username | Password | Environment | Message |
		| http://vnbaxmqaapp.vnb.internal:8080/bpc/ | adeep | invalid | VAST - Jack Henry QAT | Incorrect username or password |
		| http://vnbaxmqaapp.vnb.internal:8080/bpc/ | invalid | invalid | VAST - Jack Henry QAT | User not found |
