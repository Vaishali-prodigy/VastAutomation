import java.io.IOException;

import org.openqa.selenium.WebDriver;

import net.prodigylabs.config.ObjectRepository;
import net.prodigylabs.driver.CapabilitiesGenerator;

public class test1 {

	public static void main(String[] args) throws Exception {
		try {
			ObjectRepository.loadAllProperties();
			System.out.println(ObjectRepository.getString("global.browser.name"));
			System.out.println(ObjectRepository.getString("vast.button.text"));
			
		//	WebDriver driver = CapabilitiesGenerator.getInstance().launchBrowser();
			

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
