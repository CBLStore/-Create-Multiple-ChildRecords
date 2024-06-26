/**
 * @description       : Apex Test Class for mulChildRecorCrController
 * @author            : Jeyalakshmi
 * @last modified on  : 26-06-2024
 * @last modified by  : Jeyalakshmi
**/
@isTest
public class mulChildRecorCrControllerTest {
    // Test Set up to create test data
    @testSetup
    static void setup() {
        // Create a parent object and related custom field sets for testing
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        List<CustomFieldSet__c> customFieldSets = new List<CustomFieldSet__c>();

        customFieldSets.add(new CustomFieldSet__c(
            ParentObjectName__c = 'Account',
            ObjectName__c = 'Contact',
            ObjFieldName__c = 'AccountId',
            IsParLookUpField__c = 'Yes'
        ));

        customFieldSets.add(new CustomFieldSet__c(
            ParentObjectName__c = 'Account',
            ObjectName__c = 'Contact',
            ObjFieldName__c = 'FirstName',
            IsParLookUpField__c = 'No'
        ));

        customFieldSets.add(new CustomFieldSet__c(
            ParentObjectName__c = 'Account',
            ObjectName__c = 'Contact',
            ObjFieldName__c = 'LastName',
            IsParLookUpField__c = 'No'
        ));

        insert customFieldSets;
    }

    //Test Method for getChildObjectList()
    @isTest
    static void testGetChildObjectList() {
        Test.startTest();
        List<String> childObjectNames = mulChildRecorCrController.getChildObjectList('Account');
        Test.stopTest();

        System.assertNotEquals(null, childObjectNames);
        System.assertEquals(1, childObjectNames.size());
        System.assertEquals('Contact', childObjectNames[0]);
    }

    //Test Method for getFieldNames()
    @isTest
    static void testGetFieldNames() {
        Test.startTest();
        List<Map<String, String>> fieldNames = mulChildRecorCrController.getFieldNames('Account', 'Contact');
        Test.stopTest();

        System.assertNotEquals(null, fieldNames);
        System.assertEquals(2, fieldNames.size());

        Set<String> expectedFieldNames = new Set<String>{'FirstName', 'LastName'};
        for (Map<String, String> fieldMap : fieldNames) {
            System.assertEquals(1, fieldMap.size());
            String fieldName = fieldMap.keySet().iterator().next();
            System.assert(expectedFieldNames.contains(fieldName));
        }
    }

    //Test Method for createChildRecords()
    @isTest
    static void testCreateChildRecords() {
        Account testAccount = [SELECT Id FROM Account WHERE Name = 'Test Account' LIMIT 1];

        List<Map<String, String>> childRecords = new List<Map<String, String>>();
        Map<String, String> record1 = new Map<String, String>();
        record1.put('FirstName', 'Test');
        record1.put('LastName', 'User1');
        childRecords.add(record1);

        Map<String, String> record2 = new Map<String, String>();
        record2.put('FirstName', 'Sample');
        record2.put('LastName', 'User2');
        childRecords.add(record2);

        Test.startTest();
        List<SObject> insertedRecords = mulChildRecorCrController.createChildRecords(childRecords, 'Account', 'Contact', testAccount.Id);
        Test.stopTest();

        System.assertNotEquals(null, insertedRecords);
        System.assertEquals(2, insertedRecords.size());

        for (SObject record : insertedRecords) {
            System.assert(record.get('AccountId') == testAccount.Id);
        }

        // Verify the records were actually inserted
        List<Contact> insertedContacts = [SELECT FirstName, LastName, AccountId FROM Contact WHERE AccountId = :testAccount.Id];
        System.assertEquals(2, insertedContacts.size());
    }
}