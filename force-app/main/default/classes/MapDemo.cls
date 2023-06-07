public  class MapDemo {
    public static void MapExample() {
        // key is string
        //value is integer
        //data type is integer
        Map<String,Integer> map1 = new Map<String,Integer>();

        //we want to put add key-value pair.
        //put means add

        map1.put('one',101);
        map1.put('two',11);
        map1.put('three',2201);
        map1.put('four',202);
        map1.put('one',10);
        map1.put('two',1010);
        map1.put('four',202);
        map1.put('eight',202);


        system.debug(map1);
          //VALID maps below
        map<integer, string> map2;//valid

        //boolean as key
        map<boolean, string> map3;//valid. 3 key-value pair possible in this map.

        map<date, string> map4;

        map<string, list<string>> map5;//is this valid?
        //country -> states
        //key is string -> value is list<string>
    }


    }
