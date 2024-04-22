![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/5b805dfd-5825-4be5-8092-8252ade20a10)**App Details**
**Multiple-Child-Record-Creation**. 
In Salesforce, child record can be created from a parent record using various methods depending on the requirements and the relationship between the parent and child objects. Using the Salesforce Standart UI, only one record of the related child object can be created from a parent record page.
This component has a feature to create multiple child records on a single click of a button from the parent record page.

**Platform Salesforce Lightning Platform Framework**- LWC Available for - Lightning Record Page
**Initial Set Up**: Launch the App - CBL. On the app page, select the parent object and its related child object.

![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/adb24caa-3511-4c1e-9e8f-718bd6b2ba5f)

 
On clicking Next, modal window will open to select fields from the child object. Select the parent lookup field from the first dual box. Select the other fields from the second dual box. Click on Create. Follow the steps for each Parent - Child object as per the requirement. 

![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/5e8e8ee6-e0fa-4a07-8181-1c6d2f0b367b)

**PS:** Please select all the required fields for a child object.
Create a custom object
API Name : CustomFieldSet__c
Fields
![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/326cd7a7-3b39-474f-ab3e-47df545ddd4d)


After Initial Set up This component can be placed in any record page of an object in Salesforce. It is designed to capture multiple child record values and create all the records on single click. Example of this component placed in Account Record Page Component Screenshot

![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/657a92b6-24af-4d24-8f47-15b3e39f06a5)

On Clicking Create Records, select the child object for which the multiple records to be created.(Related Object will show all the child objects configured in the initial set up).

 ![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/3c3366d1-2221-4ec1-b864-6fec61648758)

For example, if Contact is selected,

![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/bfec3ea6-6dd7-4d08-a524-af8ff15c17fb)

On Clicking Next, it will show a datatable with the fields selected for the child object in the initial set up.

![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/f53508bb-adab-44f2-be66-c039417fce37)

 
By default, only 2 rows are displayed. If more rows are needed, then click on Add Rows.

![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/bb616764-0030-4c4f-84c1-d54e1cd93391)
 
After entering the values, click on Save and Create Records will be enabled. Click on Create Records button to save the records. After clicking the Create button , the records are created related to the Account from where the contact records are created.

![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/de6b9f57-2e97-4eb8-8b1e-cc4270276d71)
 
Click on Done.

![image](https://github.com/CBLStore/Create-MultipleChildRecords/assets/144254863/a8b75577-6e7d-4b61-a09e-7996fddd37da)

**Limitations**
1.	Required fields for a child object are not added automatically in the initial set up. Need to select the required fields manually.
2.	Lookup fields are not added to the list of fields in the initial set up, hence lookup fields cannot be used for multiple child creation.
   
**Enhancements**
All the limitations mentioned are part of future enhancements.
