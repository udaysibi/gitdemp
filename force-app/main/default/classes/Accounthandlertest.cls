@isTest
public class Accounthandlertest {

    @isTest
    public static void insAcc(){
        List<Account> lk=new List<Account>();
        for(Integer i=0;i<20;i++)
        {
            lk.add(new Account(Name='test'+i));
        }
        insert lk;
    }
}