#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#define MAX 100

bool ver_app(int *vet, int x, int dim){
    bool ver=false;
    int i=0;
    while(i<dim && ver==false){
        if(vet[i]==x){
            ver=true;}}
            return ver;
        }


 int main(){
 int N, i, num, x, dim;
 int vet[MAX] ; 
 do
 {
 printf("Quanti numeri saranno inseriti? ") ;
 scanf("%d",&N) ;
if ( N > MAX || N <=0 )
 printf("Errore: il numero deve essere compreso tra %d e 0\n",
 MAX) ;
 }
 while ( N > MAX || N <=0 ) ;
 printf("Inserisci una sequenza di %d numeri\n", N) ;
 for ( i=0; i<N; i++ )
 {
 printf("Elemento %d: ", i+1) ;
 scanf("%d", &vet[i]) ;
 }
 printf("\n") ;
 ver_app(vet, x, dim);
return 0;
 }