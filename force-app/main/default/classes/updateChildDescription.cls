public class updateChildDescription {
    
    public static void updatedescription(List<account> lis,Map<id,account> oldMap)
    {
        Map<id,account> filtermap =new Map<id,account>();
        List<contact> lstnew=new List<Contact>();
        for(Account a:lis)
        {
            if(a.rating!=oldmap.get(a.id).rating)
            {
                filtermap.put(a.id,a);
            }
        }
        for(Contact t:[SELECT Id,AccountId from contact where accountid in :filtermap.keyset()])
        {
            if(filtermap.containskey(t.accountid))
            {
                t.description=filtermap.get(t.accountid).rating;
                lstnew.add(t);
            }
        }
        if(lstnew.size()>0)
        {
            update lstnew;
        }
    }

}