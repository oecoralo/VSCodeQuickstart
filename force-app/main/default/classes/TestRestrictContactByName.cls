@isTest
private class TestRestrictContactByName {
    @isTest static void TestBeforeInsert() {
        Contact cntct = new Contact(FirstName='Test Contact',
                                   LastName='INVALIDNAME');
        Insert cntct;
    }
    
    @isTest static void TestBeforeUpdate() {
        Contact cntct = [SELECT Id FROM Contact ORDER BY LastCUUpdateDate DESC];
        cntct.LastName = 'INVALIDNAME';
        Update cntct;
    }
}