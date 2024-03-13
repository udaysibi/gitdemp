@isTest
public class TestAccountHandler {

    @isTest
    public static void testaccountrating(){
        
        Account a=new Account(Name='Test234',Industry='Media');
        Test.startTest();
        insert a;
        Test.stopTest();
        
        Account b=[Select Id,Rating from Account where id=: a.id];
        system.assertequals(b.Rating,'Hot');
    }
}