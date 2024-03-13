public class Accountupdate {
    
    public static void updatedescription(List<Account> acclist)
    {
        for(Account acc:acclist)
        {
            acc.description=acc.OwnerId;
        }
    }
     public static void updatedescriptions(List<Account> acclist,Map<id,account> oldmap)
    {
        for(Account acc:acclist)
        {
            if(acc.OwnerId!=oldmap.get(acc.Id).ownerId)
            acc.description=acc.OwnerId;
        }
    }
}