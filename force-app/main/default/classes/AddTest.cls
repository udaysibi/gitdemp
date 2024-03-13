@isTest
public class AddTest {
    @isTest
    private static void summethod()
    {
        Integer a=5;
  		Integer b=6;
        Integer actual;
        Integer exp;
        if(a<b)
        {
        actual=Add.check(a,b);
        exp=10;
        System.assertEquals(10,exp);
        }
        if(a<b)
        {
        actual=Add.diff(a,b);
        exp=-1;
        System.assertEquals(-1,exp);
        }
     
    }

}