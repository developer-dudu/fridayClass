public class ListDemo {
    public static void candidateList() {
        List<string> listc=new List<String>();
        System.debug('before : '+ listc);

        //add values or elements or items in list
        listc.add('ali');//0
        listc.add('ali');//1
        listc.add('hatice');//2
        listc.add('zeyd');//3
        listc.add('zeyd');//4
        listc.add('zeyd'); //5
        System.debug('after: '+listc);

    }
       //requirement: pass index number, it will return value at that index.
   public static string candidateList(integer i) {
        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');  //4
        system.debug('after : ' + listC);

        string returnValue = '';
        integer size = listC.size(); //5, max index => 4
        if(i >= 0 && i < size){
            returnValue = listC.get(i);
        } else {
            returnValue = 'No such value';
        }
        return returnValue;
   }

        public static void randomIntList(){
        List<Integer> l1= new List<Integer>();
        l1.add(23);//0
        l1.add(33);//1
        l1.add(13);//2
        l1.add(43);//3
        l1.add(53);//4
        system.debug('list of integer '+l1);

//how to get a value from an index
        //a. use .get(index) method
        Integer i3=l1.get(3); //value? 43
        //or
        Integer i33=l1[3];//value is 43

        System.debug('i3 is '+i3);
        System.debug('i33 is '+i33);

        Integer size = l1.size();//size methods returns us number of elements in a list.s
        System.debug('SIZE of l1 is '+size);//count like humans









    }
}