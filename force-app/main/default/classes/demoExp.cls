public class demoExp {
    public  Integer demotest(){
        Integer a,b,c;
        a=1;b=0;
        try{
            c=a/b;
        }
        catch(Exception e){
            system.debug('Inside catch');
        }
        return c;
    }
}