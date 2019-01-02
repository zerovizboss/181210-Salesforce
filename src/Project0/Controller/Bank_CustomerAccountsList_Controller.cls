public class Bank_CustomerAccountsList_Controller {

    /*
     * For all properties and methods, make sure to handle any possible exceptions.
     * I gave you a hint for the customer_accounts property.
     */

    public List<Customer_Account__c> customer_accounts {
        
        get{
            //creates a list of transactions
            List<Customer_Account__c> qryCustomerList = new List<Customer_Account__c>();
            //queries the list of bank transactions
            String stmtCustAccounts = [SELECT Id, Name, CreatedDate, Account__c, Balance__c, RecordTypeId FROM Customer_Account__c];
            qryCustomerList = Database.query(stmtCustAccounts);
    }                            
        set;
    }
    
    public String customerName {
        get{
            customer_accounts.sort(customer_accounts) ASC OR DESC;
        }
        set;
    }
    
    public String accountType {
        get{
            customer_accounts.sort(accountType) ASC OR DESC;
        }
        set;
    }
    
    public ID accountSelected { 
        get{
            customer_accounts.sort(accountSelected) ASC OR DESC;
        }
        set; 
    }
    
    public void getAccountsByCustomerName(){
        //TODO: update the customer_accounts variable, to contain
        //only accounts that have an Authorized user with a first
        //or last name that is similar to or matches what is
        //stored in the customerName variable.
        
        String custName = [SELECT Id, Name, CreatedDate, Account__c, Balance__c, RecordTypeId FROM Customer_Account__c WHERE Authorized_User_1__r.First_Name__c OR Authorized_User_1__r.Last_Name__c LIKE + '%' + customerName + '%'];
        Update(Database.query(custName));
    }
    
    public void getAccountsByAccountType(){
        //TODO: update the customer_accounts variable to contain
        //only accounts that have an Account Type that is similar
        //to or exactly matches what is stored in the accountType
        //variable
        String acctType = [SELECT Id, Name, CreatedDate, Account__c, Balance__c, RecordTypeId FROM Customer_Account__c WHERE Account_Type__c LIKE + '%' + Account_Type__c + '%'];
        Update(Database.query(acctType));
    }
    
    public PageReference goToAccountPage(){
        PageReference pageRef = new PageReference('/apex/Bank_CustomerAccountDetails_Page');
        pageRef.setRedirect(true);
        pageRef.getParameters().put('caid', accountSelected);
        return pageRef;
    }
}