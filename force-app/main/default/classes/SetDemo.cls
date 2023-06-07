public  class SetDemo {
    public static void citySet() {
        //set of string
        Set<String> cities= new Set<String>();
        cities.add('Cancun');
        cities.add('Paris');
        cities.add('Tokyo');
        cities.add('New Delhi');
        cities.add('NY');
        cities.add('Antalya');
        cities.add('Cancun');
        cities.add('CANCUN');
    //it prints in alphabetic order.
        System.debug('citiess set' +cities);

    }

    public static void number(){
        //set of integer
        set<Integer> numbers=new Set<Integer>();
        numbers.add(23);
        numbers.add(123);
        numbers.add(23);
        numbers.add(2);
        numbers.add(3);
        numbers.add(99);
        numbers.add(2347589);
        system.debug('numbers set '+numbers);
    }

    public static void setFromList(){
        //we will create set from list 
        list<Integer> l1 = new list<Integer>{ 5,10,40,88, 100,1991};
        system.debug ('l1==> '+ l1);

        Set<Integer> s1 =new Set<Integer>();
         s1.addAll(l1);
         System.debug( 's1--> '+ s1);
    }
    public static Set<Integer> setFromList(List<Integer> l1){
        Set<Integer> s1 =new Set<Integer>();
        s1.addAll(l1);
        return s1;
    }

public static void setInteger2 (){
    set<integer> setInt =new set<integer> {1,2,3,6,16,8,9,10};
    //print 6,9,10
    for (Integer i : setInt){
        System.debug (i+5);

    }
}


}

