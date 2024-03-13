public class AccountHandler {

    public static void populaterating(List<Account> lis){
        for(Account a:lis)
            
        {
            if(a.Industry!=Null&&a.Industry=='Media')
            {
                a.Rating='Hot';
            }
        }
         
        
    }
}