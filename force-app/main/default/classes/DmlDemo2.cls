public  class DmlDemo2 {
    //Create one employee for latest created department

    public static void employeeDepartment() {
    //writebSOQL to fetch latest created department (only1 )

        Department__c dept = [select id, name__c, createddate from department__c order by createddate desc limit 1];
    //creat employee for dept


    //creat new instance
    Employee__c emp1 = new Employee__c();
    //set field names
    emp1.first_name__c = 'Dr';
    emp1.last_name__c = 'Dudu';
    //set date
    emp1.joinDate__c = date.newInstance(2022, 03, 01);
    //emp1.isHuman__c = true;
    emp1.salary__c = 700000;
    emp1.country__c= 'USA';
    emp1.department__c = dept.id; //(relationship field is department__c)

    insert emp1;

    }
    //strictly DON'T DO THIS.
    public static void dmlInsertDemo1() {
        account ac = new account();
        ac.Name = 'test acc 1';
        insert ac;

        account ac1 = new account();
        ac1.Name = 'test acc 2';
        insert ac1;

    }
     //strictly DON'T DO THIS.
    public static void dmlInsertDemo2() {
        account ac = new account();
        ac.Name = 'test acc 3';
        insert ac;

        account ac1 = new account();
        ac1.Name = 'test acc 4';
        insert ac1;

    }

     public static void dmlInsertDemoWrong() {

        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            //DO NOT WRITE DML inside LOOPS. EVER. NOT Allowed. 
            insert ac;
        }

        
    }

    //DO this at home, office, cafe, park, car
    public static void dmlInsertDemoRight1() {

        list<account> listAcc = new list<account>();

        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            //DO NOT WRITE DML inside LOOPS. EVER. NOT Allowed. 
            //insert ac;

            listAcc.add(ac);
        }

        insert listAcc;//155 record. Number of dmls? 1.
        
    }
    public static void soqlWrongWay() {
        for (Integer i = 0; i < 102; i++) {
            //DO NOT WRITE SOQL inside LOOPS.
            account ac = [select id from account limit 1];
            system.debug(ac);
        }
    }


    //how NOT to update all the accounts in the org.
    public static void dmlUpdateWrong() {
        list<account> allAccounts = [select id, name from account];
        for (account eachAcc : allaccounts) {
            eachAcc.name = eachAcc.name + ' v5';
            update eachAcc;//dml inside LOOP. NOt good, not allowed. don't do it. don't even think about it.
        }
    }

    public static void dmlBulkUpdateRight1() {
        
        list<account> allAccounts = [select id, name from account where createddate = TODAY];

        for (account eachAcc : allAccounts) {
            eachAcc.Rating = 'Hot';
            //update eachacc; this is WRONG>
        }

        update allAccounts;

    }
    public static void dmlBulUpdateRight2() {
        list<account> allAccounts = [select id, name, Active__c from account];

        //allAccounts - 500 records
            //400 record have active != yes
                //description of account to 'inactive' if active is not 'yes'
                //update 400 records only.
        
        list<account> updateAccounts = new list<account>();

        for (Account eachAcc : allAccounts) {
            //check if active is NOT yes.
            if (eachAcc.active__c != 'Yes') {
                eachAcc.Description = 'inactive it is';
                updateAccounts.add(eachAcc);
            }
        }

        //update allAccounts;
        
        update updateAccounts;//number of rows. 400. 

    }
}
