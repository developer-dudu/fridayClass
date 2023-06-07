public  class Book {
//data members or class variables
    string title;
    string author;
    decimal price;
    public Book(string title,string author,decimal price) {
        //this.variable is class variable
        //this.is used for NON-Static members(variables,methods)
        this.title= title;
        this.author=author;
        this.price= price;


    }

    public void printDetails(){
        system.debug ('book name is '+this.title);
        system.debug ('author name is '+this.author);
        system.debug ('price is '+this.price);
    }

    public string getTitle (){
        return title; //this is valid
    }
    public String getAuthor(){
        return this.author;
    }
    public decimal getPrice(){
        return this.price;
    }

    //set methods are used to set (update) class variables
    public void setTitle (string title){
        this.title=title;
    }
    public void setAuthor (string author){
        this.author=author;
    }
    public void setPrice (decimal price){
        this.price=price;
    }
}
