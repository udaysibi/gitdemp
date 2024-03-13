@isTest
public class Testupdateacc {
    
    @isTest
    static void testrecords()
    {
       List<Account> a=new List<Account>();
       for(Integer i=0;i<250;i++)
       {
           a.add(new Account(name='Testt'+i));
       }
        insert a;
        List<Contact> c= new List<Contact>();
       	List<Id> ls=new List<Id>();
        for(Account ac:a)
        {
            c.add(new contact(firstname='uday',lastname='k',AccountId=ac.Id));
            ls.add(ac.Id);
        }
        insert c;
        Test.startTest();
        Updateacc.sizeupdate(ls);
        Test.stopTest();
        List<Account> lst=[SELECT Id,No_of_contacts__c from Account];
        system.assertequals(1,lst[10].No_of_contacts__c,'contacts are not counted succesfully');
    }

}