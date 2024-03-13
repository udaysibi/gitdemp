public class updateopphandler {
    
    public static void updatephone(List<account> acc,Map<id,account> oldmap)
    {
        Map<id,account> filterlist =new Map<id,account>();
        List<contact> cops=new List<contact>();
        for(Account ac:acc)
        {
            if(ac.phone!=null&&ac.phone != oldmap.get(ac.id).phone)
            {
                filterlist.put(ac.id,ac);
            }
        }
        for(contact c : [select accountid , phone from contact where accountid in : filterlist.keyset()])
        {
            if(filterlist.containskey(c.accountid))
            {
                c.phone=filterlist.get(c.accountid).phone;
                cops.add(c);
            }
        }
        if(cops.size()>0)
            update cops;
    }

}