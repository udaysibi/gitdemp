public class LinkedinIntegration {
    public static void loginToLinkedin(){
        Http http =new Http();
        Httprequest request =new Httprequest();
        request.setmethod('GET');
        request.SetEndpoint('callout:Linkedin/v2/me');
        Httpresponse response =http.send(request);
        system.debug(response.getBody());
        
    }

}