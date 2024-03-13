@isTest
public class TestOppupdate {

    @isTest
    public static void testoppdest(){
        
        List<opportunity> accList =new List<opportunity>();
            for(Integer i=0;i<10;i++)
        {
            Opportunity a=new opportunity();
            a.Name='Test'+i;
            a.closedate=system.today();
            a.stagename='prospecting';
            a.Amount=20000000;
            accList.add(a);
        }
        test.starttest();
        insert accList;
        test.stoptest();
        opportunity b=[Select id,description from opportunity where id =:accList[0].id];
        system.assertequals(b.Description,'Hot Opportunity');
    }
}