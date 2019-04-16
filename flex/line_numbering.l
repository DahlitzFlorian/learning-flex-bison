%{
int z = 0;
%}

%%
.*\n printf("%d\t%s", ++z, yytext);
