%{
    #undef yywrap
    #define yywrap() 1
    #include <stdio.h>
    #include <string.h>
    #include <stdbool.h>
%}
%%
^([0-9])(?!\1)([0-9])*$ {
     printf("Accepted");
}    
.* { printf("Not Accepted"); }
%%

int main()
{
 yylex();
 return 0;
}

/*
^a[a|b]*a$
^[a|b]*$
^[a|b]b{3}[a|b]$

(a|b)(aa|bb*|(ab)*)
*/