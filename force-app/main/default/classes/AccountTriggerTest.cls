@isTest
private class AccountTriggerTest {
    @isTest static void TestCreateNewAccountInBulk() {
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState='CA');
            accts.add(acct);
        }              

        insert accts;                               

        // Verify that 200 new Accounts were inserted
        List<Account> verifyAccts = [SELECT Id FROM Account WHERE ShippingState='CA'];
        System.assertEquals(200, verifyAccts.size());                                
    }
}