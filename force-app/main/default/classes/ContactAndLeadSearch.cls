public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String InSearch){
        List<List<sObject>> searchList = [FIND :InSearch IN ALL FIELDS
                                          RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
        Contact[] searchContacts = (Contact[])searchList[0];
        Lead[] searchLeads = (Lead[])searchList[1];
        
        return(searchList);
    }
}