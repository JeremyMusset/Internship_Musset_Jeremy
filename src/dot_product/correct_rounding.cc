#include <stdio.h>
#include <mpfr.h>
#include <stdlib.h>
#include <time.h>
#include "../../include/error_free.h"

#define P 500
#define MAX_LEN 10000  //longueur max d'une ligne du fichier binaire

void dot_prod_mpfr(int n, mpfr_t *a, mpfr_t *b, mpfr_t c);
int import_vec_mpfr(mpfr_t **a, mpfr_t **b, char *fic);

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
    mpfr_t nbis;
    mpfr_init2(nbis, P);
    int n, i;

    // Ouverture du fichier
    f = fopen(fic, "r+");

    // Recuperation du texte
    fgets(str, MAX_LEN, f);
    mpfr_set_str(nbis, str, 2, MPFR_RNDN);  // NBIS IS OK, BUT A MPFR_T, I JUST NEED TO CONVERT IN INT AND PUT HIM IN n
    n = 3;
    *a = (mpfr_t *)malloc(n * sizeof(mpfr_t));
    *b = (mpfr_t *)malloc(n * sizeof(mpfr_t));

    for (i = 0; i < n ; i++)
    {
        mpfr_init2((*a)[i], P);
        fgets(str, MAX_LEN, f);
        mpfr_set_str((*a)[i], str, 2, MPFR_RNDN);
    }
    for (i = 0; i < n; i++)
    {
        mpfr_init2((*b)[i], P);
        fgets(str, MAX_LEN, f);
        mpfr_set_str((*b)[i], str, 2, MPFR_RNDN);
    }
    fclose(f);
    return n;
}

