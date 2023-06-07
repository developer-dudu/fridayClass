
trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {


    if (Trigger.isBefore && Trigger.isUpdate) {
        //call handler method to validate contact update
        ContactTriggerHandler.validate1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        ContactTriggerHandler.validate2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    
   
   
   
   
   
   
   
   
   
    /*if (Trigger.isBefore) {
        System.debug('Contact Before Trigger');


        if (Trigger.isInsert) {
            System.debug('Contact Before insert Trigger');

            
        }
        if (Trigger.isUpdate) {
            System.debug('Contact Before update Trigger');
            
        }
        
    }
    if (Trigger.isAfter) {
        System.debug('Contact After Trigger');


        if (Trigger.isInsert) {
            System.debug('Contact After insert Trigger');

            
        }
        if (Trigger.isUpdate) {
            System.debug('Contact after update Trigger');
            
        }
        if (trigger.) {
            
        }
    

}*/
}
