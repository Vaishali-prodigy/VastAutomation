package stepDefinations;

import org.openqa.selenium.WebDriver;

import com.cucumber.listener.Reporter;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import net.prodigylabs.config.ObjectRepository;
import net.prodigylabs.driver.CapabilitiesGenerator;
import net.prodigylabs.handlers.ScreenshotHandler;
import net.prodigylabs.handlers.WebElementHandler;
import net.prodigylabs.test.BaseTest;
import vast.pages.VASTBasePage;

public class VASTBaseTest extends BaseTest{
	
	public WebDriver driver = null;
	VASTBasePage vastBasePage = null;
	ScreenshotHandler screenshot = null;
	WebElementHandler webelementHandler = null;
	String sName = null;
	String browser = ObjectRepository.getString("global.browser.name");

	public VASTBaseTest() {
		driver = CapabilitiesGenerator.getInstance().launchBrowser(browser);
		driver.manage().window().maximize();
		System.err.println("Inside VAST Base Test");
		webelementHandler = new WebElementHandler(driver);
		vastBasePage= new VASTBasePage(driver);
		screenshot = new ScreenshotHandler(driver);
		
	}

}
