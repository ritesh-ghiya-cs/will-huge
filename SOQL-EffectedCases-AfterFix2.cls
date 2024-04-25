
/***********************
for this example we are not checking if Query was assigned with any value or not before appending it with extra value,
as we are taking the latest assignment
*************************/


public without sharing class AccountSearch {
    
    String query; 
    
    public void accMethod(){
        
        query = getSomeID();                        //We are not taking and checking, might be the insecure assignment
        query = Query + 'select query';             //latest assignment
        List<account> sfdcaccList = new List<Account>();
        sfdcaccList = database.query(query);
    }