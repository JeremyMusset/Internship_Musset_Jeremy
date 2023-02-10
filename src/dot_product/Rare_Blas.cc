#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include <stdbool.h>
#include "../../include/error_free.h"
#include "../../include/dot_product.h"

#define PREC 53    // 53 in double 

template double ulp<double>(double x);

template bool half_ulp<double>(double val);

template int sign<double>(double val);

template double magn<double>(double f);

template void Split_Veltkamp<double>(double x,double &xh, double &xl);

template std::vector<double> HybridSum<double>(std::vector<double> p, int n);

template void OnlineExact<double>(std::vector<double> p, int n,std::vector<double> &Ch, std::vector<double> &Cl);

template double Rare_blas_dot_prod_hybrid<double>(std::vector<double> a, std::vector<double> b, int n);

template double Rare_blas_dot_prod_online<double>(std::vector<double> a, std::vector<double> b, int n);

template double FastSum<double>(std::vector<double> x,int n,std::vector<double> q, int L, int cq);

template void IFastSum<double>(std::vector<double> p, bool allowRec,double &res);


/// @brief Rare blas dot product using hybrid sum
/// @tparam T Float or Double
/// @param a Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param b Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param n Size
/// @param res Result of a . b
template < class T > 
T Rare_blas_dot_prod_hybrid(std::vector<T> a, std::vector<T> b, int n){
    int L = 200;
    class std::vector<T> tp1(n);
    class std::vector<T> tp2(n);
    class std::vector<T> err(2048);
    class std::vector<T> res(2048);
    class std::vector<T> qerr(L);
    class std::vector<T> qres(L);
    
    T error, result;
    TwoProd(a,b,n,tp1,tp2);
    res = HybridSum(tp1,n);
    err = HybridSum(tp2,n);

    result = FastSum(res,2048,qres,L,0);
    error = FastSum(err,2048,qerr,L,0);

    return error+result;
    
}

/// @brief Rare blas dot product using online exact
/// @tparam T Float or Double
/// @param a Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param b Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param n Size
/// @param res Result of a . b
template < class T > 
T Rare_blas_dot_prod_online(std::vector<T> a, std::vector<T> b, int n){
    class std::vector<T> tp1(n);
    class std::vector<T> tp2(n);
    class std::vector<T> errh(2048);
    class std::vector<T> errl(2048);
    class std::vector<T> resh(2048);
    class std::vector<T> resl(2048);
    T error, result;
    TwoProd(a,b,n,tp1,tp2);
    OnlineExact(tp1,n,resh,resl);
    OnlineExact(tp2,n,errh,errl);



    // Ifastsum
    error = 0.0;
    result = 0.0;
    for (unsigned int i=0;i<2048;i++) {
        error+=errh[i]+errl[i];
    }
    for (unsigned int i=0;i<2048;i++) {
        result+=resh[i]+resl[i];
    }
    return error+result;
    
}


// Veltkamp's split function
/// @brief Function Split Veltkamp
/// @tparam T Float or Double
/// @param a Floatting point
/// @param ah Result
/// @param al Result
template < class T >
void Split_Veltkamp(T x,T &xh, T &xl)
{
  T b;
  T c;
  double a;
  double p;

  p = PREC;
  a = pow(2.0,ceil(p/2.0)) + 1;

    b = a*x;

    c = x-b;
 
    xh = b + c;

    xl = x - xh;
}


template < class T >
T ulp(T x) {
  return std::nextafter(x, std::numeric_limits<T>::infinity()) - x;
}

// Hybrid Sum function
/// @brief Function HybridSum
/// @tparam T Float or Double
/// @param a Vector
/// @param n Size
template < class T >
std::vector<T> HybridSum(std::vector<T> p, int n)
{
    class std::vector<T> C(2048);
    T ph;
    T pl;
    int exp;
    double m;
    for (unsigned int i =0; i<n;i++){
        Split_Veltkamp(p[i],ph,pl);
        frexp(ph,&exp);             // exp = E - bias
        exp = exp + 1024;
        C[exp] += ph;
        m = PREC;
        C[exp-ceil(m/2)] += pl;
    }
    return C;
}


// Online excat function
/// @brief Function OnlineExact
/// @tparam T Float or Double
/// @param a Vector
/// @param n Size of a
/// @param Ch Result of size 2048
/// @param Cl Result of size 2048
template < class T >
void OnlineExact(std::vector<T> p, int n,std::vector<T> &Ch,std::vector<T> &Cl)
{
    T ph;
    T pl;
    int exp;
    T error;
    T tmp;
    for (unsigned int i =0; i<n;i++){
        frexp(ph,&exp);             // exp = E - bias
        FastTwoSum(Ch[exp], p[i],tmp,error);
        Ch[exp] = tmp;
        Cl[exp] += error;
    }
}

