data copa22;
infile datalines delimiter=',';
input Match Round Date ANYDTTME16. Location $ HomeTeam $ AwayTeam $ Group $ ResultT ResultAT;
datalines;
1,1,20/11/2022 13:00,Al Bayt Stadium,Qatar,Ecuador,Group A,0,2
3,1,21/11/2022 10:00,Khalifa International Stadium,England,Iran,Group B,6,2
2,1,21/11/2022 13:00,Al Thumama Stadium,Senegal,Netherlands,Group A,0,2
4,1,21/11/2022 16:00,Ahmad Bin Ali Stadium,USA,Wales,Group B,1,1
8,1,22/11/2022 07:00,Lusail Stadium,Argentina,Saudi Arabia,Group C,1,2
6,1,22/11/2022 10:00,Education City Stadium,Denmark,Tunisia,Group D,0,0
7,1,22/11/2022 13:00,Stadium 974,Mexico,Poland,Group C,0,0
5,1,22/11/2022 16:00,Al Janoub Stadium,France,Australia,Group D,4,1
12,1,23/11/2022 07:00,Al Bayt Stadium,Morocco,Croatia,Group F,0,0
11,1,23/11/2022 10:00,Khalifa International Stadium,Germany,Japan,Group E,1,2
10,1,23/11/2022 13:00,Al Thumama Stadium,Spain,Costa Rica,Group E,7,0
9,1,23/11/2022 16:00,Ahmad Bin Ali Stadium,Belgium,Canada,Group F,1,0
13,1,24/11/2022 07:00,Al Janoub Stadium,Switzerland,Cameroon,Group G,1,0
14,1,24/11/2022 10:00,Education City Stadium,Uruguay,Korea Republic,Group H,0,0
15,1,24/11/2022 13:00,Stadium 974,Portugal,Ghana,Group H,3,2
16,1,24/11/2022 16:00,Lusail Stadium,Brazil,Serbia,Group G,2,0
17,2,25/11/2022 07:00,Ahmad Bin Ali Stadium,Wales,Iran,Group B,0,2
18,2,25/11/2022 10:00,Al Thumama Stadium,Qatar,Senegal,Group A,1,3
19,2,25/11/2022 13:00,Khalifa International Stadium,Netherlands,Ecuador,Group A,1,1
20,2,25/11/2022 16:00,Al Bayt Stadium,England,USA,Group B,0,0
21,2,26/11/2022 07:00,Al Janoub Stadium,Tunisia,Australia,Group D,0,1
22,2,26/11/2022 10:00,Education City Stadium,Poland,Saudi Arabia,Group C,2,0
23,2,26/11/2022 13:00,Stadium 974,France,Denmark,Group D,2,1
24,2,26/11/2022 16:00,Lusail Stadium,Argentina,Mexico,Group C,2,0
25,2,27/11/2022 07:00,Ahmad Bin Ali Stadium,Japan,Costa Rica,Group E,0,1
26,2,27/11/2022 10:00,Al Thumama Stadium,Belgium,Morocco,Group F,0,2
27,2,27/11/2022 13:00,Khalifa International Stadium,Croatia,Canada,Group F,4,1
28,2,27/11/2022 16:00,Al Bayt Stadium,Spain,Germany,Group E,1,1
29,2,28/11/2022 07:00,Al Janoub Stadium,Cameroon,Serbia,Group G,3,3
30,2,28/11/2022 10:00,Education City Stadium,Korea Republic,Ghana,Group H,2,3
31,2,28/11/2022 13:00,Stadium 974,Brazil,Switzerland,Group G,1,0
32,2,28/11/2022 16:00,Lusail Stadium,Portugal,Uruguay,Group H,2,0
35,3,29/11/2022 12:00,Khalifa International Stadium,Ecuador,Senegal,Group A,1,2
36,3,29/11/2022 12:00,Al Bayt Stadium,Netherlands,Qatar,Group A,2,0
33,3,29/11/2022 16:00,Ahmad Bin Ali Stadium,Wales,England,Group B,0,3
34,3,29/11/2022 16:00,Al Thumama Stadium,Iran,USA,Group B,0,1
37,3,30/11/2022 12:00,Al Janoub Stadium,Australia,Denmark,Group D,1,0
38,3,30/11/2022 12:00,Education City Stadium,Tunisia,France,Group D,1,0
39,3,30/11/2022 16:00,Stadium 974,Poland,Argentina,Group C,0,2
40,3,30/11/2022 16:00,Lusail Stadium,Saudi Arabia,Mexico,Group C,1,2
41,3,01/12/2022 12:00,Ahmad Bin Ali Stadium,Croatia,Belgium,Group F,0,0
42,3,01/12/2022 12:00,Al Thumama Stadium,Canada,Morocco,Group F,1,2
43,3,01/12/2022 16:00,Khalifa International Stadium,Japan,Spain,Group E,2,1
44,3,01/12/2022 16:00,Al Bayt Stadium,Costa Rica,Germany,Group E,2,4
45,3,02/12/2022 12:00,Al Janoub Stadium,Ghana,Uruguay,Group H,0,2
46,3,02/12/2022 12:00,Education City Stadium,Korea Republic,Portugal,Group H,2,1
47,3,02/12/2022 16:00,Stadium 974,Serbia,Switzerland,Group G,2,3
48,3,02/12/2022 16:00,Lusail Stadium,Cameroon,Brazil,Group G,1,0
;
run;

proc means data=copa22;
var ResultT;
run;
proc sort data=copa22;
by Location;
run;
proc means data=copa22;
var ResultT ResultAT;
by Location;
run;
proc means data=copa22;
var ResultAT;
output out=Copa22_stats  Q1=Quartil_1 Median=Q2 Q3=Q3 Mode=Mode CV=CV Mean=Media STD=Desvio_Padrao SUM=Soma;
run;
data copa22_total;
set copa22;
Total_Gols=ResultT+ResultAT;
run;
proc means data=copa22_total;
var Total_Gols;
output out=Copa22t_stats  Q1=Quartil_1 Median=Q2 Q3=Q3 Mode=Mode CV=CV Mean=Media STD=Desvio_Padrao SUM=Soma;
run;

ods graphics off;
title 'Box Plot Total de Gols da Copa 2022 por Estádio';
proc boxplot data=copa22_total;
   plot Total_Gols*Location;
   run;
   
   proc univariate data=copa22_total;
   var Total_Gols;
   histogram Total_Gols / VSCALE=COUNT midpoints    = 0 to 8 by 1;
run;
   
   