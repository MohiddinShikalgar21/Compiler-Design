%{
    #undef yywrap
    #define yywrap() 1
    int flag=0;
%}
%%
^a(a|b)*a$ {
    printf("Accepted");
    flag=1;
    }
if(flag==1) printf("NA");
%%

int main()
{
 yylex();
 if (flag == 0) 
 printf("Not Accepted"); 
}

/*
^a[a|b]*a$
^[a|b]*$
^[a|b]b{3}[a|b]$
*/