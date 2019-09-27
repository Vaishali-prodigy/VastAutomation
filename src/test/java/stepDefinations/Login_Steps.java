package stepDefinations;

import com.cucumber.listener.Reporter;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import net.prodigylabs.config.ObjectRepository;
import net.prodigylabs.handlers.VerificationHandler;

public class Login_Steps{

	String sName = null;
	
	private VASTBaseTest vastbasetest;
	
	public Login_Steps(VASTBaseTest vastbasetest) {
		this.vastbasetest=vastbasetest;
	}
	
	@Before()
	public void setup(Scenario scenario) throws Exception {		
		System.out.println("Executing Before of Step Defination");
		sName=scenario.getName();
	}
	
	@After()
	public void tearDown() throws Exception {		
		System.out.println("Executing After of Step Defination");
        Reporter.addScreenCaptureFromPath(vastbasetest.screenshot.captureScreenShot(sName));  
		vastbasetest.driver.quit();
	}
	
	@Given("^User launches the Vast application \"([^\"]*)\"$")
	public void user_launches_the_Vast_application(String url) throws Throwable {
		vastbasetest.vastBasePage.openVastBankLoginPage(url);
	    Reporter.addScreenCaptureFromPath(vastbasetest.screenshot.captureScreenShot(sName));  
	}

	@Given("^user enters text \"([^\"]*)\" in textbox \"([^\"]*)\"$")
	public void user_enters_text_in_textbox(String arg1, String arg2) throws Throwable {
		vastbasetest.webelementHandler.enterText(ObjectRepository.getobjectLocator(arg2), arg1);
		Reporter.addScreenCaptureFromPath(vastbasetest.screenshot.captureScreenShot(sName));
	}

	@Given("^user selects the environment \"([^\"]*)\"$")
	public void user_selects_the_environment(String arg1) throws Throwable {
		vastbasetest.webelementHandler.clickButton(ObjectRepository.getobjectLocator("loginpage.environment"));
		vastbasetest.webelementHandler.clickButton(ObjectRepository.getobjectLocator("loginpage.environment.uat"));
		Reporter.addScreenCaptureFromPath(vastbasetest.screenshot.captureScreenShot(sName));
	}

	@Given("^user clicks on button \"([^\"]*)\"$")
	public void user_clicks_on_button(String arg1) throws Throwable {
		vastbasetest.webelementHandler.clickButton(ObjectRepository.getobjectLocator(arg1));
        Reporter.addScreenCaptureFromPath(vastbasetest.screenshot.captureScreenShot(sName));  
	}

	@Then("^user is on Vast Homepage$")
	public void user_is_on_Vast_Homepage() throws Throwable {
		VerificationHandler.verifyTrue(vastbasetest.webelementHandler.isDisplayed(ObjectRepository.getobjectLocator("homepage.tab.dashboard")));
		Reporter.addScreenCaptureFromPath(vastbasetest.screenshot.captureScreenShot(sName));  
	}
	
	@Then("^User gets error \"([^\"]*)\" on login page$")
	public void user_gets_error_on_login_page(String arg1) throws Throwable {
		VerificationHandler.verifyTrue(vastbasetest.webelementHandler.getText(ObjectRepository.getobjectLocator("loginpage.error.message")).contains(arg1));
		Reporter.addScreenCaptureFromPath(vastbasetest.screenshot.captureScreenShot(sName));  
	}
	
	@Given("^user waits for page to load$")
	public void user_waits_for_page_to_load() throws Throwable {
		vastbasetest.webelementHandler.waitforinvisibilityofElement(ObjectRepository.getobjectLocator("Spinner"));
	}
}
