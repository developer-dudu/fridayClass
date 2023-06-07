public class AccountUpdateHelper {
    
   
    @InvocableMethod
    public static void updateAccountWebsite(List<id> accIds) {
         //get all account records for these IDS
         list<account> listAcc = [select id, website from account where id in :accIds];

         for (Account eachAcc : listAcc) {
            eachAcc.Website='www.Google.com';
            
         }
         update listAcc;
        }

    }
