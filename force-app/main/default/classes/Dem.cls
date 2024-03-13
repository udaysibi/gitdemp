public class Dem {
    public static void main(){       
       List<Account> l=new List<Account>();
       l=[Select Name from Account ORDER BY Name];    
       For(Account n:l)
       {
           system.debug(n);
       }
      AggregateResult aggr=[SELECT Count(ID),stagename from opportunity group by stagename];
        system.debug(aggr);
    }

}