trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
        SalesforceProjectTriggerHandler.updateDescFuture(Trigger.newMap.keySet());
        //call handler method here to create new ticket.
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        //validate
        //SPTriggerHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}