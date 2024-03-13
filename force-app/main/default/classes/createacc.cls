public class createacc {

    public static void createcontact(List<account> lis){
        List<contact> ls=new List<contact>();
        for(Account l:lis)
        {
            Contact c=new Contact();
            c.LastName='tEst';
            c.AccountId=l.Id;
            ls.add(c);
        }
        insert ls;
    }
    public static void updateacc(List<account> lis,Map<Id,account> oldmap){
        Map<id,account> filteredlist =new Map<id,account>();
        List<contact> updatedlist =new List<contact>();
        for(Account a:lis)
        {
            if(a.description!=oldmap.get(a.id).description)
            {
                filteredlist.put(a.id,a);
            }
        }
        for(Contact cc:[select id , description,AccountId from contact where AccountId in : filteredlist.keyset()])
        {
            if(filteredlist.containskey(cc.Accountid))
            {
            cc.description=filteredlist.get(cc.AccountId).Description;
            system.debug(cc.Description);
            updatedlist.add(cc);
        }
        }
        update updatedlist;      
    }
}