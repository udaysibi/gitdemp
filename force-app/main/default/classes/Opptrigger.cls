public class Opptrigger {

    public static void populatedescription(List<opportunity> lops){
        list<Account> a=new list<Account>();
        for(opportunity o:lops)
        {
            Account b=new Account();
            b.id=o.id;
            b.Description='From Trigger';
            a.add(b);
        }
        insert a;
        
    }
}