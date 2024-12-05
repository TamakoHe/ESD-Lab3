// #include "stdio.h"
// typedef unsigned long long ULL;
// ULL calc(ULL n){
//     ULL sum=0;
//     ULL temp=1;
//     for(ULL i=1;i<=n;i++){
//         sum+=temp;
//         temp*=i+1;
//     }
//     return sum;
// }
// int main(){
//     ULL input;
//     scanf("%lld",&input);
//     printf("%lld", calc(input));
//     return 0;
// }
#include "stdio.h"
#include "string.h"
#include "stdlib.h"
typedef long long LL ;
LL run(LL a, LL n){
    LL temp=a;
    LL sum=0;
    for(LL i=1;i<=n;i++){
        sum+=temp;
        temp=temp*10+a;
        //printf("%lld\n", temp);
    }
    return sum;
}
LL run2(LL a, LL n){
    char *buff=(char*)malloc((n+1)*sizeof(char));
    char *save=(char*)malloc(2*sizeof(char));
    sprintf(buff, "%lld", a);
    sprintf(save, "%lld", a);
    LL sum=0;
    for(LL i=1;i<=n;i++){
        LL temp;
        sscanf(buff, "%lld", &temp);
        sum+=temp;
        strcat(buff, save);
    }
    free(save);
    free(buff);
    return sum;
}
int main(){
    LL a,n;
    scanf("%lld,%lld",&a,&n);
    //printf("%lld %lld\n",a,n);
    printf("%lld",run2(a,n));
    return 0;
}