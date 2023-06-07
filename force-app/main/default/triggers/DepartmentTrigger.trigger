trigger DepartmentTrigger on Department__c (before insert , after insert) {
if (Trigger.isAfter && Trigger.isInsert) {
    DepartmentTriggerHandler.createDefaultEmpFuture(Trigger.newMap.keyset());
    //trigger
    //department handler
    //insert employee
    //employee trigger execution
    //calling another future method
    
}
}