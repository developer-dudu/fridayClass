
@isTest
public class AccountsQueueableExampleTest {
@isTest
private static void testQuable1() {
    List<Account> accounts = new List<Account>();
    for (Integer i = 0; i < 500; i++) {
        Account acc = new Account(Name = 'Test Account ' + i);
        accounts.add(acc);
    }
    insert accounts;
    test.startTest();
    AccountsQueueableExample aq= new AccountsQueueableExample();
    aq.listAcc = accounts;

    system.enqueueJob(aq);
    test.stopTest();
     List<Account> listAcc =[select id,name from Account where name like '% --SI'];
     Assert.areEqual(500, listAcc.size());

}
    
}
    
