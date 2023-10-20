/* Redirecting to Artifacts. Logs will show AFTER job is finished */
proc printto log='/mnt/artifacts/sas-redirect-logs/saslog.txt' new;
run;

/* A simple Hello World SAS program */
/* Print Hello World */
data _null_;
   put "Hello, World!";
run;

/* Get license information */
proc setinit noalias;
run;

/* Output total memory size default value */
proc options option=MEMSIZE value;
run;

/* Output total sort size default value */
proc options option=SORTSIZE value;
run;

/* Output number of threads default value */
proc options option=CPUCOUNT value;
run;

proc printto;
run;

/* Lets Sleep */
data sleep;
   time_slept=sleep(30,1);
run;

/* Redirecting to a Dataset. Logs will show WHILE job is running */
proc printto log='/mnt/data/testsas/saslog.txt' new;

/* A simple Hello World SAS program */
/* Print Hello World */
data _null_;
   put "Hello, World!";

/* Get license information */
proc setinit noalias;

/* Output total memory size default value */
proc options option=MEMSIZE value;

/* Output total sort size default value */
proc options option=SORTSIZE value;

/* Output number of threads default value */
proc options option=CPUCOUNT value;

proc printto;
run;