public class updateacccase {

    public static void updateaccs(List<case> caselist)
    {
        for(case c:caselist)
        {
            if(c.accountid!=null)
            {
                Account a =new Account();
                a.Id=c.accountid;
                a.website=c.caseNumber;
                update a;
            }
        }
    }
}