@isTest
public class TestOppProcessor {
    @isTest
    public static void addopp(){
        List<opportunity> lo=new List<opportunity>();
        for(Integer i=0;i<200;i++)
        {
            lo.add(new opportunity(Name='Test'+i,StageName='prospecting',closedate=system.today()));
        }
                   insert lo;                 
                   Test.startTest();
                   OppProcessor ops=new OppProcessor();
                   Id batchid=Database.executebatch(ops,200);
                   Test.stopTest();                
                   List<opportunity> lsm=[SELECT id from opportunity where leadsource ='web'];
                   System.assertequals(200,lsm.size());   
    }
}