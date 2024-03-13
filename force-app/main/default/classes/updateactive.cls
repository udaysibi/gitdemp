public class updateactive{

public static void triggerhandler(List<account> acc,Map<id,account> oldmap)
{
Map<id,account> filteredmap =new Map<id,account>();
List<opportunity> opupdate =new List<opportunity>();
for(account ac:acc)
{
if(oldmap!=null && (ac.Active__c=='No'&& oldmap.get(ac.id).active__c=='Yes'))
{
filteredmap.put(ac.id,ac);
}
}
for(opportunity op : [Select id,accountid,stagename from opportunity where accountid in : filteredmap.keyset()])
{
if(filteredmap.containskey(op.accountid))
{
if(op.stagename!='closed won')
{
op.stagename='closed lost';
opupdate.add(op);
}
}
}
if(opupdate.size()>0)
    {
update opupdate;
    }
    }
    public static void showlog(List<account> acc)
    {
        set<id> ops=new set<id>();
        for(Account a : acc)
        {
            ops.add(a.id);
        }
        for(Account app : [SELECT Id,(select name,id from opportunities) from account where id in : ops])
        {
            if(app.opportunities.size()>0)
            app.adderror('cannot delete more opps with  account');
            }
        }
}