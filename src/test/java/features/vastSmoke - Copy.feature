#Author: akash.deep@prodigylabs.net
#Keywords Summary : VAST Automation 
#Feature: VAST Smoke
#Scenario: #NA
Feature: VAST Smoke 
 @Smoke @Regression @TC003
Scenario Outline: Verify that VAST User is able to search the customer when searched by Customer number
	Given User launches the Vast application "<url>" in "<Browser>"
		And user enters text "<Username>" in textbox "Username"
		And user enters text "<Password>" in textbox "Password"
		And user selects the environment "<Environment>"
		And user clicks on button "Login"
		Then user is on Vast Homepage
		And user clicks on button "Customer"
		And user clicks on button "Search"
		And user enters text "<TIN (SSN/EIN)>" in textbox "TIN_(SIN/EIN)"
		And user enters clicks on button "Search"
		And user waits for "2" seconds    
 
    Examples: 
	| url 										| Browser |	Username | Password	| Environment | TIN (SSN/EIN) |
	| http://vnbaxmqaapp.vnb.internal:8080/bpc/ | firefox |	adeep |	test | VAST - Jack Henry QAT | 4111111555 |
	
	
 @Smoke @Regression	 @TC0034
Scenario Outline: Verify that VAST User is able to search the customer when searched by Customer Basic Data(Name, DOB, address)
Given user launches the Vast application in "<Browser>" 
And user enters text "<Username>" in textbox "Username"
And user enters text "<Password>" in textbox "Password"
And user clicks on button "LOGIN"
And user is on Vast Homepage
And user clicks on button "Customer"
And user clicks on button "Search"
And user enters text "<Full name>" in textbox "Full_name"
And user enters clicks on button "Search"
And user waits for "2" seconds


    
 
    Examples: 
	|	Browser		|	Username	|	Password	|	Full name		|
	|	Chrome		|	adeep			|	test			|	Vast Tester	|
	
 @Smoke @Regression	 @TC003
Scenario Outline: Validate the user is able to create new record for person in VAST system when no customer is retreived from the system
Given user launches the Vast application in "<Browser>" 
And user enters text "<Username>" in textbox "Username"
And user enters text "<Password>" in textbox "Password"
And user clicks on button "LOGIN"
And user is on Vast Homepage
And user clicks on button "Customer"
And user clicks on button "Search"
And user enters text "<TIN (SSN/EIN)>" in textbox "TIN_(SIN/EIN)"
And user enters clicks on button "Search"
And user waits for "2" seconds
And user clicks on button "Create Person"
And user selects "<Title>" from dropdown "Title"
And user enters text "<First name>" in textbox "First_name"
And user enters text "<Last name>" in textbox "Last_name"
And user selects "<Gender>" from dropdown "Gender"
And user enters text "<Birth Date>" in textbox "Birth_Date"
And user enters text "<Street address>" in textbox "Street_address"
And user enters text "<City>" in textbox "City"
And user selects "<State>" from dropdown "State"
And user enters text "<Zip code>" in textbox "Zip_code"
And user clicks on button "add" to add phone number
And user selects "<Phone type>" from dropdown "Phone_type"
And user enters text "<Phone number>" in textbox "Phone_number"
And user clicks on button "Save"
And user clicks on button "add" to add email address
And user enters text "<Email address>" in textbox "Email_address"
And user clicks on button "Save"
And user selects "<ID type>" from dropdown "ID_type"
And user enters text "<Number>" in textbox "Number"
And user enters text "<Issuing authority>" in textbox "Issuing_authority"
And user selects "<ID state>" from dropdown "State"
And user enters text "<Issuance date>" in textbox "Issuing_date"
And user enters text "<Expiration date>" in textbox "Expiration_date"
And user enters text "<Employer>" in textbox "Employer"
And user enters text "<Job title>" in textbox "Job_title"
And user enters text "<Salary>" in textbox "Salary"
And user selects "<Officer code>" from dropdown "Officer_code"
And user selects "<Branch>" from dropdown "Branch"
And user clicks on button "Next"
And user reaches on ID Verification screen
And user clicks on button "Next"
And user clicks on button "Next"
And user clicks on button "Confirm"
And user reaches on confirmation screen
And user clicks on button "Click"

    Examples: 
	|	Browser		|	Username	|	Password	|	TIN (SSN/EIN)	|	Title	|	First name	|	Last name	|	Gender	|	Birth Date	|	Street address	|	City	|	State			|	Zip code	|	Phone type	|	Phone number	|	Email address	|	ID type							|	Number	|	Issuing authority	|	ID state	|	Issuance date	|	Expiration date	|	Employer	|	Job title	| Salary	|	Officer code	|	Branch				|
	|	Chrome		|	adeep			|	test			|	4111111555		|	Mr.		|	Andrew			|	Lopez			|	Male		|	09/12/1980	|	1234 Main St		|	Tulsa	|	Oklahoma	|	12345			|	Cell				|	9876543210		|	abc@abc.com		|	Driver's Licence		|	DMV1234	|	DMV								|	Texas			|	07/06/2016		|	07/05/2022			|	ABC LLC		|	Tester		|	50,000	|	RBS						|	Tulsa - Yale	|					
	