public class carrr {
    private String carNumber;
    public String name;
    public String color;
    public integer mfgYear;
    decimal price;

    public void details(){
        System.debug('car number is '+ carNumber );
        System.debug('car name is '+ name);

        System.debug('color is '+ color);
        System.debug('manufacturing year is '+mfgYear);
        System.debug('price is '+price);
    }
    public carrr(){
        system.debug('carrr contructor called when new instance is created.');
        mfgYear= 2023;
    }
    public carrr(Integer yr){
        System.debug('parameterized constructor called.');
        mfgYear= yr;
    } public carrr(string carnum, string nm, string clr, integer yr, decimal pc){
        carNumber = carnum;
        name = nm;
        color = clr;
        mfgYear = yr;
        price = pc;

        details();
    }

    
}