#Author: akash.deep@prodigylabs.net
#Keywords Summary : VAST Automation 
#Feature: VAST Smoke
#Scenario: #NA
Feature: Customer Search 
Background:
    Given User launches the Vast application "http://vnbaxmqaapp.vnb.internal:8080/bpc/"
    And user enters text "adeep" in textbox "Username"
    And user enters text "test" in textbox "Password"
    And user selects the environment "VAST - Jack Henry QAT"
    And user clicks on button "Login"
    And user is on Vast Homepage    
    
 @Smoke @Regression @TC003
Scenario Outline: Verify that VAST User is able to search existing customer when searched by Customer number
	Given user is on Vast Homepage
		And user clicks on button "Customer"
		And user clicks on button "Search"
		And user enters text "<TIN (SSN/EIN)>" in textbox "TIN_SSN_EIN"
		And user clicks on button "Search"
		And user waits for page to load
		Then user record with customer number "<TIN (SSN/EIN)>" is retrieved 
 
    Examples: 
	| TIN (SSN/EIN) |
	| 411111111 |
	
@Regression @TC003_1
Scenario Outline: Verify that VAST User gets message when searched customer is not available
	Given user is on Vast Homepage
		And user clicks on button "Customer"
		And user clicks on button "Search"
		And user enters text "<TIN (SSN/EIN)>" in textbox "TIN_SSN_EIN"
		And user clicks on button "Search"
		And user waits for page to load
		Then user gets message as "No customers available!" on top of the page
 
    Examples: 
	| TIN (SSN/EIN) |
	| 648747849 |
	
 @Smoke @Regression	 @TC0034
Scenario Outline: Verify that VAST User is able to search the customer when searched by Customer Basic Data(Name, DOB, address)
	Given user is on Vast Homepage
		And user clicks on button "Customer"
		And user clicks on button "Search"
		And user enters text "<Full name>" in textbox "Full_name"
		And user clicks on button "Search"
		Then user record with full name "<Full name>" is retrieved 

    Examples: 
	|	Full name	|
	|	Vast Tester	|

	