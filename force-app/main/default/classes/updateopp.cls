public class updateopp {
    
    public static void updatestage(List<account> newacc,Map<Id,Account> oldmap)
    {
        List<opportunity> opsadd=new List<opportunity>();
        Map<Id,Account> opsAcc=new Map<Id,Account>();
        for(Account a:newacc)
        {
            if(a.Active__c=='No'&&oldmap.get(a.Id).Active__c=='Yes')
            {
                opsAcc.put(a.Id,a);
            }
        }
        for(Account acc:[SELECT Id,Active__c,(SELECT Id,StageName FROM
Opportunities) FROM Account WHERE Id IN:opsAcc.keyset()])
        {
            for(Opportunity ops:acc.Opportunities)
            {
            if(ops.StageName=='Closed Won')
            {
                system.debug(ops.StageName);
                ops.StageName='Closed Lost';
                opsadd.add(ops);
            }
            }
        }
        if(opsadd.size()>0)
        {
            update opsadd;
        }
    }

}