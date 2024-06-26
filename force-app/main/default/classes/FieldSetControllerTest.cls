/**
 * @description       : Test class for FieldSetController Apex class
 * @author            : Jeyalakshmi
 * @last modified on  : 26-06-2024
 * @last modified by  : Jeyalakshmi
**/
@isTest
public class FieldSetControllerTest {
    
    //Test method for getAllFields()
    @isTest
    static void testGetAllFields() {
        // Test data
        String childObjectApiName = 'Account'; // Replace with your desired object API name
        
        // Call the method under test
        List<String> fieldNames = FieldSetController.getAllFields(childObjectApiName);
        
        // Verify that the returned list is not null
        System.assertNotEquals(null, fieldNames);
        
        System.assertEquals(true, fieldNames.contains('Name'));
        System.assertEquals(true, fieldNames.contains('Industry'));
        
    }

    //Test method for getChildObjectLookupFields()
    @isTest
    static void testGetChildObjectLookupFields() {
        // Test data
        String childObjectName = 'Opportunity'; // Replace with your desired child object API name
        String parentObjectName = 'Account'; // Replace with your desired parent object API name
        
        // Call the method under test
        List<String> lookupFields = FieldSetController.getChildObjectLookupFields(childObjectName, parentObjectName);
        
        // Verify that the returned list is not null
        System.assertNotEquals(null, lookupFields);
        System.assertEquals(true, lookupFields.contains('AccountId'));
    }
    
    //Test method for getChildObjectLookupFields()
    @isTest
    static void createFieldSet() {
        // Test data
        String parentObjectName = 'Account'; // Replace with your desired parent object API name
        String objectApiName = 'Contact'; // Replace with your desired object API name
        List<String> lookUpField = new List<String>{'AccountId'}; // Replace with your desired lookup field API name
        List<String> fields = new List<String>{'FirstName', 'LastName'}; // Replace with your desired field API names
        
        // Call the method under test
        String message = FieldSetController.createFieldSet(parentObjectName, lookUpField, objectApiName, fields);
        
        // Example:
        System.assertEquals('Successfully created Custom Field Set Records', message);
    }
}
