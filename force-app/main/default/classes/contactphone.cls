public class contactphone {

    public static void updatephone(List<contact> conlist,Map<id,contact> oldmap)
    {
        set<string> filterlist =new set<string>();
        for(contact con:conlist)
        {
            if(con.phone!=null & con.phone!=oldmap.get(con.id).phone)
            {
                filterlist.add(con.phone);
            }
        }
        list<contact> newlist =[Select phone from contact where phone in :filterlist];
            set<string> tocompare =new set<string>();
            if(!newlist.isempty())
            {
                for(contact con:newlist)
                {
                    tocompare.add(con.phone);
                }
            }
        for(contact con:conlist)
        {
            if(tocompare.contains(con.phone))
            {
                con.adderror('duplicate phone not allowed');
            }
        }}}