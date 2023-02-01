#include <stdio.h>
#include <mpfr.h>
#include <stdlib.h>
#include "../../include/error_free.h"

#define P 250
#define MAX_LEN 50


// Multiplication vecteur - vecteur
/// @brief Compute the correct rounding of dot product with mpfr
/// @param n Dimension of vector
/// @param a Vector a 
/// @param b Vector b
/// @param c Result
void dot_prod_mpfr(int n, mpfr_t *a, mpfr_t *b, mpfr_t c){
    mpfr_t tmp;
    mpfr_init2(tmp,P);
    mpfr_set_d(tmp, 0, MPFR_RNDN);
    mpfr_set_d(c, 0, MPFR_RNDN);
    for (int i=0;i<n; i++) {
        mpfr_mul(tmp,a[i],b[i],MPFR_RNDN);
        mpfr_add(c,c,tmp,MPFR_RNDN);
    }
}

// Importation des matrices
/// @brief read file and create mpfr vector
/// @param a mpfr vector 
/// @param b mpfr vector
/// @param fic data file
/// @return size
int import_vec_mpfr(mpfr_t **a, mpfr_t **b, char *fic)
{
    FILE *f;
    char str[MAX_LEN];
    int n, i;

    // Ouverture du fichier
    f = fopen(fic, "r+");

    // Recuperation du texte
    fgets(str, MAX_LEN, f);
    n = atoi(str);
    printf("%d",n);
    *a = (mpfr_t *)malloc(n * sizeof(mpfr_t));
    *b = (mpfr_t *)malloc(n * sizeof(mpfr_t));

    for (i = 0; i < n ; i++)
    {
        mpfr_init2((*a)[i], P);
        fgets(str, MAX_LEN, f);
        mpfr_set_str((*a)[i], str, 10, MPFR_RNDN);
    }

    for (i = 0; i < n; i++)
    {
        mpfr_init2((*b)[i], P);
        fgets(str, MAX_LEN, f);
        mpfr_set_str((*b)[i], str, 10, MPFR_RNDN);
    }
    fclose(f);
    return n;
}

int main(void)
{
    // Importation des vecteurs et de DIM leurs dimension
    int n;
    mpfr_t *a, *b;
    n = import_vec_mpfr(&a, &b, "../data/vec1.txt");

    // Definition et initialisation de toutes les variables
    mpfr_t res;
    int k =0;
    mpfr_init2(res,P);
   
    // Affiche A et b 

    // A
    printf("\na :\n");
    for (int i = 0; i < n; i++)
        mpfr_printf("%.4Rg ", a[i]);
    printf("\n");

    // b
    printf("\nb :\n");
    for (int i = 0; i < n; i++)
        mpfr_printf("%.4Rg ", b[i]);
    printf("\n");


    dot_prod_mpfr(n,a,b,res);


    // Affcichage des resultats
    printf("\nResultat :\n");   
    mpfr_printf ("%.41Rg \n", res);
    return 0;
}