public class contactcounthelper {

    public static void updatedescription(List<contact> conlist)
    {
        List<account> newlist=new List<account>();
        set<id> newset=new set<id>();
        for(contact cs:conlist)
        {
            newset.add(cs.accountid);
        }
        for(account ac:[select id ,(select id from contacts) from account where id in : newset])
        {
            ac.NumberOfEmployees=ac.contacts.size();
            newlist.add(ac);
        }
        update newlist;
    }
    public static void updatedescription1(List<contact> conlist)
    {
        List<account> newlist=new List<account>();
        set<id> newset=new set<id>();
        for(contact cs:conlist)
        {
            newset.add(cs.accountid);
        }
        for(account ac:[select id ,(select id from contacts) from account where id in : newset])
        {
            ac.NumberOfEmployees=ac.contacts.size();
            newlist.add(ac);
        }
        update newlist;
    }
    public static void updatedescription2(List<contact> conlist)
    {
        List<account> newlist=new List<account>();
        set<id> newset=new set<id>();
        for(contact cs:conlist)
        {
            newset.add(cs.accountid);
        }
        for(account ac:[select id ,(select id from contacts) from account where id in : newset])
        {
            ac.NumberOfEmployees=ac.contacts.size();
            newlist.add(ac);
        }
        update newlist;
    }
}