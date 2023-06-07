@isTest
public class DmlDemo16Test {
    @isTest
   private static void testDml1() {
        //call method
        DmlDemo16.dmlInsert1(); 
            //IT does not create any record in org.
                //it creates record in its own testing world.
        //validate by checking if record is created.
        list<account> acc = [select id, name from account];
        Assert.areEqual('Salesforce', acc[0].Name);
        Assert.areEqual(1, acc.size());

        //Account acc= [select id, name from account limit 1];
        //Assert.areEqual('Salesforce' +acc.Name);

   }
   @isTest
   private static void testdmlInsert2 (){
//call method
    DmlDemo16.dmlInsert2();
//assert
    List<department__c> listdep = [SELECT Name__c,Short_Code__c from department__c];
    assert.areEqual(1, listdep.size());
    assert.areEqual('Human Resource', listdep[0].Name__c);
    assert.areNotEqual('IT', listdep[0].Name__c); //it will pass the test only if expected is not equal to acctual.

    

   /* @isTest
    public static void testDmlInsert2() {
        DmlDemo16.dmlInsert2();
        
        // Query the record and assert the expected field values
        List<Department__c> departments = [SELECT Name__c, Short_Code__c FROM Department__c];
        assert.areEqual(1, departments.size(), 'One record should be inserted.');
        Department__c insertedDepartment = departments[0];
        assert.areEqual('Human Resource', insertedDepartment.Name__c, 'Name__c should be "Human Resource".');
        assert.areEqual('HR', insertedDepartment.Short_Code__c, 'Short_Code__c should be "HR".');
    }
*/

   }

   //has full limits
   @isTest
private static void testDML3(){
    //we do we have any records. so first prepare data

    //1. prepare data.
    account a = new account (name = 'test ac');
    insert a;

    //2 call method
    DmlDemo16.dmlUpdate2();
    //3.assert


    Account acc = [select id, name from Account order by CreatedDate desc limit 1];
    assert.areEqual('Salesforce Inc.', acc.Name);
}

//has full governor limits
@isTest
private static void testDML4(){
    //we must create one department record first.
    //prepare DATA
    //Create new instance
department__c d= new department__c();

//set fields 
d.Name__c='Human Resource';
d.Short_Code__c='HR';

//insert statement
insert d;

//call method
DmlDemo16.employeeDepartment();

employee__c emp = [select id, first_name__c, last_name__c, department__c from Employee__c where department__c = :d.id];

assert.areEqual('Don', emp.first_name__c);


}




}