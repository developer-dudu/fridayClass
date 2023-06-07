account a = new account();
a.name = 'acc trigger 7';
insert a;

account a1 = new account();
a1.name = 'acc trigger 24';
insert a1;


list<account> listAcc = new list<account>();
for (Integer i = 0; i < 3; i++) {
    account ac = new account();
    ac.Name = 'test trigger acc ' + i;
    listAcc.add(ac);
}

insert listAcc;

list<account> listAcc = new list<account>();
for (Integer i = 0; i < 5; i++) {
    account ac = new account();
    ac.Name = 'test trigger acc ' + i;
    listAcc.add(ac);
}

insert listAcc;




Map<integer, string> map1 = new map<integer, string>{1=>'one', 2=> 'two'};
set<integer> allKeys = map1.keySet();
system.debug('all keys => ' + allKeys);