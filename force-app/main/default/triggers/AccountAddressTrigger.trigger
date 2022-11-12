trigger AccountAddressTrigger on Account (before insert, before update) {
    for (Account accnt :Trigger.New) {
        if (accnt.Match_Billing_Address__c) {
            accnt.ShippingPostalCode = accnt.BillingPostalCode;
	    }
    }
}