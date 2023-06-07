public class DmlDemo {
    public static void dmlDInsert1() {
        //creat new account record 
        //1. creat new instance of account(sObject)
        account acc = new account();

        //2. set field names
        acc.Name = 'Salesforce';
        
        //3.insert statement

        insert acc; //will creat  record in orgs
        System.debug(acc);


    }
        //create new record for department custom object
        public static void dmlInsert2() {
            //create new instance.
            Department__c d = new Department__c();
    
            //set fields
            d.Name__c = 'Human Resource';
            d.Short_Code__c = 'HR';
    
            //insert statement
            insert d;
        }

        public static void dmlInsert3 (){
            
            Employee__c emp = new Employee__c();
            emp.First_name__c = 'Deli';
            emp.last_name__c ='Yurek';
            emp.country__c ='Turkiye';
            emp.joindate__c =date.newInstance(1999,03,10);
            emp.email__c ='delideli@gmail.com';
            emp.salary__c =200000;

            insert emp ;
        }

        public static void dmlUpdate1() {
            account acc = new account();
            acc.name = 'Softinnovas';
            system.debug('before insert DML: ' + acc);
            insert acc;
            system.debug('after dml : ' + acc);
    
            //ID is mandatory if we want to update record
            acc.name = 'Softinnovas Inc.';
            update acc;//update statement.
        }

            //update existing record from the org.
    public static void dmlUpdate2() {
        //soql
        account acc = [select id, name from account order by CreatedDate desc limit 1];

        //update
        acc.Name = 'Salesforce Inc.';

        update acc;
    }
    //get one employee of USA , and update country to canada 
    public static void dmlUpdate3(){
        Employee__c emp = [select id, country__c, first_name__c from employee__c where country__c = 'USA' LIMIT 1];

        emp.country__c= 'Mexico';
        emp.First_name__c= 'Alejandro';
        emp.last_name__c ='Gonzalez' ;

        System.debug('last name is '+emp.last_name__c);
        update emp ;
    }
        //DOn't Try. Danger Ahead. Wrong way. 
        public static void dmlInsertWRONG() {
            //creating contact and relating ONE account
            contact c = new contact();
            c.LastName = 'wrong way';
            //hard coded ID. NOT TO DO. Illegal. Not professional.
            c.accountid = '001Dp000002QlLVIA0';//we should NEVER do this.
    
            insert c;
        }
        
        //to establish relation between two records, we MUST provide parent record ID in child field name.
        public static void dmlInsert4() {
            //req:create contact record for latest created account record
    
            account acc = [select id, name from account order by createddate desc limit 1];
    
            string accountname = acc.name;
            id accountid = acc.id;
    
            //create contact
            contact c = new contact();
            c.LastName = 'Biden';
            c.accountid = accountid;
            insert c;
        }


   
}