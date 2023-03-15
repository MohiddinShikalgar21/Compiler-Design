%{
    #undef yywrap
    #define yywrap() 1
    #include <stdio.h>
    #include <string.h>
    #include <stdbool.h>
%}
%%
^a.*e.*i.*o.*u.*$ {
    int count=0;
    for(int i=0;i<strlen(yytext);i++){
        if(yytext[i]=='a' || yytext[i]=='i' || yytext[i]=='e' || yytext[i]=='o' || yytext[i]=='u') count++;
    }
    if(count==5) printf("Accepted");
    else printf("Not Accepted");    
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