

/*******************
Based on latest assignment we are checking the primary expression,So
it is giving violation to both the query's if we write same variable, in same way it might not give to both if it is safe assingment.
*********************/

public without sharing class AccountSearch {
    
    String query1;

    public void acc(){
        query1='dcsd';
    }

    public AccountSearch(){
        query1 ='select id,Name,D_U_N_S__c,Billingcountry,billingstate,Type,account_status__c,recordtypeId,recordtype.name,BillingStateCode,billingcity,billingpostalcode,BillingStreet,billingcountrycode,Phone,website,owner.name from account where ';
        List<account> sfdcaccList = new List<Account>();
        sfdcaccList = database.query(qUery1);
    }
    
    public void AccountSearch1(){
        Query1=query1+'dcd';
        query1=getSomeID(); //Taking this into Consideration for both
        List<account> sfdcaccList = new List<Account>();
        sfdcaccList = database.query(qUery1);
    }
}