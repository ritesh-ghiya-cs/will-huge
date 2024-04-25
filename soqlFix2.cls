
public without sharing class AccountSearch {

    /***************************************
    The constructor AccountSearch(String query2) takes a parameter query2 but doesn't use it in the code. 
    Instead, it assigns the value 'sfdfvcf' to the query1 variable.
    This assignment is static and doesn't directly involve user inputs, so there is no immediate risk of injection.
    ***************************************/
        private static string query1;

        public AccountSearch(String query2){ //Not Giving Violation
            query1='sfdfvcf';
        }
    
        public void searchInternalAccount(){

            query1 ='select id,Name,D_U_N_S__c,Billingcountry,billingstate,Type,account_status__c,recordtypeId,recordtype.name,BillingStateCode,billingcity,billingpostalcode,BillingStreet,billingcountrycode,Phone,website,owner.name from account where Id';
            List<account> sfdcaccList = new List<Account>();

            sfdcaccList = database.query(query1);

        }

}