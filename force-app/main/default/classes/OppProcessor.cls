public class OppProcessor implements Database.batchable<sobject> {
    
    public integer recordCount=0;
    
    public database.querylocator start(Database.batchablecontext bc)
    {
        return database.getquerylocator([SELECT Id,Name from opportunity]);
    }
    
    public void execute(Database.batchablecontext bc, List<opportunity> lopp)
    {
        for(opportunity opp:lopp)
        {
            opp.leadsource='web';
        }
        update lopp;
    }
    public void finish(Database.batchablecontext bc)
    {
        system.debug('record count'+recordCount);
    }

}