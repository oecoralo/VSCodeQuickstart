public class AccountUtils {
    public static List<Account> accountsByState(String InState) {
        List<Account> result = [SELECT Id, Name FROM Account WHERE BillingState =:InState];
                
        return result;    
    }
}