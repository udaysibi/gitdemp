global class schedulebatch implements schedulable {
    
    global void execute(SchedulableContext sc){
        Batchupdatecontacts b=new Batchupdatecontacts();
        Database.executebatch(b);
        
    }

}