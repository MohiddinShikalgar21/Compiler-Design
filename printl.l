%{
    #undef yywrap
    #define yywrap() 1
%}

%%
[\n] {
   prinf("Hello");
}
%%

int main()
{
    yylex();
}
