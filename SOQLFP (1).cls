
public without sharing class AccountSearch {
    
    /***************************************
    Query variable is a class level field and for some reason is triggering an Injection vulnerability
    This would only be the case if this variable is set in the constructor
    ***************************************/    
        private static string query;

        public AccountSearch(){
        }

  
        public void searchInternalAccount(){
    
            query ='select id,Name,D_U_N_S__c,Billingcountry,billingstate,Type,account_status__c,recordtypeId,recordtype.name,BillingStateCode,billingcity,billingpostalcode,BillingStreet,billingcountrycode,Phone,website,owner.name from account where '; 
            List<account> sfdcaccList = new List<Account>();
        
            sfdcaccList = database.query(query);
         
        }

}