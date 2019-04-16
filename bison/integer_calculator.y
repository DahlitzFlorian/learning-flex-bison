%{
#include <stdio.h>

void yyerror(char *);
%}

%token plus minus times out integer
%start S
%left plus minus
%left times

%%

S : E out { printf("= %d\n ", $1); }
    | S E out { printf("= %d\n ", $2); };

I : integer { $$ = $1; };

E : I
    | E plus E { $$ = $1 + $3; }
    | E minus E { $$ = $1 - $1; }
    | minus E { $$ = - $2; }
    | E times E { $$ = $1 * $3; };
%%

int main(void) {
    yyparse();
    return 0;
}

void yyerror(char *e) {
    printf("%s", e);
}
