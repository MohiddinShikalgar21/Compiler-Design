%{
    #undef yywrap
    #define yywrap() 1
    int count=0;
%}
%%
([a-zA-Z0-9 ]) { 
    count++;
}

[\n] {
   printf("Number of letters are %d",count);
   count=0;
}
%%

main(){
    yylex();
}