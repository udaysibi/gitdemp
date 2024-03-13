@isTest
public class Testupdatestatus {
    
    @isTest
    static void testopopfield()
    {
        List<opportunity> ls=new List<opportunity>();
        for(Integer i=0;i<200;i++)
        {
            ls.add(new opportunity(name='Test'+i,Stagename='prospecting',closedate=system.today()));
        }
        insert ls;
        
        Test.starttest();
        updatestatus up = new updatestatus();
        Id batchid=Database.executebatch(up);
        Test.stoptest();
    }

    
}