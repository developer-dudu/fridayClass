@isTest

public class AccountsBatchTest{
    

@isTest
private static void testBatch1() {
    //prepare Data

list<account> listAcc = new list<account>();

        for (Integer i = 0; i < 955; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            //DO NOT WRITE DML inside LOOPS. EVER. NOT Allowed. 
            //insert ac;

            listAcc.add(ac);
        }

        insert listAcc;//155 record. Number of dmls? 1.

        test.startTest();
        Database.executeBatch(new AccountsBatch(), 2000);
        test.stopTest();

        //assert
        List<Account> allAcc = [select id, Description from Account];
        for (account eachAcc : allAcc) {
            assert.isTrue(eachAcc.description.containsIgnoreCase('batch'));
            
        }
    }
}