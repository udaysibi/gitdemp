public class Accounthothandler {

    public static void setrating(List<Account> ls)
    {
        for(Account a:ls)
        {
            if(a.Industry!=Null && a.Industry=='Media')
            {
                a.Rating='Hot';
            }
        }
        system.debug('completed');
    }
      public static void setdescripion(List<Account> ls)
    {
        system.debug('completed');
        for(Account a:ls)
        {
            system.debug(a.Active__c);
            if(a.Active__c=='Yes')
            {
                a.ShippingCity =a.BillingCity;
                a.ShippingCountry=a.BillingCountry;
                a.ShippingPostalCode=a.BillingPostalCode;
                a.ShippingState=a.BillingState;
                a.ShippingStreet=a.BillingStreet;        
            }
        }
        
    }
}