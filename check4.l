%{
    #undef yywrap
    #define yywrap() 1
    #include <string.h>
    int flag=0;
%}
%%
^([ab])+$ {
    int count0=0,count1=0;
    for(int i=0;i<strlen(yytext);i++){
        if(yytext[i]=='a') count0++;
        else if(yytext[i]=='b') count1++; 
    }
    if(count0%2==0 && count1%2==0) printf("Accepted");
    else printf("Not Accepted");
    }
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