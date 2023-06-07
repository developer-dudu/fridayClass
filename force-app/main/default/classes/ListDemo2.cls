public class ListDemo2 {
    public static boolean candidateList(string str){
        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');  //4
        system.debug('after : ' + listC);
        //contains is case sensitive for string
        boolean check = listC.contains(str);
        return check;
   }

public static void friendList(){
    List<String> fl= new List<String>{'23','ali','Vitap','omer','bilal','veli','Abdul','5','145'};
    System.debug ('before : '+fl);

    fl.sort();
    System.debug('after sorting: '+fl);
}
public static void iterateLIst1(){
    List<Integer> l1 = new List<Integer>();
    l1.add(17);//0
    l1.add(15);//1
    l1.add(3);//2
    l1.add(99);//3
    l1.add(10);//4
    l1.add(190);//5

    for( Integer eachNumber: l1){
        System.debug(eachNumber);
    }

    for (Integer eachNumber2: l1){
        
        System.debug('5 x '+ eachNumber2 + '= '+ (eachNumber2*5));
    }
}

 //add all the elements in l1 list, and return the summation.
 public static integer add(list<integer> l1) {
    integer sum = 0;
    
    for (integer num : l1) {
        system.debug('sum inside for : ' + sum);
        sum += num; //sum = sum + num
    }

    return sum;
}
    private static integer add (Integer a, integer b){
        return a+b;
    }
    private static decimal add (decimal a, decimal b){
        return a+b;
    }
    public static void iterateListString1() {
        List<string> listC = new list<string>();
        //add values or elements or items in list
        listC.add('Fatih');  //0
        listC.add('Sultan'); //1
        listC.add('Mehmet'); 
        listC.add('Yavuz');  
        listC.add('Sultan');  
        listC.add('Selim');
        
        //print each element of this list<string> one by one along with its length
            
        for (string eachStr : listC) {
            integer len = eachStr.length();
            system.debug(eachStr + ' - ' + len );
            //
        }


}
  //concate all elements in list by || and return final string
  public static string add(list<string> ls){
    string finalString = '';
    for (string eachStr : ls) {
        system.debug('final str inside for ==> ' + finalString);
        finalString = finalString + eachStr + ' bey,';
    }
    //finalString = finalString.removeEnd(' || ');
    return finalString;
}
public static void iterateListString99(){
    list<string> list9 = new list<string>{'class', 'object', 'methods', 'constructor', 'getter setter', 'list'};
    system.debug(listDemo2.add(list9));
    //example:
        //class
        //class - 5
        //object
        //object - 6
    list<string> list99 = new list<string>();   
    //we are iterating list9.
    //inside for each loop of list9, we cannot modify(add or remove elements from) list9. 
    //solution?
        //create another empty list and add elements in the new list
    for (string eachTopic : list9) {
        string temp = eachTopic + ' - ' + eachTopic.length();
        list99.add(eachTopic);
        list99.add(temp);
    }
    system.debug(list99);
}
    
}