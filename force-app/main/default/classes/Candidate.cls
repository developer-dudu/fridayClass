public  class Candidate {
    public  string name;
    public  string gender;
    public static integer count=0;
    public  static string companyName;

    //constructor will be called automatic when we create new instance
    public candidate(){
        count++;
    }

    public void details(){
        System.debug('name is '+ name);
        System.debug('gender is '+ gender);
        System.debug('company name is '+companyName);
        System.debug('--------');
        System.debug('count is '+count);
        System.debug('========');
        System.debug('********');
    } 


    
}