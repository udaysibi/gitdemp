public class Accountsize {
	@future	
    public static void countContacts(List<Id> accIds){
        List<Account> li=new List<Account>();
        li=[SELECT Id,(SELECT Id from contacts) FROM account where Id IN : accIds];
		for(Account acc : li)
        {
            acc.No_of_contacts__c=acc.Contacts.size();
        }
        if(!li.isEmpty())
        update li;
    }
}