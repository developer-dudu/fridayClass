public class SoqlDemo {
    public static void accountSOQL() {
        list<Account> listAcc = [select id, name, phone from account];
        System.debug ('listAcc: '+listAcc);

        List<Contact> listCon =[ select id,name,phone from contact];
        System.debug('listCon: '+listCon);
    }
    
      
    public static void accountSOQLOneRecord(){
        account acc = [select id, name, phone, createddate from account order by createddate desc limit 1];
        system.debug('acc record ' + acc);

        string accountName = acc.Name;
        //use dot operation to get any field value
         System.debug ('acc name is '+ acc.name);
         System.debug ('phone is '+ acc.Phone);
         System.debug ('id is '+ acc.Id);
    }
    public static void accountSOQL_3() {
        list<account> listAcc = [select id, name, accountnumber, phone from account order by createddate desc];

        for (account eachAcc : listAcc) {
            system.debug('each account: ' + eachAcc);
            system.debug('acc name is ' + eachacc.Name);
            system.debug('acc phone is ' + eachacc.phone);
            system.debug('acc number is ' + eachacc.accountnumber);
            system.debug('------');
        }
    }

}
