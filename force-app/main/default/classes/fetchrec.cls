public class fetchrec {

    public static void main(){
        List<ApexClass> classes = [select  Name from ApexClass LIMIT 10000];
        for(Integer i=0;i<classes.size();i++)
        system.debug('size is '+classes[i]);
       /* Document objD = new Document();
        objD.name = 'testFile.csv';
		String filecontent;
       for(Integer i=0;i<classes.size();i++)
           fileContent += classes[i] + '\n'; 
        //system.debug('size is '+classes[i]);
		objD.body = blob.valueof(fileContent);
		objD.folderId = UserInfo.getUserId();
		insert objD;
      //  
      for(List <ApexClass>:classes)
      {
          system.debug(s);
      }*/
        
    }
}