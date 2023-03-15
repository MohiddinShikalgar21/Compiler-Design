%{
  #undef yywrap
  #define yywrap()
%}

%% {
    printf("Enter name:");
    scanf("%s",&name);
    printf("%s",name);
}%%

int main(){
    yylex();
}
