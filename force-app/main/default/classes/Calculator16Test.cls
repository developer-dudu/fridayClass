// - ONE Test class per class or trigger.
// - naming: append 'Test' after class name or trigger name
// - to create test class, annotate our class with @isTest
@isTest
public class Calculator16Test {
    //we write test method to TEST each UNIT.
        //we can write multiple TEST methods also to TEST ONE method.
    //we will different test methods to TEST each method

    //some rules for test method
        //static.
        //public or private anything
        //test method cannot accept any parameter
        //write @isTest to make a method a TEST METHOD
        //it must return void.

    @isTest
    private static void testMethod1() {
        Calculator16 c = new Calculator16();
        c.add(5.5, 4.5);
    }
    @isTest
    public static void testAddMethod(){
        Calculator16 c = new Calculator16();
        Integer sum = c.add(5, 5);
        // 5,5 -> outout should be 10
        //sum -> 10
        //assertion

        //old assertion
        system.assertEquals(10, sum);//similar to check challange of trailhead

        //new assertion
        assert.areEqual(10, sum);

        assert.isTrue((10==sum));
        assert.isFalse((11==sum));

        
    }
    @isTest
    private static void testAddMethod1(){
        Calculator16 c= new Calculator16();
        integer sum=c.add(3, 5, 7);
        

        //system.assertEquals(15, sum, 'is it ok? i will see ');

        assert.areEqual(15, sum, 'dudu dudu');

        
        
    
}
@isTest
public static void testLeapYear(){
    Calculator16 c= new Calculator16();
    Boolean b= c.leapYearCheck(date.today());
    assert.isFalse(b);
   
    Boolean b2= c.leapYearCheck(date.newInstance(2022, 3, 20));
    assert.isTrue(b2);

    
}

}





