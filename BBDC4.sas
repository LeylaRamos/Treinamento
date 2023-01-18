data bbdc;
infile datalines;
input Dia	Abrir 	Alto 	Baixo 	Fechamento;
datalines;
15 13.90 14.26 13.81 13.84	
14 13.60 14.15 13.44 14.01
13 14.23 14.30 13.69 13.72	
12 14.29 14.35 13.80 14.14	
09 14.62 14.65 14.29 14.30
08 14.98 14.98 14.48 14.55	
07 15.03 15.24 14.98 15.98	
06 14.93 15.15 14.75 15.15	
05 15.30 15.31 14.78 14.80	
02 15.40 15.75 15.15 15.37	
01 15.46 15.63 15.32 15.40
;
run;
data bbdc_dia16;
infile datalines;
input Dia	Abrir;
datalines;
16 13.85
;
run;

proc reg data=bbdc outest=RegOut plots=(CooksD(label));
   model fechamento=abrir/ noint;
   output out=bbdc_reg predicted=predito residual=residuo;
run;
proc print data=RegOut;
   title2 'OUTEST= Data Set from PROC REG';
run;
proc reg data=bbdc;
   model fechamento=abrir alto baixo / SELECTION=stepwise noint;
   output out=bbdc_reg predicted=predito residual=residuo;
run;

/* bbdc_dia16 fechamento previsto 
13,807 */




