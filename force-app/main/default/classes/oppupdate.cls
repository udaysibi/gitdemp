public class oppupdate {

    Public static void updatedescription(List<opportunity> ops)
    {
        for(opportunity o:ops)
        {
            if(o.Amount!=Null && o.Amount>10000)
            {
                o.description='Hot Opportunity';
            }
        }
    
    }
}