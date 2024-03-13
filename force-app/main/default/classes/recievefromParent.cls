global class recievefromParent {
    
    webservice static String createCaserecord(String firstName,String lastName,String title,string email)
    {
        contact rec=new contact();
        rec.FirstName=firstName;
        rec.LastName=lastName;
        rec.Title=title;
        rec.Email=email;
        insert rec;
        return 'finished';
    }

}