template < class T>
T magn(T f){
    T y = std::nextafter(f, std::numeric_limits<T>::infinity());
    uint64_t bits = *reinterpret_cast<uint64_t*>(&y);
    if ((bits & 1) == 0) {
    y = std::nextafter(y, -std::numeric_limits<T>::infinity());
    }
    return y;
}


template < class T >
T round3(T res,T S1,T S2){
    int t = sign(S2);
    if((half_ulp(S1)==true)&&(sign(S1)==t)){
        return (magn(S1)+res);
    }
   return res;
}

template < class T >
bool half_ulp(T val){
    return true;
}


/// @brief Give us the sign of val -1 if negative, 0 if null1 1 if positive
/// @tparam T 
/// @param val 
/// @return sign of val
template <typename T> 
int sign(T val) {
    return (T(0) < val) - (val < T(0));
}


/// @brief FastSum Function
/// @tparam T Float or Double
/// @param x Vector
/// @param n number of summands
/// @param q Accessory array for recording the temporare sums
/// @param L maximal size of q (200 in double)
/// @param cq current number of elements in q (initially 0)
/// @param res result
template < class T >
T FastSum(std::vector<T> x,int n,std::vector<T> q, int L, int cq)
{
    T res = 0;
    int count;
    int loop = 0;
    T Sp,Sn,em,e1,e2,E1,E2,tmp1,tmp2;
    for (unsigned int i=0;i<n;i++){
        TwoSum(res,x[i],tmp1,tmp2);
        res = tmp1;
        x[i] = tmp2;
        tmp1 = 0;
        tmp2 = 0;
    }
    while ((loop < 1000)){
        // printf("\nloop = %d\n",loop);

        count = n;
        Sp = 0;
        Sn = 0;
        loop = loop +1 ;
        for (unsigned int i=0;i<n;i++){
        TwoSum(res,x[i],tmp1,tmp2);
            if(x[i] > 0){
                TwoSum(Sp,x[i],tmp1,tmp2);
                Sp = tmp1;
                x[i] = tmp2;
                tmp1 = 0;
                tmp2 = 0;
            }
            else {
                TwoSum(Sn,x[i],tmp1,tmp2);
                Sn = tmp1;
                x[i] = tmp2;
                tmp1 = 0;
                tmp2 = 0;
            
            }
            if(x[i] == 0){
                count = count - 1;
            }
        }
        for (unsigned int i=0;i<cq;i++){
            if(q[i] > 0){
                TwoSum(Sp,q[i],tmp1,tmp2);
                Sp = tmp1;
                q[i] = tmp2;
                tmp1 = 0;
                tmp2 = 0;
            }
            else {
                TwoSum(Sn,q[i],tmp1,tmp2);
                Sn = tmp1;
                q[i] = tmp2;
                tmp1 = 0;
                tmp2 = 0;
            }
            if(q[i] != 0){
                count = count + 1;
            }
        }
        em = count * ulp(std::max(abs(Sp),abs(Sn)));
        e1 = Sp;
        e2 = Sn;
        while(res + (e1+e2) != res){
            TwoSum(e1,e2,tmp1,tmp2);
            e1 = tmp1;
            e2 = tmp2;
            tmp1 = 0;
            tmp2 = 0;

            TwoSum(res,e1,tmp1,tmp2);
            res = tmp1;
            e1 = tmp2;
            tmp1 = 0;
            tmp2 = 0;
        }
        cq += 1;
        q[cq] = e1;
        cq +=1;
        q[cq] = e2;     // ?? q = q + e2 maybe ?
        if (cq >= L-1){
            return res;
        }
        if (res + em == res){
            TwoSum(e1,e2,tmp1,tmp2);
            E1 = tmp1;
            E2 = tmp2;
            tmp1 = 0;
            tmp2 = 0;

            if ((E1 + (E2 + em ))+ res == res){
                return res;
            }
            else {
                return res + FastSum(x,n,q,L,cq);
            }
        }
    }
}














