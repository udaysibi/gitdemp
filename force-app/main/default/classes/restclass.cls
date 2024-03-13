public class restclass {
    
    public static void fetchdate(){
        Date startDate = date.newinstance(2018, 1, 1);
		Date endDate = date.newinstance(2023, 12, 31);
		List<Account> lstAcc = [SELECT id,IsDeleted,LastModifiedDate FROM Account WHERE IsDeleted = true and (LastModifiedDate >: startDate AND LastModifiedDate <:endDate) ALL rows];
		system.debug('deleted records lst --> ' + lstAcc);
    }

}