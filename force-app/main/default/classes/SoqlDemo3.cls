public class SoqlDemo3 {
    public static void childToParentQuery() {
        //contact is child
        //account is parent

        string filter = 'energy';
        List<Contact> listCon =[SELECT Id, Name, account.name, account.industry FROM Contact where account.industry = :filter];

        for (Contact eachContact : listCon) {
            System.debug('name is '+eachContact.name);
            System.debug('ac name is '+eachContact.account.Name+ ' acc industry is '+eachContact.Account.Industry);
            System.debug('**********');
            
        }
    }
          //Opportunities to Accounts
    public static void childToParentSOQL1() {
        list<Opportunity> listOPP = [select id, name, amount, closedate, account.annualrevenue, account.name from opportunity];
        //print opp name, opp amount, acc name, acc revenue

        for (Opportunity eachOpp : listOPP) {
            system.debug('opp name and amount is ' + eachOpp.Name + ' - ' + eachOpp.Amount);
            system.debug('acc name and its revenue is ' + eachOpp.account.Name + ' - ' + eachOpp.Account.AnnualRevenue);
            system.debug('-----');
        }
    }

    

    public static void parentToChildQuery(){
        list<department__c> listDept = [select id, name, name__c, (select first_name__c, country__c, salary__c from Employees__r) from department__c];

        decimal totalSalary = 0;

        for (department__C eachDept : listdept) {
            System.debug('dept name is '+eachDept.name__c);

            list<Employee__c> listEmp= eachDept.Employees__r;

            decimal deptSalary =0;

            for (employee__c eachEmp  : listEmp) {

                
                System.debug('----emp name is  '+eachEmp.first_name__c);
                System.debug('----emp salary and count is '+eachEmp.salary__c +'-'+ eachEmp.country__c);
                if ( eachEmp.salary__c != null){
                    deptSalary += eachEmp.salary__c;
                    totalSalary += eachEmp.salary__c;
                }
                
            }
            System.debug('******total department salary is '+deptSalary);
            
            
        }

        List<Integer> l1 = new List<Integer>{10,30,590,1000};

        Integer total=0;
        for (integer  i : l1) {
            total+=i;
            
        }
    }
}