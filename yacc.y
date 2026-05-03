%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
%}

%token <ival> NUMBER
%token <sval> ID

%%
input: stmt '\n' {printf("Valid statement, \n");}

stmt: ID = expr {printf("assignment for %s is correct.\n", $1);}

expr:
expr + expr {$$ = $1 + $3;}
epr * expr {$$ = $1 * $3;}
id {$$ = $1;}

%% 