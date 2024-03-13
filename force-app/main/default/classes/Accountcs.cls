public class Accountcs {
    @auraenabled(cacheable=true)
    public static List<Account> getlistacc()
    {
       return [SELECT Name from Account];
    }

}