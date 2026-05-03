%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
%}

%%
[0-9]+        {yylval.ival = atoi
(yytext); return NUMBER;}
[a-zA-Z_][a-zA-Z0-9_]*   {yylal.sval = strup
(yytext), return ID;}

"=" return "=";
"+" return "+";
"*" return "*";
[\t];
\n 
%%