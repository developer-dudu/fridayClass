public  class MapDemoAgain {

   public static void printMap1(){

map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        
        system.debug('student map => ' + map1);

        //we cannot corresponding value from ONE key .use-> .get(key)
        //we cannot get key from VALUE
         Integer rollNo=1011;
         string s11 =map1.get(rollNo);
         System.debug(rollNo + 'student name is  '+ s11);

         Integer rollNo2=1055;
                 //check if rollNo2 is present in map and print value if present, else print NOT PRESENT
            //containsKey -> returns true or false
        if (map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + ' student name is ' + map1.get(rollNo2));
        } else {
            system.debug('Not present in map');
        }
    }

    public static void printMap2() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        System.debug('map1=> '+ map1);

        //how to get all key ?
        //keySet() method --> set<key_datatype>

        Set<Integer> allKeys = map1.keySet();
        System.debug('all roll numbers are '+allKeys);
        System.debug('numbe rof roll numbers are '+allKeys.size());

         //we want to get all student names.
        //values() method -> list<value_datatype>

       List<String> allValues = map1.values();
        System.debug('all students names are '+allValues);

        
    }
    public static void printMap3() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

         //putAll -> 
         map<integer, string> map2 = new map<integer, string>();
         map2.putAll(map1);
         system.debug(map2);

    }
    public static void printMap4() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        Set<Integer> allRollNo = map1.keySet();
        for (integer  rollNo : allRollNo) {
            String s11 = map1.get(rollNo);

            System.debug ('roll number is  '+ rollNo+ 'student name is '+s11);
            
        }

}
            public static void printMap5(){
                map<string, list<string>> map99 = new map<string, list<string>>();
                list<string> l1 = new list<string> {'Abdul','Aydin'};
                list<string> l2 = new list<string> {'Seyit','Kadir'};
                list<string> l3 = new list<string> {'Betul','Tuba'};

                map99.put('IT', l1);
                map99.put('Sales', l2);
                map99.put('Service', l3);
                System.debug(map99);

                List<List<String>> listValue = map99.values();
                set<string> allTeams= map99.keySet();
                for(string eachTeam : allTeams){
                    list<string> eachTeamCandidate = map99.get(eachTeam);

                    System.debug ('team name: '+ eachTeam);
                    System.debug ('-->Team members==> '+eachTeam);

                    for (string eachMember : eachTeamCandidate){
                        System.debug(eachMember+ ' is in '+ eachTeam);
                    }
                }


              



            }





}