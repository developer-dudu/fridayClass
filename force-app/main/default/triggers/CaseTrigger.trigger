trigger CaseTrigger on Case (before insert) {
    System.debug('before insert case trigger');
    //number of records?
   // System.debug('number of records processed: ' +Trigger.new.size()); //context variable: (trigger.new.size())
            //static variable value satysnthrought out the transaction
    CaseTriggerHandler.countRecords += Trigger.size;
//trigger.size ==trigger.new.size();
//trigger.size ==trigger.old.size();

    System.debug('number of records processed: '+CaseTriggerHandler.countRecords);
    CaseTriggerHandler.countTrigger ++;
    System.debug('total number trigger executed: '+CaseTriggerHandler.countTrigger);



}