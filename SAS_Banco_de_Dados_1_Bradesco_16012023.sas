/* Pendências Aula Anterior - Aplicando Estatística com SAS III */
/* Regressão Logística */

data churn;
infile datalines;
input Churn Intera Atraso Classe_Intera Classe_Inadimplencia;
datalines;
0 27 0 0 5
1 27 0 0 5
0 22 71 0 0
0 21 0 0 5
0 21 0 0 5
0 20 71 0 0
0 19 41 0 0
0 19 0 0 5
0 17 0 2.5 5
0 16 0 2.5 5
0 15 0 2.5 5
0 15 0 2.5 5
0 14 0 2.5 5
0 14 0 2.5 5
0 14 0 2.5 5
0 12 0 2.5 5
0 12 11 2.5 2.5
0 12 0 2.5 5
0 12 11 2.5 2.5
0 11 0 2.5 5
1 11 0 2.5 5
0 11 0 2.5 5
0 11 0 2.5 5
0 10 0 2.5 5
0 10 0 2.5 5
0 10 0 2.5 5
0 10 11 2.5 2.5
0 10 41 2.5 0
0 10 0 2.5 5
0 10 0 2.5 5
0 9 0 2.5 5
0 9 0 2.5 5
0 9 0 2.5 5
0 9 0 2.5 5
0 9 102 2.5 0
0 9 41 2.5 0
0 9 0 2.5 5
0 9 0 2.5 5
0 9 41 2.5 0
0 9 0 2.5 5
0 9 0 2.5 5
0 9 0 2.5 5
0 9 11 2.5 2.5
0 8 0 2.5 5
0 8 11 2.5 2.5
0 8 0 2.5 5
0 8 0 2.5 5
0 8 11 2.5 2.5
0 8 0 2.5 5
0 8 0 2.5 5
0 8 11 2.5 2.5
1 8 0 2.5 5
0 8 0 2.5 5
0 8 11 2.5 2.5
0 8 41 2.5 0
0 8 71 2.5 0
0 8 0 2.5 5
0 8 0 2.5 5
0 8 0 2.5 5
0 8 0 2.5 5
0 7 0 2.5 5
0 7 0 2.5 5
0 7 102 2.5 0
0 7 11 2.5 2.5
0 7 0 2.5 5
0 7 0 2.5 5
0 7 0 2.5 5
0 7 0 2.5 5
0 7 102 2.5 0
0 7 0 2.5 5
0 7 0 2.5 5
0 7 0 2.5 5
0 7 0 2.5 5
0 7 0 2.5 5
0 7 0 2.5 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 11 4 2.5
0 6 11 4 2.5
1 6 0 4 5
0 6 0 4 5
0 6 0 4 5
0 6 11 4 2.5
0 6 0 4 5
0 5 0 4 5
0 5 0 4 5
1 5 0 4 5
0 5 0 4 5
0 5 11 4 2.5
0 5 41 4 0
0 5 71 4 0
0 5 102 4 0
0 5 71 4 0
0 5 0 4 5
0 5 0 4 5
0 5 0 4 5
0 5 102 4 0
0 5 0 4 5
0 5 190 4 0
0 5 0 4 5
0 5 0 4 5
0 5 0 4 5
0 5 102 4 0
0 5 0 4 5
0 5 161 4 0
0 5 11 4 2.5
0 5 0 4 5
0 5 11 4 2.5
0 5 11 4 2.5
0 5 102 4 0
0 5 0 4 5
1 5 133 4 0
0 5 0 4 5
0 5 0 4 5
0 5 0 4 5
0 4 0 4 5
0 4 41 4 0
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 11 4 2.5
0 4 11 4 2.5
0 4 0 4 5
0 4 0 4 5
0 4 11 4 2.5
0 4 67 4 0
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 133 4 0
0 4 0 4 5
0 4 0 4 5
0 4 41 4 0
0 4 11 4 2.5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 11 4 2.5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 133 4 0
0 4 71 4 0
0 4 11 4 2.5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 4 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 102 4 0
0 3 0 4 5
0 3 0 4 5
0 3 11 4 2.5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 41 4 0
0 3 11 4 2.5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 11 4 2.5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 11 4 2.5
0 3 0 4 5
0 3 0 4 5
0 3 190 4 0
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 11 4 2.5
0 3 41 4 0
0 3 11 4 2.5
0 3 0 4 5
0 3 53 4 0
0 3 0 4 5
0 3 71 4 0
0 3 133 4 0
0 3 41 4 0
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 0 4 5
0 3 41 4 0
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 41 4 0
0 2 0 4 5
0 2 0 4 5
0 2 102 4 0
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 71 4 0
0 2 0 4 5
0 2 0 4 5
0 2 133 4 0
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 102 4 0
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
1 2 0 4 5
0 2 11 4 2.5
0 2 0 4 5
0 2 11 4 2.5
0 2 133 4 0
0 2 41 4 0
0 2 41 4 0
0 2 0 4 5
0 2 11 4 2.5
0 2 0 4 5
0 2 0 4 5
0 2 11 4 2.5
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 71 4 0
0 2 0 4 5
0 2 0 4 5
0 2 0 4 5
0 2 11 4 2.5
0 2 0 4 5
0 2 0 4 5
0 2 41 4 0
0 2 0 4 5
0 2 11 4 2.5
0 2 0 4 5
0 2 0 4 5
0 2 11 4 2.5
0 2 67 4 0
0 2 0 4 5
0 2 0 4 5
0 2 11 4 2.5
0 2 0 4 5
0 2 71 4 0
0 2 0 4 5
0 2 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 253 4 0
0 1 0 4 5
0 1 11 4 2.5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 132 4 0
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 253 4 0
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 71 4 0
0 1 0 4 5
0 1 11 4 2.5
0 1 0 4 5
0 1 11 4 2.5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 41 4 0
0 1 232 4 0
0 1 0 4 5
0 1 41 4 0
0 1 11 4 2.5
0 1 0 4 5
0 1 0 4 5
0 1 71 4 0
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 41 4 0
0 1 41 4 0
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 1 67 4 0
0 1 0 4 5
0 1 0 4 5
0 1 41 4 0
0 1 0 4 5
0 1 0 4 5
0 1 0 4 5
0 0 71 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 71 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 71 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 71 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 11 5 2.5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 11 5 2.5
0 0 102 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 11 5 2.5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 71 5 0
0 0 132 5 0
0 0 11 5 2.5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 11 5 2.5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 71 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 133 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 190 5 0
0 0 11 5 2.5
0 0 0 5 5
0 0 133 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 11 5 2.5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 71 5 0
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
0 0 0 5 5
;
run;
proc freq data=churn;
tables Intera*Classe_Intera Atraso*Classe_Inadimplencia;
run;
proc logistic data=WORK.CHURN;
	class Classe_Intera Classe_Inadimplencia / param=glm;
	model Churn(event='1')=Classe_Intera Classe_Inadimplencia;
