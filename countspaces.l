%{
    #undef yywrap
    #define yywrap() 1
    int count=0;
%}

%%

[' '] count++;

[\n] {
    printf("Number of spaces are %d\n",count);
    count=0;
}

%%

int main(){
    yylex();
}
