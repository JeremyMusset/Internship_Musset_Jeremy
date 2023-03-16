#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"

//   Timing cached reads:   37214 MB in  2.00 seconds = 18635.96 MB/sec
//   Timing buffered disk reads: 9180 MB in  3.00 seconds = 3060.00 MB/sec




using namespace std;
namespace plt = matplotlibcpp;

#define P 4000

int main() {
    int nb_gen = 5;
    double sum = 200; 
    double cond = 100;
    int sz = 7;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    class std::vector<double> Time4(2);
    class std::vector<mpfr_t> Error4(2);
    class std::vector<double> Time8(2);
    class std::vector<mpfr_t> Error8(2);
    class std::vector<double> Time16(2);
    class std::vector<mpfr_t> Error16(2);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }

    for (unsigned int i; i<2;i++){
        mpfr_init2(Error4[i], P);
        mpfr_init2(Error8[i], P);
        mpfr_init2(Error16[i], P);
        
    }


    // Time / Size
    int sz_time = 16;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_common(sz_time);
    class std::vector<double> Time_par_standard(sz_time);
    class std::vector<double> Time_par_common(sz_time);
    class std::vector<double> Time_mkl(sz_time);
    class std::vector<double> Time_blaspp(sz_time);

    class std::vector<double> VTime_standard(sz_time);
    class std::vector<double> VTime_common(sz_time);
    class std::vector<double> VTime_par_standard(sz_time);
    class std::vector<double> VTime_par_common(sz_time);
    class std::vector<double> VTime_mkl(sz_time);
    class std::vector<double> VTime_blaspp(sz_time);

     class std::vector<double> OTime_standard(sz_time);
    class std::vector<double> OTime_common(sz_time);
    class std::vector<double> OTime_par_standard(sz_time);
    class std::vector<double> OTime_par_common(sz_time);
    class std::vector<double> OTime_mkl(sz_time);
    class std::vector<double> OTime_blaspp(sz_time);

    class std::vector<double> OVTime_standard(sz_time);
    class std::vector<double> OVTime_common(sz_time);
    class std::vector<double> OVTime_par_standard(sz_time);
    class std::vector<double> OVTime_par_common(sz_time);
    class std::vector<double> OVTime_mkl(sz_time);
    class std::vector<double> OVTime_blaspp(sz_time);

    class std::vector<double> MaxTime(sz_time);


    VSize = {5000,10000,30000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};
    
    Time_standard = 
 {6.1520478629, 6.1545562950, 6.1594528353, 6.1604615418, 6.1314584696, 5.8613469082, 5.1785650132, 5.0942553992, 5.0602957964, 5.0616720449, 5.0562466995, 4.9768237612, 5.0671762798, 5.0712501132, 5.0541876303, 5.0444525037};

    Time_common = 
 {5.7750891529, 5.8074960255, 5.8068075140, 5.4702126408, 5.3054150603, 5.2741920597, 5.2183810951, 5.1946050563, 5.0786145730, 4.8956869854, 4.6111763849, 4.3428981564, 4.3811996714, 4.3035197143, 4.1620655610, 4.0719048516};

    Time_mkl = 
 {17.8954903364, 17.9420471876, 17.9499644740, 17.9567063809, 17.9540197554, 17.9551346074, 17.8733605381, 17.9533750849, 17.2271780267, 17.1219829996, 17.1411391110, 17.2084804539, 17.2037471727, 17.2215633778, 17.0662564697, 16.9174645542};

    Time_blaspp = 
 {7.6480373224, 7.7379167594, 7.7213121083, 7.7166596895, 7.7004524016, 7.6911762020, 7.6926923269, 7.6615191899, 7.5955520447, 7.5390603428, 7.4998882517, 7.5102608939, 7.5064375745, 7.5176078821, 7.5099591446, 7.4849248935};

