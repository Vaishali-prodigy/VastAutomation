package stepDefinations;

import cucumber.api.java.en.Then;
import net.prodigylabs.config.ObjectRepository;
import net.prodigylabs.handlers.VerificationHandler;


public class CustomerSearch_Steps {
	
	private VASTBaseTest vastbasetest;
	
	public CustomerSearch_Steps(VASTBaseTest vastbasetest) {
		this.vastbasetest=vastbasetest;
	}

	@Then("^user record with customer number \"([^\"]*)\" is retrieved$")
	public void user_record_with_customer_number_is_retrieved(String arg1) throws Throwable {
		vastbasetest.webelementHandler.setDriverWait(ObjectRepository.getobjectLocator("customerno"));
		VerificationHandler.verifyTrue(vastbasetest.webelementHandler.getText(ObjectRepository.getobjectLocator("customerno")).contains(arg1));
		System.out.println(vastbasetest.webelementHandler.getText(ObjectRepository.getobjectLocator("customerno")));
	}
	
	@Then("^user gets message as \"([^\"]*)\" on top of the page$")
	public void user_gets_message_as_on_top_of_the_page(String arg1) throws Throwable {
		vastbasetest.webelementHandler.setDriverWait(ObjectRepository.getobjectLocator("NoCustomersavailable_message"));
	    VerificationHandler.verifyTrue(vastbasetest.webelementHandler.getText(ObjectRepository.getobjectLocator("NoCustomersavailable_message")).contains(arg1));
	}
	
	@Then("^user record with full name \"([^\"]*)\" is retrieved$")
	public void user_record_with_full_name_is_retrieved(String arg1) throws Throwable {
		vastbasetest.webelementHandler.setDriverWait(ObjectRepository.getobjectLocator("fullname_record"));
	    VerificationHandler.verifyTrue(vastbasetest.webelementHandler.getText(ObjectRepository.getobjectLocator("fullname_record")).contains(arg1));
	}

}
