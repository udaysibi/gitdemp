@istest
public class addnumsTest {
    private static Integer a;
    private static Integer b;
 	@testsetup
    public static void numsinit()
    {
        a=1;
        b=2;
        //Test.setVariable('a', 1);
      //  Test.setVariable('b', 2);
    }
    
    @istest 
    public static void testmethod1(){
        //Integer a = (Integer) Test.getVariable('a');
        //Integer b = (Integer) Test.getVariable('b');
        system.assertequals(addnums.sumnums(a,b),30);
    }
}