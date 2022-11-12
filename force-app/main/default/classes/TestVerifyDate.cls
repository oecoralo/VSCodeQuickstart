@isTest
private class TestVerifyDate {
    @isTest static void CheckDates1() {
        Date pri = VerifyDate.CheckDates(System.today(), System.today()+1);
    }

    @isTest static void CheckDates2() {
        Date pri = VerifyDate.CheckDates(System.today()+1, System.today());
    }
}