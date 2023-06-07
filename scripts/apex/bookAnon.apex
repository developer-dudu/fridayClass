//Book b1= new Book(); will this work .NO!
Book b1 = new book ('1984','George Orwel', 19.99);//will this work .no!
b1.printDetails();

string b1title = b1.getTitle();
System.debug ('b1 title is '+ b1title);
System.debug('b1 price is '+ b1.getPrice());

b1.setPrice(14.99);
b1.setAuthor('F.Scott');
b1.printDetails();

system.debug('---');


Book b2 = new book('Gun olur asra bedel', 'cengiz aytmatov', 21.99);
b2.printDetails();