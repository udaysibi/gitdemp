@isTest
public class TestCheckbig {

    @istest
    static void checka(){
        Checkbig cb = new Checkbig();
        system.assertequals(cb.checksmall(10,9),10);
    }
    @istest
    static void checkb(){
        Checkbig cb1 = new Checkbig();
        system.assertequals(cb1.checksmall(9, 10),10);
    }
}