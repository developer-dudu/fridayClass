global class Bike {
    private string bikeNumber;
    global string name;
    public string price;

    global void details(){
        system.debug('bike number is ' + bikeNumber);
        system.debug('bike name is ' + name);
        system.debug('bike price ' + price);
    }
}