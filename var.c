#include<stdio.h>
int main(){
    char *s1= "aa";
    char * s2="aab";
    if(canConstruct(s1,s2)) printf("Y");
    else printf("N");
}