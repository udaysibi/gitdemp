public class validatecontact{
public static void insercontact(List<contact> conlist,Map<id,contact> oldmap)
{
List<contact> fetchquery = [Select phone,email from contact];
for(contact c:conlist)
{     
for(contact ft:fetchquery)
{                                           
if((c.phone==ft.phone) && (c.email==ft.email))
{
c.addError('Same phone and email already exists');
}
}
}
}
}