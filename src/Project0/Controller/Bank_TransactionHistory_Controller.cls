public class Bank_TransactionHistory_Controller {


    public ID caId {
        get {
            if ( caId == null ) {
                caId = apexPages.currentPage().getParameters().get('caId');
            	
            }            
            return caId;
        }
        set;
    }
    
    public List<Bank_Transaction__c> transactionList{
        //should contain any transactions related to the ID stored in caId
        //put in try catch doe to reading & writing to the db in order to catch DML & sObject errors
        get {
            
            try{
                //creates a list of transactions
                List<Bank_Transaction__c> qryTransactionList = new List<Bank_Transaction__c>();
                //bound query to variable to prevent SOQL injection
                String qryString  = [SELECT Id, Name, CreatedDate, Amount__c, From_Account__c, To_Account__c, RecordTypeId FROM Bank_Transaction__c WHERE Id = :caId];
                Database.SaveResult = Database.query(qryString);
                If(Database.SaveResult.isSuccess() = true){
                    Database.insert(qryTransactionList);
                        }
                else{
                        throw DmlException(); 
                        throw sOjectException();
                        System.debug('Error: Unable to complete insert, see error message');
                    }
            return Database.query(qryString);
            }
            catch (DmlException e){
                System.debug('DML Exception error: ' + e.DmlException());
            }
            catch (SObjectException e){
                System.debug('sObject Exception error: ' + e.setMessage(message));
            }
        
        }
        set;
    }
       
    public void sortByDate(){
        
        transactionList.sort(CreatedDate, ASC||DESC);
    }
    
    public void sortByAmount(){
        
        transactionList.sort(Amount__c, ASC||DESC);
    }
    
    public void sortByRecordType(){
        
        transactionList.sort(RecordType, ASC||DESC);
    }   
}