List<Case> listCase = new list<case> ();
for (Integer i = 0; i < 205; i++) {
    case c= new case();
    c.Subject = 'There is a bug' +i;
    c.Description='Resolve it ';
    c.status ='New';
    c.Origin= 'Web';
    listCase.add(c);
    
}
insert listCase; //1 transaction

    







/*CaseTriggerHandler.countRecords = 200;
System.debug(CaseTriggerHandler.countRecords);

CaseTriggerHandler.countRecords += 5;
System.debug(CaseTriggerHandler.countRecords); */