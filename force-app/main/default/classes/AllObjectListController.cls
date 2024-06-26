/**
 * @description       : Retrieves all available objects. Retrieves all related child objects for a given parent object.
 * @author            : Jeyalakshmi
 * @last modified on  : 26-06-2024
 * @last modified by  : Jeyalakshmi
**/

//To fetch all the objects available in the org
public with sharing class AllObjectListController {
    
    @AuraEnabled(cacheable = true)
    public static List<String> getAllObjectNames() {
        List<String> objectNames = new List<String>();
        for(Schema.SObjectType objType : Schema.getGlobalDescribe().values()){   //Schema to get all the Objects

            Schema.DescribeSObjectResult objResult = objType.getDescribe();
            objectNames.add(objResult.getName()); //Get the name of the object
        }
        objectNames.sort(); // Sort all the object names

        return objectNames;
    }


    //To fetch Child Objects for the selected Parent Object
    @AuraEnabled(cacheable=true)
    public static List<String> getChildInfo(String parentObjectApiName) {
        Set<String> childObjectNamesSet = new Set<String>();

        Schema.DescribeSObjectResult parentDescribe = Schema.getGlobalDescribe().get(parentObjectApiName).getDescribe();

        //Get all the child object for the given parent object
        for (Schema.ChildRelationship childRelationship : parentDescribe.getChildRelationships()) {
            childObjectNamesSet.add(childRelationship.getChildSObject().getDescribe().getName());
        }
        
        List<String> childObjectNames = new List<String>(childObjectNamesSet);
        childObjectNames.sort(); //Sort the child object names.

        return childObjectNames;
    } 
    
}