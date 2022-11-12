public class ContactSearch {
    public static List<Contact> searchForContacts(String InLastName, String InPostalCode){
        Contact[] cts = [SELECT Id, Name FROM Contact 
                         WHERE (LastName = :InLastName AND MailingPostalCode = :InPostalCode)];
        
        return(cts);
    }
}