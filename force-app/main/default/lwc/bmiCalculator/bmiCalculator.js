import { LightningElement } from 'lwc';

export default class BmiCalculator extends LightningElement {
height=''
weight=''
bmivalue=0;
result=0;

inputHandler(event){
const{name,value}=event.target
if(name==="height")
this.height=value
else
this.weight=value
console.log(this.height,"weight is ",this.weight)
}
submitHandler(event)
{
    event.preventDefault()
    let height=Number(this.height)/100;
    let bmi=Number(this.weight)/(height*height);
    
    this.bmiValue=Number(bmi.toFixed(2))
    this.result=this.bmiValue;
    console.log(this.result);
}

}