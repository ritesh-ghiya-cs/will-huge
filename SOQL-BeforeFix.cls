
public without sharing class AccountSearch {
    
/***********************
For this example, as per the previous implementation, if there are multiple assignments present,based on the data flow of nodes,
the rule is checking every assignment but doesn't result in infinite loop
*************************/
    public void accMethod(){
        String query;
        query = getSomeID();             //Giving the Vioalation                             
        query = query + 'accounts table';          
        sfdcaccList = database.query(query);
    }


 
 /***********************
For This Example,  we are having a Class level variable and in the method, we assign it a string value.
the rule is not checking the assignment and throws a violation. (False Positive Which We Got)
*************************/    
        String query1;
        public void accSearch(){     
        query1 = 'accounts table';          
        database.query(query1);
    }



 /***********************
      For This Example, we have a Class level variable whose value is assigned at Class Level.
      In this case, the rule does not check further and does not give a violation.
*************************/     
     String query2='select * from table';
      public void accSearch(){    
      query2=getSomeID();
      database.query(query2);
    }
}