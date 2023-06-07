
@isTest
public class DepartmentTriggerHandlerTest {
    @isTest
    private static void testFuture1() {
        list<department__c> listDep = new list<department__c>{
        new department__c (name__c= 'Future'),
        new department__c (name__c= 'Present'),
        new department__c (name__c= 'Past')
        
    };
    test.startTest();
    insert listDep;
    test.stopTest();

    List<Employee__c> allEmps =[select id, first_name__c from employee__c];

    assert.areEqual(3, allEmps.size());
} 
}