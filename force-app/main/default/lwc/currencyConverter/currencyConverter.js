import { LightningElement, wire,api,track } from 'lwc';
import { countryCodeList } from 'c/countryCodeList'
import IMAGE from "@salesforce/resourceUrl/currency";
 
export default class AccountLogo extends LightningElement {
    companyLogo = IMAGE;
    countryList=countryCodeList
    @track value = 'inProgress';
    fromvalue='USD';
    Tovalue='INR';

    
handleChange(event) {
        const{name,value}=event.target
        console.log(name);
        console.log(value);
     }
}