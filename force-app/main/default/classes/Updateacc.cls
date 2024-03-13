public class Updateacc {
    @future
    public static void sizeupdate(List<Id> acl){
        
        List<Account> acc=[SELECT Id,(SELECT ID FROM Contacts) FROM Account WHERE ID IN:acl];
        for(Account a: acc)
        {
            
            a.No_of_contacts__c=a.Contacts.size();
        }
        update acc;
    }

}