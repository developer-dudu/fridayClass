List<Account> acc = [select id,name from account where createdDate = last_month];
AccountsQueueableExample aq= new AccountsQueueableExample(acc);

//enqueing job
id jobId = System.enqueueJob(aq);
AsyncExceptionJob = [select id,status, jobType, methodName , numberOfErrors from asyncApexJob];
System.debug(job);