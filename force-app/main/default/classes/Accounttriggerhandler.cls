public class Accounttriggerhandler {   
    public static void uprating(List<Account> acc)
    {
        for(Account a:acc)
        {
            if(a.industry!=null && a.industry=='Media')
            {
                a.Rating='Hot';
            }
        }
    }

}