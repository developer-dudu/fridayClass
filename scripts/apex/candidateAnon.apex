Candidate.companyName='Softinnovas';
 Candidate c1=new Candidate();
 
 c1.name='Dudu';
 c1.gender='female';
 c1.details();

 Candidate.companyName='Softinnovas';
 Candidate c2=new Candidate();
  
 c2.name='Jardel';
 c2.gender='male';
 c2.details();



 Candidate.companyName='Softinnovas';
 Candidate c3=new Candidate();
  
 c3.name='Annie';
 c3.gender='female';
 c3.details();

 Candidate.companyName='Softinnovas';
 Candidate c4=new Candidate();
  
 c4.name='Angy';
 c4.gender='female';
 c4.details();


 System.debug('company name is '+ Candidate.companyName);

 Candidate.companyName='Microsoft';
 System.debug('after change company name is '+Candidate.companyName);

 c1.details();
 c2.details();
 c3.details();