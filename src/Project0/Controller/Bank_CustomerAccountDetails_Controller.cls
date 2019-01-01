public class Bank_CustomerAccountDetails_Controller {

    public ID caId {
        get {
            if ( caId == null ) {
                caId = apexPages.currentPage().getParameters().get('caid');
            	/* for testing purposes, consider setting a hardcoded customer_account Id in here
                Just make sure to remove it and use the above line when you are done.*/
            }
            
            return caId;
        }
        set; /* make sure you grab the info you need about the customer_account
        utilizing the caId whenever it is changed*/
    }
    
    public Customer_Account__c customer_account {
        get;
        set;
    }
    
    public Bank_Transaction__c currentTransaction {
        get; /*the from_account__c field should be set the the customer_account in context */
        set;
    }
    
    public Boolean displayDepositModal {
        get; /* this should start as false*/
        set;
    }
    
    public Boolean displayTransferModal {
        get; /* this should start as false */
        set;
    }
    
    public Boolean displayWithdrawalModal {
        get; /* this should start as false */
        set;
    }
    
    
    public void openDepositModal(){
        //TODO: assign the recordTypeId field of the currentTransaction property to match
        //the type of transaction of the Modal. Then set the displayDepositModal to true.
        displayDepositModal = True;
        
        
    }
    
    public void closeDepositModal(){
        //TODO: write a method that will change the displayDepositModal property to false
        //Also, the current_transaction property should be reset to a new (blank) transaction.
        displayDepositModal = false;
       
    }
    
    public PageReference deposit(){
        //TODO: call the appropriate method/methods from the Bank_Transaction_Controller class
        //in order to complete the deposit
        
        /* do not edit or remove the below code */
        PageReference pageRef = new PageReference('/apex/Bank_TransactionHistory_Page');
        pageRef.setRedirect(true);
        pageRef.getParameters().put('caid', caId);
        return pageRef;
    }
    
    public void openTransferModal(){
        //TODO: assign the recordTypeId field of the currentTransaction property to match
        //the type of transaction of the Modal. Then set the displayTransferModal to true.
        displayTransferModal = true;
        
    }
    
    public void closeTransferModal(){
        //TODO: write a method that will change the displayTransferModal property to false
        //Also, the current_transaction property should be reset to a new (blank) transaction.
        displayTransferModal = false;
       
    }
    
    public PageReference transfer(){
        //TODO: call the appropriate method/methods from the Bank_Transaction_Controller class
        //in order to complete the transfer
       
        /* do not edit or remove the below code */
        PageReference pageRef = new PageReference('/apex/Bank_TransactionHistory_Page');
        pageRef.setRedirect(true);
        pageRef.getParameters().put('caid', caId);
        return pageRef;
    }
    
    public void openWithdrawalModal(){
        //TODO: assign the recordTypeId field of the currentTransaction property to match
        //the type of transaction of the Modal. Then set the displayWithdrawalModal to true.
        displayWithdrawalModal = true;
    }
    
    public void closeWithdrawalModal(){
        //TODO: write a method that will change the displayWithdrawalModal property to false
        //Also, the current_transaction property should be reset to a new (blank) transaction.
        displayWithdrawalModal = false;
    }
    
    public PageReference withdrawal(){
        //TODO: call the appropriate method/methods from the Bank_Transaction_Controller class
        //in order to complete the withdrawal

        
        
        /* do not edit or remove the below code */
        PageReference pageRef = new PageReference('/apex/Bank_TransactionHistory_Page');
        pageRef.setRedirect(true);
        pageRef.getParameters().put('caid', caId);
        return pageRef;
    }
    
}