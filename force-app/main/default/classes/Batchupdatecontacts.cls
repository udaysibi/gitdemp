global class Batchupdatecontacts implements Database.Batchable<sObject> {
    
    global database.querylocator start(Database.batchablecontext bc)
    {
        return database.getquerylocator('Select Id,name,Description from account');
    }
     global void execute(Database.batchablecontext bc , List<account> acc)
    {
       for(account s:acc)
       {
           s.description='From batchAPes';
       }
        update acc;
    }
    global void finish(Database.batchablecontext bc)
    {
        system.debug('Inside the finish');
    }
    
}