#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <limits>
#include <omp.h>
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

template void HybridSum_4096<double>(std::vector<double> p, int n, std::vector<double> &C);

template void DoubleHybridSum_4096<double>(std::vector<double> p1, std::vector<double> p2, int n, std::vector<double> &C);

template void OnlineExact<double>(std::vector<double> p, int n,std::vector<double> &Ch, std::vector<double> &Cl);

template void OnlineExact_3072<double>(std::vector<double> p, int n,std::vector<double> &Ch, std::vector<double> &Cl);

template void DoubleOnlineExact<double>(std::vector<double> p1,std::vector<double> p2,  int n,std::vector<double> &Ch, std::vector<double> &Cl);

template void DoubleOnlineExact_4096<double>(std::vector<double> p1,std::vector<double> p2,  int n,std::vector<double> &Ch);

template double Rare_blas_dot_prod_hybrid<double>(std::vector<double> a, std::vector<double> b, int n);

template double Par_rare_blas_dot_prod<double>(std::vector<double> a, std::vector<double> b, int n,int nb_threads);

template double Rare_blas_dot_prod_online<double>(std::vector<double> a, std::vector<double> b, int n);

template double Rare_blas_dot_prod_online_par<double>(std::vector<double> a, std::vector<double> b, int n,int nb_threads);

template double FastSum<double>(std::vector<double> x,int n,std::vector<double> q, int L, int cq);

template void IFastSum<double>(std::vector<double> p, bool allowRec,double &res);


