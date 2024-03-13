public class updateaccount {

    public static void setdescription(list<opportunity> opps){
        
        for(opportunity op:opps)
        {
            if(op.Amount==Null)
            op.Amount.adderror('Please enter amount');
        }
        
    }
}