run;

/* Previsão Séries Temporais */

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
proc timeseries data=WORK.BBDC plots=(series corr);
	var Fechamento / transform=none dif=0;
run;
proc arima data=WORK.BBDC out=work.BBDC_forecast;
	identify var=Fechamento(1);
	estimate q=(1);
	forecast lead=1;
	run;
quit;




*************************************************************************************************
/* Aula de Hoje: Bano de Dados I */
/* Ingestão de Dados */

* Há duas formas de carregar um conjunto de dados no SAS: INFILE - INPUT ou PROC IMPORT;

/* INFILE - INPUT - Lê um arquivo que foi previamente carregado no servidor */

%web_drop_table(WORK.BBDC4SA);
DATA BBDC4SA;
  INFILE '/home/u62935891/BBDC4SA.csv' firstobs=2 delimiter=',';
  INPUT Date yymmdd10. Open High Low Close Adj_Close Volume;
  format Date yymmdd10.;
RUN;
%web_open_table(WORK.BBDC4SA);

/* PROC IMPORT - Importa um arquivo que foi previamente carregado no servidor */
%web_drop_table(WORK.BBDC4SA_op2);
FILENAME REFFILE '/home/u62935891/BBDC4SA.csv';
PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.BBDC4SA_op2;
	GETNAMES=YES;
RUN;
%web_open_table(WORK.BBDC4SA_op2);

PROC CONTENTS DATA=WORK.BBDC4SA; RUN;
PROC PRINT Data=bbdc4sa (obs=5);RUN;


/* Qualidade de Dados */
ods noproctitle;
ods select attributes variables;
proc datasets;
	contents data=WORK.BBDC4SA order=collate;
quit;

/* Dados Faltantes - Opção 1 */
proc means data=WORK.BBDC4SA NMISS;
run;

libname QUALI '/home/u62935891/'; 
data QUALI.BBDC4SA_miss;
set BBDC4SA;
if Open>16 then Adj_Close=.; 
run;
proc means data=QUALI.BBDC4SA_miss N NMISS;
run;
proc means data=QUALI.BBDC4SA_miss MEAN;
VAR Adj_Close;
OUTPUT OUT=QUALI.BBDC4SA_MEAN MEAN=Media_Adj_Close;
run;
data QUALI.BBDC4SA_ok;
set QUALI.BBDC4SA_miss;
if _n_=1 then set QUALI.BBDC4SA_MEAN (keep=Media_Adj_Close);
run;
data QUALI.BBDC4SA_ok;
set QUALI.BBDC4SA_ok;
if Adj_Close=. then Adj_Close=Media_Adj_Close; 
run;
proc means data=QUALI.BBDC4SA_ok N NMISS;
run;
data QUALI.BBDC4SA_exlcuimiss;
set QUALI.BBDC4SA_miss;
if Adj_Close=. then delete; 
run;
proc means data=QUALI.BBDC4SA_exlcuimiss N NMISS;
run;

/* Dados Faltantes - Opção 2 */
proc format;
	value _nmissprint low-high="Non-missing";
run;

proc freq data=QUALI.BBDC4SA_MISS;
	title3 "Missing Data Frequencies";
	title4 h=2 "Legend: ., A, B, etc = Missing";
	format Adj_Close _nmissprint.;
	tables Adj_Close / missing nocum;
run;

proc print data=QUALI.BBDC4SA_MISS label;
	var Adj_Close;
	format Adj_Close _nmissprint.;
run;

data WORK.BBDC4SA;
set WORK.BBDC4SA;
ano=year(date);
run;

***************************
/* Transformação de Dados */

/* SQL */

ETL - Extract, Transform and Load
ELT - Extract, Load and Transform;

proc sql;
create table test AS Select * from WORK.BBDC4SA
where Open>16; 
run;
proc sql;
create table test2 AS select *, mean(Adj_Close) as Media_Adj_Close from test;
run;
proc sql;
create table ano AS select ano, mean(Adj_Close) as Media_Adj_Close  from WORK.BBDC4SA
group by ano; 
run;
proc sql;
create table BBDC4SA_medano As Select * 
from  WORK.BBDC4SA as a full join ano as b
on a.ano=b.ano;
run;
