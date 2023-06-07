ListDemo2.iterateLIst1();





boolean check1 = ListDemo2.candidateList('Steve');
system.debug('check 1 is ' + check1);

boolean checkl1l2 = l1.equals(l2);
system.debug('l1 equals l2? ' + checkl1l2);

list<integer> l11 = new list<integer>();
l11.add(77);//0
l11.add(15);//1
l11.add(21);//2
l11.add(99);//3
l11.add(77);//4
l11.add(77);//5
system.debug('l11 is ' + l11);

list<integer> l22 = new list<integer>();
l22.addAll(l11);
l22.add(15);
system.debug('ls2 is ' + l22);

if (!l22.isEmpty()) {
    system.debug(l22);
} else {
    system.debug('nothing');
}