/// @brief Parallel rare blas dot product 
/// @tparam T Float or Double
/// @param a Vector
/// @param b Vector 
/// @param n Size
template < class T > 
T Par_rare_blas_dot_prod(std::vector<T> a, std::vector<T> b, int n, int nb_threads){
    int mod = n%nb_threads;
    class std::vector<double> Result_global(nb_threads);
    class std::vector<double> Error_global(nb_threads);
    
    #pragma omp parallel num_threads(nb_threads) shared(a,b)
    {
        int LT = omp_get_thread_num();
        int size_local = ceil ((float)n/nb_threads);
        int start = (floor((float)n/nb_threads)) * LT + std::min(mod,LT);
        if ((LT >= mod) && (mod != 0)) {
            size_local -= 1;
        }
        int end = start + size_local - 1 ;
        // printf("Thread number %d    size : %d     start = %d        end = %d \n",LT,size_local,start,end);

        double* tp1 = new double[size_local];
        double* tp2 = new double[size_local];
        double* ah = new double[size_local];
        double* al = new double[size_local];
        double* bh = new double[size_local];
        double* bl = new double[size_local];
        double* c = new double[size_local];
        double* Ch = new double[2048];
        double* Cl = new double[2048];
        for (unsigned int k=0;k<2048;k++){
            Ch[k] = 0;
            Cl[k] =0;
        }
        
        double Res = 0.;
        double Err = 0.;
        double ph;
        double pl;
        int exp;
        int E;
        double error;
        double tmpdb;
        double f;
        double p = 53;
        
        f = pow(2.0,ceil(p/2.0)) + 1;
        double* a_ptr = a.data();
        double* b_ptr = b.data();

        #pragma omp task depend (in:tp1,tp2,a_ptr[start:end],b_ptr[start:end],c,ah,al,bh,bl) depend (out:tp1,tp2)  // Two Prod
        {
            int k = 0;
            for (unsigned int i = start;i<=end;i++) {
                // Result
                tp1[k] = a[i] * b[i];
                // Split a
                c[k] = f*a[i];
                ah[k] = c[k] - (c[k] - a[i]);
                al[k] = a[i] - ah[k];

                // Split b
                c[k] = f*b[i];
                bh[k] = c[k] - (c[k] - b[i]);
                bl[k] = b[i] - bh[k];

                // Error
                tp2[k] = al[k] * bl[k] - ((( tp1[k] - ah[k] * bh[k] ) - al[k] * bh[k] ) - ah[k] * bl[k]);
                k = k+1;

                // Print
                // printf("\nFIRST TASK : tp1[%d] with i global = %d for thread number %d :  %.20f \n",k,i,LT,tp1[k]);
                // printf("tp2[%d] with i global = %d for thread number %d :  %.20f \n\n",k,i,LT,tp2[k]);
            }

        } // End Two Prod

        #pragma omp taskwait

        #pragma omp task depend (in:tp1,tp2) depend(out:Cl,Ch)  // Exponent accumalation
        {
            for (unsigned int i = 0;i<size_local;i++) {
                // Result
                frexp(tp1[i],&exp);             // exp = E - bias
                E = exp + 1024;
                TwoSum(Ch[E], tp1[i],tmpdb,error);
                Ch[E] = tmpdb;
                Cl[E] += error;
            
                // Error 
                frexp(tp2[i],&exp);             // exp = E - bias
                E = exp + 1024;
                TwoSum(Ch[E], tp2[i],tmpdb,error);
                Ch[E] = tmpdb;
                Cl[E] += error;
            }
            
            // Print
            // for (unsigned int w = 0 ; w<2048;w++){
            //     if (Cl[w] != 0) {
            //         printf("Cl[%d] for thread number %d :  %.20f \n",w,LT,Cl[w]);
            //     }
            // }
            // for (unsigned int w = 0 ; w<2048;w++){
            //     if (Ch[w] != 0) {
            //         printf("Ch[%d] for thread number %d :  %.20f \n",w,LT,Ch[w]);
            //     }
            // }

        } // End exponent accumulation

        #pragma omp task depend (in:Ch,Cl,Err,Res) depend(out:Res,Err)  // Distillation
        {
        
            // Res
            int K = 10;
            double* tmp1 = Ch;	
            for(unsigned int k = 1 ; k <= K-1 ; k++){
                for(unsigned int i = 1; i <2048 ; i++){
                    double tmp_res = 0, tmp_err = 0;
                    TwoSum<double> (tmp1[i], tmp1[i-1], tmp_res, tmp_err);
                    tmp1[i] = tmp_res; 
                    tmp1[i-1] = tmp_err;
                }
            }
            for(unsigned int i = 0; i < 2048 ; i++){
                Res += tmp1[i];
            }
    
            // Err
            double* tmp2 = Cl;
            for(unsigned int k = 1 ; k <= K-1 ; k++){
                for(unsigned int i = 1; i <2048 ; i++){
                    double tmp_res = 0, tmp_err = 0;
                    TwoSum<double> (tmp2[i], tmp2[i-1], tmp_res, tmp_err);
                    tmp2[i] = tmp_res; 
                    tmp2[i-1] = tmp_err;
                }
            }
            for(unsigned int i = 0; i < 2048 ; i++){
                Err += tmp2[i];
            }

            // Gather
            Result_global[LT] = Res;
            Error_global[LT] = Err;

            // Print
            // printf("\nResult for thread number %d :  %.20f \n",omp_get_thread_num(),Res);
            // printf("Error for thread number %d :  %.20f \n",omp_get_thread_num(),Err);
            

        } // End distillation

        
    } // End parrallel 

    // Final Distillation

    double final_result = SumK(Result_global,nb_threads,10);
    double final_error = SumK(Error_global,nb_threads,10);

    // Sum result and error
    class std::vector<double> tabtmp(2);
    tabtmp[0] = final_result;
    tabtmp[1] = final_error;
    double EndReturn = SumK(tabtmp,2,10);
    return EndReturn;
}


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
    class std::vector<T> C(4096);
    class std::vector<T> qres(L);
    
    T error, result;
    // Step 1.1 
    TwoProd(a,b,n,tp1,tp2);

    // Step 1.2
    DoubleHybridSum_4096(tp1,tp2,n,C);

    // Step 2
    result = FastSum(C,4096,qres,L,0);
    return result;

    
}

