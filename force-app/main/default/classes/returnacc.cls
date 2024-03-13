public class returnacc {
	@auraenabled(cacheable=true)
    public static List<account> fetchacc()
    {
        return [SELECT Name from account limit 5];
    }
}