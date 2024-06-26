/**
 * @description       : Test Class for AllObjectListController Class
 * @author            : Jeyalakshmi
 * @last modified on  : 26-06-2024
 * @last modified by  : Jeyalakshmi
**/
//Test Method for getAllObjectNames() 
@isTest
public class AllObjectListControllerTest {
    
    @isTest
    static void testGetAllObjectNames() {
        // Call the method under test
        List<String> objectNames = AllObjectListController.getAllObjectNames();
        
        // Verify that the returned list is not null
        System.assertNotEquals(null, objectNames);
        
        System.assertEquals(true, objectNames.contains('Account'));
        System.assertEquals(true, objectNames.contains('Contact'));
    }
    
    //Test Method for getChildInfo()
    @isTest
    static void testGetChildInfo() {
        // Call the method under test with a sample parent object API name
        String parentObjectApiName = 'Account';
        List<String> childObjectNames = AllObjectListController.getChildInfo(parentObjectApiName);
        
        // Verify that the returned list is not null
        System.assertNotEquals(null, childObjectNames);
        
        System.assertEquals(true, childObjectNames.contains('Opportunity'));
        System.assertEquals(true, childObjectNames.contains('Case'));
    }
}
