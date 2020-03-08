public class ContactServerController {
     
    @AuraEnabled
    Public static List<Contact> getContactList(){
        //get all contact list
        List<Contact> conList = [SELECT Id, Name, Account.Name, Account.description, Account.Createddate,Primary__c FROM Contact LIMIT 10];
        return conList;
    }
}