// -march=native -O3

    OVTime_standard = 
 {17.9195412597, 17.9549331179, 17.9514413511, 17.5999788800, 17.9525693119, 17.9115572084, 17.9486489155, 17.7027835414, 17.5123201909, 17.2531739370, 17.2605802179, 17.2522561638, 16.9682572388, 17.1237384888, 16.8652740073, 16.8350150637};

    OVTime_common = 
 {13.8749176177, 13.7921522654, 13.6249836784, 11.7175256101, 11.4845943737, 11.1021060695, 11.0635990994, 11.1472726572, 10.9256183900, 10.2742268195, 9.9323803545, 9.6834230771, 9.2005908882, 9.1136424506, 8.4404680774, 8.4418502404};

    OVTime_mkl = 
 {17.9259657614, 17.8703062524, 17.9518441780, 17.6077262703, 17.9557928380, 17.9541674989, 17.9571900589, 17.8273112923, 17.4123126816, 17.2344558134, 17.1364627942, 17.1878549471, 17.1851381943, 16.9958226392, 16.9246786920, 16.7057162785};

    OVTime_blaspp = 
 {17.9275726067, 17.9533213645, 17.9529184713, 17.6136188501, 17.9540197554, 17.9537645678, 17.9469980281, 17.8407490141, 17.3914272220, 17.2129260468, 17.2510994126, 17.2949239975, 17.0012884548, 17.1190189090, 17.0517738747, 16.8394038683};
    


    // -o3
    OTime_standard = 
 {11.0402693826, 11.0018565633, 11.0283981252, 10.6550739462, 11.0068113818, 11.0035362615, 10.9972891682, 10.8843438691, 10.7766314136, 10.6930542731, 10.8296555823, 10.7318073061, 10.7382270297, 10.7329274677, 10.7272944744, 10.7750260756};

    OTime_common = 
 {13.8178803372, 13.8011938033, 13.7014455025, 11.9061438679, 11.3815709603, 11.0694163097, 10.9788992418, 11.0355025913, 10.7692002220, 10.4774220722, 9.9853255655, 9.4324732385, 9.3274707071, 9.2358073637, 8.7747437720, 8.4756541338};

    OTime_mkl = 
 {17.9283761373, 17.9533213645, 17.9530527670, 17.6063312367, 17.9540734800, 17.9552958023, 17.9572908284, 17.7230987361, 17.2275582789, 17.1115967002, 17.1578678261, 17.2017312969, 17.1364166480, 17.1462104517, 17.0111736477, 16.9339066449};

    OTime_blaspp = 
 {17.9307871616, 17.9577543828, 17.9519784576, 17.6131535030, 17.9560077809, 17.9548928205, 17.9506626038, 17.6499918369, 17.1901607817, 17.1964609683, 17.2054555058, 17.2458939682, 17.1652897243, 17.2689351716, 17.1145399141, 17.0984981427};


    // -march=native
    VTime_standard = 
 {6.1128430833, 6.1550298134, 6.1434180954, 6.1233331139, 6.0345842021, 5.6619090117, 5.2538909988, 5.1089678991, 5.1172268724, 5.0803547002, 5.0753558383, 5.0058430703, 4.9705420823, 5.0554200422, 5.1024677575, 5.0768722545};

    VTime_common = 
 {5.7597051031, 5.7929456404, 5.8150240839, 5.3676361065, 5.3590376597, 5.2171916901, 5.2219696094, 5.0279691258, 4.9225339297, 4.6095360006, 4.4451287967, 4.3513705621, 4.0334588085, 4.2503417275, 3.8754725412, 4.1087011325};

    VTime_mkl = 
 {17.9115171055, 17.8647194123, 17.8683105512, 17.8752575154, 17.9550405784, 17.9537242757, 17.4351575593, 17.8775077860, 17.7140073513, 16.5223030438, 17.0083647138, 16.9888219215, 16.2730260413, 16.7458711485, 16.9503496010, 16.6354370992};

    VTime_blaspp = 
 {7.7369439072, 7.8429834709, 7.7446086230, 7.6149283055, 7.7457333919, 7.6336679106, 7.6170019100, 7.6083403895, 7.5948525887, 7.4538712519, 7.4349110710, 7.3430577447, 7.3195916714, 7.4505870085, 7.4326527336, 7.3618061308};



    // int i = 0;
    // vector<double>::iterator k;
    // for (k = VSize.begin(); k != VSize.end(); k++){  
    //     double qtt,MaxT;
    //     qtt = *k * 2 * 8 /1000000;
    //     MaxT = 19000;
    //     MaxTime[i] = MaxT;
    //     i +=1;
       
    // }

    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = VSize[0];
    T1[1] = VSize[sz_time - 1];
    T2[0] = Time_standard[0];
    T2[1] = Time_standard[sz_time -1];
    plt::semilogx(T1,T2,"white");



    // plt::plot(VSize,Time_standard,{{"color", "b"},{"label", "Without flags"}});
    // plt::plot(VSize,Time_common,{{"color", "b"},{"label", "Without flags"}});
    // plt::plot(VSize,Time_mkl,{{"color", "b"},{"label", "Without flags"}});
    plt::plot(VSize,Time_blaspp,{{"color", "b"},{"label", "Without flags"}});

    // plt::plot(VSize,OVTime_standard,{{"color", "g"},{"label", "-O3 -march=native"}});
    // plt::plot(VSize,OVTime_common,{{"color", "g"},{"label", "-O3 -march=native"}});
    // plt::plot(VSize,OVTime_mkl,{{"color", "g"},{"label", "-O3 -march=native"}});
    plt::plot(VSize,OVTime_blaspp,{{"color", "g"},{"label", "-O3 -march=native"}});

    // plt::plot(VSize,OTime_standard,{{"color", "y"},{"label", "-O3"}});
    // plt::plot(VSize,OTime_common,{{"color", "y"},{"label", "-O3"}});
    // plt::plot(VSize,OTime_mkl,{{"color", "y"},{"label", "-O3"}});
    plt::plot(VSize,OTime_blaspp,{{"color", "y"},{"label", "-O3"}});

    // plt::plot(VSize,VTime_standard,{{"color", "r"},{"label", "-march=native"}});
    // plt::plot(VSize,VTime_common,{{"color", "r"},{"label", "-march=native"}});
    // plt::plot(VSize,VTime_mkl,{{"color", "r"},{"label", "-march=native"}});
    plt::plot(VSize,VTime_blaspp,{{"color", "r"},{"label", "-march=native"}});    

    // plt::plot(VSize,MaxTime,{{"color", "#FF00CD"},{"label", "Max Flow"}});    

    
    

    plt::title("Flow according to size");
    plt::xlabel("Size of vector");
    plt::ylabel("Flow (Mbytes/s)");


    plt::legend();    
    plt::show();
    return 0;
}