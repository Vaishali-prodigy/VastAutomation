package vast.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import net.prodigylabs.config.ObjectRepository;
import net.prodigylabs.handlers.ScreenshotHandler;
import net.prodigylabs.handlers.WebElementHandler;

public class VASTBasePage{
	
	protected WebDriver driver = null;
	private boolean flag = false;
			
	public VASTBasePage(WebDriver webDriver) {	
		driver = webDriver;
		System.out.println("Inside VASTBasePage constructor");
	}
	
	public void openVastBankLoginPage(String url) throws Exception {
		try {
			driver.get(url);
		} catch (Exception e) {
			throw new Exception("Unable to open Vast Bank application", e);
		}
	}
	

}
