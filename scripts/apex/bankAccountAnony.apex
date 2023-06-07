BankAccount b1 = new BankAccount();
b1.accountNumber='5653278568347';
b1.printDetails();


//constructor
system.debug('===');


BankAccount b2 = new bankaccount();//new instace of the class, object.
b2.accountNumber = '9999888777';
//b1.balance = 2500;
b2.setBalance(8500);
b2.printDetails();

BankAccount b3 =  new BankAccount('44455566', 'Jane', 5500, 'BOA');
b3.setBalance(1000);
b3.deposit(905);
b3.deposit(86);
b3.printDetails();