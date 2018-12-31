public class Bank_CustomerAccountsList_Controller {

    /*
     * For all properties and methods, make sure to handle any possible exceptions.
     * I gave you a hint for the customer_accounts property.
     */

    public List<Customer_Account__c> customer_accounts {
        get;
            //TODO: write code that will retreive an initial list of customer_accounts
            // and all of the fields needed for any user action taken on the page.
        
        set;
    }
    
    public String customerName {
        get;
        set;
    }
    
    public String accountType {
        get;
        set;
    }
    
    public ID accountSelected { 
        get; 
        set; 
    }
    
    public void getAccountsByCustomerName(){
        //TODO: update the customer_accounts variable, to contain
        //only accounts that have an Authorized user with a first
        //or last name that is similar to or matches what is 
        //stored in the customerName variable.
        
    }
    
    public void getAccountsByAccountType(){
        //TODO: update the customer_accounts variable to contain
        //only accounts that have an Account Type that is similar
        //to or exactly matches what is stored in the accountType
        //variable
        
    }
    
    public PageReference goToAccountPage(){
        PageReference pageRef = new PageReference('/apex/Bank_CustomerAccountDetails_Page');
        pageRef.setRedirect(true);
        pageRef.getParameters().put('caid', accountSelected);
        return pageRef;
    }
}