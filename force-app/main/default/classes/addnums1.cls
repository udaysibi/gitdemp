@istest
public class addnums1 {
    
    @testsetup
    public static void testdata()
    {
        Account a =new Account(Name='testford');
        insert a;
    }
    @istest
    public static void firstmethod()
    {
        system.assertequals(addnums.sumnums(),10);
  }

}