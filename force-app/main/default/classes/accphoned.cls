public class accphoned {
    public static void updatephone(list<account> acclist,map<id,account> oldmap)
    {
        set<string> filteredphone =new set<string>();
        for(account acc:acclist)
        {
           if(acc.phone!=null&&(acc.phone!=oldmap.get(acc.id).phone))
           {
               filteredphone.add(acc.phone);
           }
        }
        list<account> newlist=[select phone from account where phone in : filteredphone];
        set<string> phonestring =new set<string>();
        if(!newlist.isempty())
        {
            
         for(account acc:newlist)
         {
             phonestring.add(acc.phone);
         }
        }
        for(Account acc:acclist)
        {
            if(phonestring.contains(acc.phone))
            {
                acc.adderror('Duplicate please');
            }
        }
        
    }
     public static void updatedescopp(list<account> acclist,map<id,account> oldmap)
    {
        Map<id,account> filterlist =new Map<id,account>();
        for(Account acc:acclist)
        {
            filterlist.put(acc.id,acc);
        }
        List<opportunity> newvals=new List<opportunity>();
        Integer Max=0;
        List<opportunity> opp=[SELECT name,description,accountid,Amount from opportunity where accountid in : filterlist.keyset()];
        for(opportunity op:opp)
        {
             if(Max<Integer.valueof(op.Amount))
                {
                    Max=Integer.valueof(op.Amount);
                }
        }
        System.debug(Max);
        for(opportunity op:opp)
        {
            if(!opp.isempty())
            {
                op.description=String.valueof(Max);
                newvals.add(op);
            }
        }
        if(newvals.size()>0)
            update newvals;
        
    }
public static void deleteactive(list<account> acclist)
    {
        Map<id,account> filterlist =new Map<id,account>();
        for(Account acc:acclist)
        {
            if(acc.Active__c=='Yes')
            acc.addError('Cannot delete account record!!!');
        }
        system.debug((system.today()-6));
        
    }
    public static void deletadmin(list<account> acclist)
    {
        Map<id,account> filterlist =new Map<id,account>();
        Profile p=[SELECT id from profile where name='System Administrator'];
        for(Account acc:acclist)
        {
            if(p.id!=Userinfo.getprofileid())
            acc.addError('Only Admins can delete');
        }
        system.debug((system.today()-6));
        
    }
}