public  class DepartmentTriggerHandler {
    @future
    public static void createDefaultEmpFuture(set<id> depIds) {

//create employees for all depIds
List<employee__c> newEmployees= new List<employee__c>();
        for (Id eachId : depIds) {
            employee__c e= new employee__C(first_name__c = 'Pamuk', department__c = eachId);
            newEmployees.add(e);
            
        }
        insert newEmployees;
        
    }
}
