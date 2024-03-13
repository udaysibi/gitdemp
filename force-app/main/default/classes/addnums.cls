public class addnums {
    
    public static Integer sumnums()
    {
        String myTestString = 'testford';
		List<sObject> sobjList = Database.query('SELECT Id,(SELECT ID from contacts) FROM Account WHERE Name = :myTestString');
        return (sobjList.size());
    }
      public static Integer sumnumsd()
    {
        String myTestString = 'testford';
		List<sObject> sobjList = Database.query('SELECT Id,(SELECT ID from contacts) FROM Account WHERE Name = :myTestString');
        return (sobjList.size());
    }

}