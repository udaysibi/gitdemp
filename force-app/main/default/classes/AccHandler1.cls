public class AccHandler1 {
    public static void ifetchacc(List<Account> acc){
        List<contact> lsc=new List<contact>();
        for(Account a:acc)
        {
            system.debug(a.Name);
            if(a.Contact__c==True)
            {
                Contact c=new Contact();
                c.AccountId=a.Id;
                c.LastName=a.Name+'Kr';
                c.FirstName='Testett';
                lsc.add(c);
            }
        }
        if(lsc.size()>0)
            insert lsc;
    }
    public static void updatedesc(List<Account> newacc,Map<Id,Account> oldacc){
        List<contact> lsc=new List<contact>();
        for(Account a:newacc)
        {
            String lis=oldacc.get(a.Id).phone;
            if(a.Phone!=lis)
            {
                a.Description='New value is '+ a.phone+'Old value is '+lis;
            }
           
    }
    }
public static void updatecontacts(List<Account> newacc,Map<Id,Account> oldacc){
        List<contact> lsc=new List<contact>();
        for(Account a:newacc)
        {
            String lis=oldacc.get(a.Id).phone;
            if(a.Phone!=lis)
            {
               List<contact> newcontact=[SELECT Id,MobilePhone from contact where AccountId = '0015i0000133GpsAAE'];
                for(Contact c : newcontact)
                {
                    c.MobilePhone=a.Phone;
                    lsc.add(c);
                }
            }
           
    }
    insert lsc;
    }}