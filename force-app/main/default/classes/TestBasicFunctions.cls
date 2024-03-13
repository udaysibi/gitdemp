@isTest
public class TestBasicFunctions {
   
    @isTest
    private static void testadd(){
        Integer a=10;
        Integer b=20;
        BasicFunctions bf=new BasicFunctions();
        System.assertequals(bf.Ad(a,b),30);
    }
     @isTest
    private static void testsub(){
        Integer a=10;
        Integer b=20;
        BasicFunctions bf=new BasicFunctions();
        System.assertequals(bf.Su(a,b),-10);
    }

}