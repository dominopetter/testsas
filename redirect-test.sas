proc printto print='/mnt/artifacts/sas-logs' new;
run;

proc print data=test_scores;
   title 'Redirecting my SAS logs for the NVS PoC';
run;

proc printto;
run;