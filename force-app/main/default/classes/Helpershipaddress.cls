public class Helpershipaddress {
    public static void updateship(List<Account> li){
        
        for(Account l:li)
        {
            if(l.AnnualRevenue<2000)
            {
                l.addError('Annual revenue is less than 200');
            }
            if(l.BillingCity!=NULL)
            {
                l.ShippingCity=l.BillingCity;
                l.ShippingCountry=l.BillingCountry;
                l.ShippingPostalCode = l.BillingPostalCode;
				l.ShippingState = l.BillingState;
				l.ShippingStreet = l.BillingStreet;
                l.Description=l.BillingCity;
            	system.debug(l.BillingCity+' - >'+l.BillingCountry);
            }
              
        }   
    }
}