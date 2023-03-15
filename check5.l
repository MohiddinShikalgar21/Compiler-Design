%{
    #undef yywrap
    #define yywrap() 1
    int flag=0;
%}
%%
(a|b)(aa|bb*|(ab)*) {
    printf("Accepted");
    flag=1;
    }
%%

int main()
{
 yylex();
 if (flag == 0) 
 printf("Not Accepted");
 return 0; 
}

/*
^a[a|b]*a$
^[a|b]*$
^[a|b]b{3}[a|b]$

(a|b)(aa|bb*|(ab)*)
*/