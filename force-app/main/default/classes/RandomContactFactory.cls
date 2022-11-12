public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numContacts, String InLastName) {
        List<Contact> cntcts = new List<Contact>();
        
        for(Integer i=0;i<numContacts;i++) {
            Contact c = new Contact(FirstName = 'Test '+i,
                                   LastName = InLastName);
            cntcts.add(c);
        }
        
        return cntcts;
    }
}