
//---------



SetDemo.setFromList();

list<integer> l1 = new list<integer>{10,15,77,55,77,10,77,55,15};
set<integer> s = SetDemo.setFromList(l1);
system.debug('s is ' + s);

list<integer> l22 = new list<integer>{8,7,9,10,10,8,7,9};
set<integer> s22 = SetDemo.setFromList(l22);
system.debug('s22 is ' + s22);

SetDemo.number();

SetDemo.citySet();