///////////////////////////////////////////////////
/// @brief Return us the sum of elements of the vector p
/// @tparam T Float or Double
/// @param p Vector
/// @param  allowRec Recursive calls are allowed 
/// @param res Result
template < class T >
void IFastSum(std::vector<T> p, bool allowRec,T &res)
{
    int sz = size(p);
    res = 0;
    int nb_err,n;             // Non zero errors
    T St,Smax,Splus,Smoins, S1, S2,eplus,emoins, maxErr, tmp1,tmp2;
    printf("rentre dedans %b\n",allowRec);
    int c=0;
    while ((allowRec == true) && (c < 1000)){
        c = c+1;
        printf("\nc = %d\n",c);

        nb_err = 1;
        St = 0;             // Sum of this iteration
        Smax = 0;           // Max intermediate value of St
        printf("res = %.40f",res);

        for (unsigned int i=0;i<sz;i++){
            TwoSum(St,p[i],tmp1,tmp2);
            St = tmp1;
            p[nb_err] = tmp2;
            tmp1 = 0;
            tmp2 = 0;
            Smax = std::max(Smax,abs(St));
            if (p[nb_err]!=0) {
                nb_err += 1;
            }
        }
        maxErr = (nb_err - 1)*ulp(Smax)/2;
        TwoSum(res,St,tmp1,tmp2);
        res = tmp1;
        St = tmp2;
        tmp1 = 0;
        tmp2 = 0;
        sz = nb_err;
        p[nb_err] = St;
        if ( maxErr < ulp(res)/2 ){
            if (allowRec == false){
                return ;
            }
            TwoSum(St,maxErr,tmp1,tmp2);
            Splus = tmp1;
            eplus = tmp2;
            tmp1 =0;
            tmp2 = 0;
            TwoSum(St, - maxErr,tmp1,tmp2);
            Smoins = tmp1;
            emoins = tmp2;
            tmp1 =0;
            tmp2 = 0;
            
            
            if ( (res + Splus != res) || (res + Smoins != res) || (round3(res, Splus, eplus) != res)|| (round3(res, Smoins, emoins) != res)){
                IFastSum(p,false,S1); 
                IFastSum(p,false,S2);
                TwoSum(res,S1,tmp1,tmp2);
                res = tmp1;
                S1 = tmp2;
                tmp1 =0;
                tmp2 = 0;
                res = round3(res,S1,S2);
                allowRec == false;
            }
        }
    }
    return ;
}



// /// @brief Return us the sum of elements of the vector p
// /// @tparam T Float or Double
// /// @param p Vector
// /// @param  allowRec Recursive calls are allowed 
// /// @param res Result
// template < class T >
// void IFastSum(std::vector<T> p, bool allowRec,T &res)
// {
//     int sz = size(p);
//     res = 0;
//     int nb_err,n;             // Non zero errors
//     T St,Smax,Splus,Smoins, S1, S2,eplus,emoins, maxErr, tmp1,tmp2;
//     printf("rentre dedans %b\n",allowRec);
//     while (allowRec == true){
//         nb_err =1;
//         St = 0;             // Sum of this iteration
//         Smax = 0;           // Max intermediate value of St
//         for (unsigned int i=0;i<sz;i++){
//             TwoSum(St,p[i],tmp1,tmp2);
//             St = tmp1;
//             p[nb_err] = tmp2;
//             tmp1 =0;
//             tmp2 = 0;
//             // Smax = std::max(Smax,abs(St));
//             if (p[nb_err]!=0) {
//                 nb_err += 1;
//                 Smax = std::max(Smax,abs(St));  //
//             }
//         }
//         maxErr = (nb_err - 1)*ulp(Smax)/2;
//         TwoSum(res,St,tmp1,tmp2);
//         res = tmp1;
//         St = tmp2;
//         tmp1 =0;
//         tmp2 = 0;
//         n = nb_err;
//         p[nb_err] = St;
//         if ( maxErr < ulp(res)/2 ){
//             if (allowRec == true){
//                 return ;
//             }
//             TwoSum(St,maxErr,tmp1,tmp2);
//             Splus = tmp1;
//             eplus = tmp2;
//             tmp1 =0;
//             tmp2 = 0;
//             TwoSum(St, - maxErr,tmp1,tmp2);
//             Smoins = tmp1;
//             emoins = tmp2;
//             tmp1 =0;
//             tmp2 = 0;
//             if ( (res + Splus != res) || (res + Smoins != res)){ //|| (round3(res,Splus,eplus) != res) || (round3(res,Smoins,emoins) != res)){
//                 IFastSum(p,false,S1); 
//                 IFastSum(p,false,S2);
//                 res = round3(res,S1,S2);
                
//             }
//         }
//     }
//     return;
// }


