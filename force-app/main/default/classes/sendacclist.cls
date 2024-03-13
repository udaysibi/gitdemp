public with sharing class sendacclist {
    public static List<Account> sendacclistmethod() {

        return [Select Name from Account LIMIT 5];

    }
}