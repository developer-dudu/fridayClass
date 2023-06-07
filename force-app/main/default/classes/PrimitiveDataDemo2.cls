public class PrimitiveDataDemo2 {
    public void printNewDate() {
        system.debug ('create new date instance');
        

        date newDate= date.newInstance(1992, 3, 9);
        system.debug('new date is '+ newDate);
         date newDate2= date.newInstance(2023, 1, 15);
         system.debug('new date2 is'+ newDate2);
        
         date todayDate = date.today();
        //today's
            // escape character -> \ -> it will ignore the next character
        system.debug('today\'s date is ' + todayDate);
    }
    public void printNewTime(){
        Time myTime= Time.newInstance(18, 20, 2, 30);
        system.debug('my time1 '+ myTime);

        Time myTime2= time.newInstance(25, 10, 30, 100);
        system.debug('my time 2==> '+ myTime2);
        
    }
    public void printNewDateTime(){
        //method name is 'newInstance'
            //different parameters
        date    newDate = date.newInstance(1992, 6, 3);
        time myTime1 = time.newInstance(10, 15, 20, 500);
        
        //1. create new DATETIME using Date and Time
        Datetime dt1 = datetime.newInstance(newDate, myTime1);
        system.debug(dt1);

        //2. create new DATETIME using  year, month, day
        datetime dt2 = Datetime.newInstance(2020, 5, 12); //time will be midnight
        system.debug('dt2 is ' + dt2);

         //3. create new DATETIME using year, month, day, hour, minute, second
         datetime dt3 = Datetime.newInstance(2005, 1, 18, 8, 30, 55);//will create as per user timezone.
        system.debug('dt3 ' + dt3);//print as per gmt

        //6. current datetime
        datetime dt6 = Datetime.now();
        system.debug('current datetime : ' + dt6);

        //4. new datetime using long variable
        datetime dt4 = datetime.newInstance(0);
        system.debug('dt4 is ' + dt4);//which datetime it will print?

        long longtime = 9198784512113l;
        datetime dt44 = datetime.newInstance(longtime);
        System.debug('dt44 is ' + dt44);

        //5. create new datetime as GMT
        datetime dt5 = datetime.newInstanceGmt(2023, 4, 1, 10, 15, 30);//this will create new datetime as per GMT
        System.debug('dt5 is ' + dt5);
    }

        



    
   
    
}