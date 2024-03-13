public class BasicCalloutDemo{
    public  static void makeGetCallout(){ 
  String jsonBody = '{"name": "morpheus","job": "leader"}';
  //Set HTTPRequest Method
  HttpRequest req = new HttpRequest();
  req.setMethod('POST');
  req.setHeader('Accept-Encoding', 'gzip,deflate');
  req.setHeader('content-type', 'text/xml; charset=utf-8');
  req.setHeader('Content-Length', String.valueOf(jsonBody.length()));
  req.setEndpoint('https://reqres.in/api/users');

  // setting body
  System.debug('Input Request:' + jsonBody);
  req.setBody(jsonBody);

  //Execute web service call here     
  Http http = new Http();
  HTTPResponse res = http.send(req);

  //Helpful debug messages
  System.debug(res.toString());
  System.debug('STATUS:' + res.getStatus());
  System.debug('STATUS_CODE:' + res.getStatusCode());
  String responseXML = res.getBody();
  System.debug('responseXML:' + responseXML);
    }}