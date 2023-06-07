Date today= Date.today();
Date fetih= Date.newInstance(1453, 4, 6);

Integer fark= fetih.monthsBetween(today);
Integer yiliBul= fark/12;
system.debug(yiliBul);

Boolean isBirthdateLeap= Date.isLeapYear(1991);
system.debug(isBirthdateLeap);


// Toplam ücreti hesaplayınız.
string bookPrice='$30.50';
string bagPrice='$70.99';
 string bookPrice2=bookPrice.remove('$');
 string bagPrice2=bagPrice.remove('$');
Decimal bookPrice1= Decimal.valueOf(bookPrice2);
Decimal bagPrice1=Decimal.valueOf(bagPrice2);

System.debug(bagPrice1+ bookPrice1);


//Bugünden 10 yıl 10 ay 10 gün önce kaç yaşındaydınız?
date dateToday = date.today();
date myAge = date.newInstance(1992, 3, 4);
date onYil = dateToday.addYears(-10).addMonths(-10).addDays(-10);
system.debug(onYil);
Integer myAgeOn = myAge.monthsBetween(onYil);
system.debug(myAgeOn/12);

//Ali nin yası Ahmetin yasının üç katından 5 eksiktir. Buna göre Ali'nin doğum tarihi hangi yıldır?Ahmet'in doğum tarihi 14.02.2010


date ahmetdate =date.newInstance(2010, 2, 14);
date datToday = date.today();
Integer ahmetdogum =ahmetdate.monthsBetween(datToday);
Integer yasibul =ahmetdogum/12;
system.debug(yasibul);
system.debug(yasibul*3-5);