/// @brief Rare blas dot product using online exact
/// @tparam T Float or Double
/// @param a Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param b Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param n Size
/// @param res Result of a . b
template < class T > 
T Rare_blas_dot_prod_online(std::vector<T> a, std::vector<T> b, int n){
    int L=200;
    class std::vector<T> tp1(n);
    class std::vector<T> tp2(n);
    class std::vector<T> Ch(2048);
    class std::vector<T> Cl(2048);
    class std::vector<T> qres(L);
    T error, result;

    // Step 1.1
    printf("/////////// Start two prod /////////////\n");
    TwoProd(a,b,n,tp1,tp2);
    
    printf("tp1 = \n");
    for (unsigned int i=0;i<n;i++){
        printf("%.50f \n",tp1[i]);
    }
    printf("\ntp2 = \n");
    for (unsigned int i=0;i<n;i++){
        printf("%.50f \n",tp2[i]);
    }

    // Step 1.2
    DoubleOnlineExact(tp1,tp2,n,Ch,Cl);

    // Step 2
    result = SumK(Ch,2048,10);
    error = SumK(Cl,2048,10);
    
    // Sum result and error
    class std::vector<double> tabtmp(2);
    tabtmp[0] = result;
    tabtmp[1] = error;
    double EndReturn = SumK(tabtmp,2,10);
    return EndReturn;
}


