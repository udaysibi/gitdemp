public class triggerclassphoneupdate {
    
    public static void updateph(List<Account> newAcc, Map<Id,Account> oldacc){
        
        map<id,account> satmap=new map<id,account>();
        for(Account a:newAcc)
        {
            if(a.phone!=oldacc.get(a.id).phone)
            {
                satmap.put(a.id,a);
            }
        }
        List<contact> updatedlist =new List<contact>();
        List<contact> c=new List<contact>();
        c=[SELECT id,phone,AccountId from contact where Accountid in : satmap.keyset()];
      //  [SELECT Id, HomePhone, AccountId FROM Contact WHERE AccountId IN: accTOAccountMap.keySet()
        for(Contact c1:c)
        {
            c1.phone=satmap.get(c1.accountid).phone;
            updatedlist.add(c1);
        }
        if(updatedlist.size()>0)
            update updatedlist;
    }
}