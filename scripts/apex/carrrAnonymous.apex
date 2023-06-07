carrr jeep= new carrr();
jeep.details();

//System.debug (new carrr());
carrr jeep2=new carrr (2020);
jeep2.details();

carrr bmw3 = new carrr('ABC10001', 'BMW X3', 'Black', 2021, 40000.00);
bmw3.details();


carrr ford = new carrr('ABC10002', 'Ford Mustang', 'Red', 2012, 30000.00);
ford.details();

carrr tesla = new carrr ('ABC110003','tesla model x', 'silver', 2020,65000);
string teslaName = tesla.name;//this is private
string teslaColor = tesla.color;
system.debug(teslaName + ' color is ' + teslaColor);
