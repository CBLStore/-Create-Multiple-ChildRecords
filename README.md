**App Details**

Multiple-Child-Record-Creation. In Salesforce, child record can be created from a parent record using various methods depending on the requirements and the relationship between the parent and child objects. Using the Salesforce Standart UI, only one record of the related child object can be created from a parent record page.

This component has a feature to create multiple child records on a single click of a button from the parent record page.

**Platform** 
Salesforce Lightning Platform Framework - LWC Available for - Lightning Record Page

**Initial Set Up:**
Launch the App - CBL. On the app page, select the parent object and its related child object.  

![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/04acbbcc-4f78-42a3-bfb1-b1aa2ef67980)

On clicking Next, modal window will open to select fields from the child object. Select the parent lookup field from the first dual box. Select the other fields from the second dual box. Click on Create.
Follow the steps for each Parent - Child object as per the requirement.
![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/42975451-44e5-4463-9447-df0f2218a0cd)

**PS:**
Please select all the required fields for a child object.

**After Initial Set up**
This component can be placed in any record page of an object in Salesforce. It is designed to capture multiple child record values and create all the records on single click.
Example of this component placed in Account Record Page
Component Screenshot

![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/d2d86355-8d08-405d-9d59-99741fd2b87d)

On Clicking Create Records, select the child object for which the multiple records to be created.(Related Object will show all the child objects configured in the initial set up).

![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/b752463c-9244-4d39-b96c-ace20e95b661)

For example, if Contact is selected, 

![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/c2c697c7-baf1-4b59-8d9a-7dfe35c2ea42)

On Clicking Next, it will show a datatable with the fields selected for the child object in the initial set up.

![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/4c7cdd29-3eb3-4634-abc7-a8b5c48af481)

By default, only 2 rows are displayed. If more rows are needed, then click on Add Rows. 

![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/8ffe958d-6c61-461e-ad74-cd655a454475)

After entering the values, click on Save and Create Records will be enabled. Click on Create Records button to save the records. After clicking the Create button , the records are created related to the Account from where the contact records are created.

![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/235ca5a0-796d-411e-b66d-da649add5041)

Click on Done. 

![image](https://github.com/CBLStore/MutipleChildRecordCreation/assets/144254863/8a8f6178-02ff-412b-9f5a-26511690a325)

**Limitations**
1. Required fields for a child object are not added automatically in the initial set up. Need to select the required fields manually.
2. Lookup fields are not added to the list of fields in the initial set up, hence lookup fields cannot be used for multiple child creation.

**Enhancements**

All the limitations mentioned are part of future enhancements.








