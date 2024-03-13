@RESTResource(urlMapping='/CreateLead/*')
global class CreateLeadAPI {
     @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String AccNumber = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE AccountNumber = :AccNumber ];
        return result;
    }
    @HTTPPUT
    global static string postrec(){
        String fname,lname,comp;
        String fieldName,fieldValue;
        RestRequest req=Restcontext.request;
        RestResponse res=Restcontext.response;
        String jsonBody=req.requestBody.toString();
        JSONParser parser = JSON.createParser(jsonBody);
        while(parser.nextToken()!=null)
        {
            if(parser.getCurrentToken()!=JSONToken.END_OBJECT)
            {
                fieldName=parser.getCurrentName();
                fieldValue=parser.getText();
                if(fieldName=='FirstName')
                    fname=fieldValue;
                else if(fieldName== 'LastName')
                    lname=fieldValue;
                else if(fieldName == 'Company')
                    comp=fieldValue;
                    
            }
        }
        
    Lead l =new Lead(firstName=fname,lastName=lname,company=comp);
    insert l;
    return l.id;
    }
}