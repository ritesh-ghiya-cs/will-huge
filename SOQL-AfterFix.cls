
 /***********************
The differences are with class level variables, when it comes to local variables it can  automatically check data flow,
for global variables we are checking based on variable name and AST Latest Assignments.but some FalsePositive/FalseNegatives might occur.
because we are just checking the latest assignment but to check all assignments with AST it is not possible and it is going into infinite loop,
if assigns like

query=query+'fd';
query=query+query2;
database.query(query);

*************************/  
public without sharing class AccountSearch {
    
 
 /***********************
For This Example as we are giving Class level variable and in the method assigning one static value,
after False positive fix it has been covered to check latest assignment and does not give a violation..
*************************/    
   
     String query1;
      public void accSearch(){     
        query1 = 'accounts table';          
        database.query(query1);
    }

}