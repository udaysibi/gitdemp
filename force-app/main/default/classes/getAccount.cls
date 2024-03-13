public with sharing class getAccount {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAcc() {
        return [SELECT Name from Account LIMIT 5];

    }
}