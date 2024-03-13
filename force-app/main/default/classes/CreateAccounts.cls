public class CreateAccounts {
    public static void createaccounts(){
        List<Account> accdetails =new List<Account>();
        for(Integer i=0;i<30;i++)
        {
            accdetails.add(new Account(Name='Report'+i));
            
        }
        insert accdetails;
    }

}