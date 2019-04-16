%{
#include "yy_integer_calculator.h"
%}
%%
(0|[1-9][0-9]*) { yylval = atoi(yytext); return integer; }
\+ return plus;
\- return minus;
\* return times;
\n return out;