/// @brief Rare blas dot product using online exact
/// @tparam T Float or Double
/// @param a Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param b Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param n Size
/// @param res Result of a . b
template < class T > 
T Rare_blas_dot_prod_online_par(std::vector<T> a, std::vector<T> b, int n, int nb_threads){
    int L=200;
    class std::vector<T> tp1(n);
    class std::vector<T> tp2(n);
    class std::vector<T> Ch(2048);
    class std::vector<T> Cl(2048);
    class std::vector<T> qres(L);
    T error, result;

    // Step 1.1
    TwoProd(a,b,n,tp1,tp2);

    // Step 1.2
    DoubleOnlineExact(tp1,tp2,n,Ch,Cl);

    // Step 2
    result = SumK(Ch,2048,4);
    error = SumK(Cl,2048,4);
    
    return result+error;
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
    int E;
    T error;
    T tmp;
    for (unsigned int i =0; i<n;i++){
        frexp(p[i],&exp);             // exp = E - bias
        E = exp + 1024;
        FastTwoSum(Ch[exp], p[i],tmp,error);
        Ch[exp] = tmp;
        Cl[exp] += error;
    }
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
    while ((loop < 10000)){
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


// Hybrid Sum function
/// @brief Function HybridSum
/// @tparam T Float or Double
/// @param a Vector
/// @param n Size
/// @param C Result of size 4096
template < class T >
void HybridSum_4096(std::vector<T> p, int n,std::vector<T> &C)
{
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
}

// Hybrid Sum function
/// @brief Function HybridSum
/// @tparam T Float or Double
/// @param p1 Vector
/// @param p2 Vector
/// @param n Size
/// @param C Result of size 4096
template < class T >
void DoubleHybridSum_4096(std::vector<T> p1, std::vector<T> p2, int n,std::vector<T> &C)
{
    T ph;
    T pl;
    T ph2;
    T pl2;
    int exp;
    int idx;
    double m;
    for (unsigned int i =0; i<n;i++){
        Split_Veltkamp(p1[i],ph,pl);
        Split_Veltkamp(p2[i],ph2,pl2);
        frexp(ph,&exp);             // exp = E - bias
        exp = exp + 1024;
        idx = 2*exp;
        C[idx] += ph;
        C[idx+1] += ph2;
        m = PREC;
        C[idx-ceil(m/2)] += pl;
        C[idx+1-ceil(m/2)] += pl;
    }
}


// Online excat function
/// @brief Function OnlineExact
/// @tparam T Float or Double
/// @param a Vector
/// @param n Size of a
/// @param Ch Result of size 3072
/// @param Cl Result of size 3072
template < class T >
void OnlineExact_3072(std::vector<T> p, int n,std::vector<T> &Ch,std::vector<T> &Cl)
{
    T ph;
    T pl;
    int exp;
    T error;
    T tmp;
    for (unsigned int i =0; i<n;i++){
        frexp(p[i],&exp);             // exp = E - bias
        FastTwoSum(Ch[exp], p[i],tmp,error);
        Ch[exp] = tmp;
        Cl[exp] += error;
    }
}

// Online excat function 4096
/// @brief Function OnlineExact
/// @tparam T Float or Double
/// @param p1 Vector
/// @param p2 Vector
/// @param n Size of p
/// @param Ch Result of size 4096
/// @param Cl Result of size 4096
template < class T >
void DoubleOnlineExact_4096(std::vector<T> p1,std::vector<T> p2, int n,std::vector<T> &C)
{
   double ph;
    double pl;
    int exp;
    int idx;
    int E;
    double error;
    double tmp;
    for (unsigned int i =0; i<n;i++){
        frexp(p1[i],&exp);             // exp = E - bias
        E = exp + 1024;
        idx = E * 2;
        TwoSum(C[idx], p1[i],tmp,error);
        C[idx] = tmp;
        C[idx+1] += error;
    }
    for (unsigned int i =0; i<n;i++){
        frexp(p2[i],&exp);             // exp = E - bias
        E = exp + 1024;
        idx = E * 2;
        TwoSum(C[idx], p2[i],tmp,error);
        C[idx] = tmp;
        C[idx+1] += error;
    }
}


// Online excat function 4096
/// @brief Function OnlineExact
/// @tparam T Float or Double
/// @param p1 Vector
/// @param p2 Vector
/// @param n Size of p
/// @param Ch Result of size 2048
/// @param Cl Result of size 2048
template < class T >
void    DoubleOnlineExact(std::vector<T> p1,std::vector<T> p2, int n,std::vector<T> &Ch, std::vector<T> &Cl)
{
    double ph;
    double pl;
    int exp;
    int E;
    double error;
    double tmp;
    for (unsigned int i =0; i<n;i++){
        frexp(p1[i],&exp);             // exp = E - bias
        E = exp + 1024;
        TwoSum(Ch[E], p1[i],tmp,error);
        Ch[E] = tmp;
        Cl[E] += error;
    }
    for (unsigned int i =0; i<n;i++){
        frexp(p2[i],&exp);             // exp = E - bias
        E = exp + 1024;
        TwoSum(Ch[E], p2[i],tmp,error);
        Ch[E] = tmp;
        Cl[E] += error;
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

// template < class T >
// T round3(T res,T S1,T S2){
//     int t = sign(S2);
//     if((half_ulp(S1)==true)&&(sign(S1)==t)){
//         return (magn(S1)+res);
//     }
//    return res;
// }

template<class T>
T round3(T x, T y, T z) {
    T r = x + y;
    T s = r - x;
    y = y - s;
    r = r + z;
    s = r - x;
    z = z - s;
    return r + y + z;
}

template <class T>
bool half_ulp(T x) {
    if (x == 0.0) {
        return false;
    }
    
    double nextUp = std::nextafter(x, std::numeric_limits<double>::infinity());
    double diff = nextUp - x;
    
    return diff == 0.5 * std::numeric_limits<double>::epsilon() || diff == -0.5 * std::numeric_limits<double>::epsilon();
}



/// @brief Give us the sign of val -1 if negative, 0 if null1 1 if positive
/// @tparam T 
/// @param val 
/// @return sign of val
template <typename T> 
int sign(T val) {
    return (T(0) < val) - (val < T(0));
}

/// @brief Return us the sum of elements of the vector p
/// @tparam T Float or Double
/// @param p Vector
/// @param  allowRec Recursive calls are allowed 
/// @param res Result
template < class T >
void IFastSum(std::vector<T> p, bool allowRec,T &res)
{
    int sz = p.size();
    res = 0;
    int nb_err,n;             // Non zero errors
    T St,Smax,Splus,Smoins, S1, S2,eplus,emoins, maxErr, tmp1,tmp2;
    // printf("rentre dedans %b\n",allowRec);
    int c=0;
    while ((allowRec == true) && (c < 1000)){
        c = c+1;
        // printf("\nc = %d\n",c);

        nb_err = 1;
        St = 0;             // Sum of this iteration
        Smax = 0;           // Max intermediate value of St
        // printf("res = %.40f",res);

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
                printf("END LOOP \n");
                return ;
            }
            TwoSum(St,maxErr,tmp1,tmp2);
            Splus = tmp1;
            eplus = tmp2;
            tmp1 =0;
            tmp2 = 0;
            TwoSum(St, (-1)*maxErr,tmp1,tmp2);
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
            }
        }
    }
    printf(" END \n");
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


