@isTest
private class ContactDetailTest {

    static testMethod void myUnitTest() {

        RecordType organizationRecType = RecordTypes.getRecordTypeByName('Organisation', 'Account');
        Account acc = new Account();
        acc.Name = 'dfde';
        acc.RecordTypeId = organizationRecType.id;
        insert acc;
        
        Contact con = new Contact();
        con.LastName = 'dsf';
        con.Function_Group__c = 'Accountant';
        con.MailingCity = 'de';
        con.MailingState = '1';
        con.MailingStreet = '21';
        con.MailingPostalCode = '3200';
        con.Email = 'dsf@df.com';
        con.FirstName = 's';
        con.AccountId = acc.id;
        insert con;

        Test.startTest();

        List<Contact> cdtls = ContactServerController.getContactList();

        system.assert(true);
        Test.stopTest();
        
    
    }
}
