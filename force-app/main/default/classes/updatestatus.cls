public class updatestatus implements Database.Batchable<sobject>,Database.stateful{

    public integer recordcount=0;
    public Database.QueryLocator start(Database.BatchableContext bc) {
        
        return Database.getQueryLocator([SELECT ID,Name from opportunity]);
    }

    public void execute(Database.BatchableContext bc, List<opportunity> opp){
        
        for(opportunity o:opp)
        {
            o.LeadSource='Mobile';
        }
        update opp;
        recordcount=recordcount+opp.size();
       
      
    }    

    public void finish(Database.BatchableContext bc){
	system.debug('Count of records'+recordcount);   
    }    
    
}