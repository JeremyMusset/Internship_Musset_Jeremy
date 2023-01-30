#include <stdlib.h>
#include <stdio.h>
#include <math.h>

// Affichage d'un matrice 

void aff_m(float *t, int m, int n)
{
    int i, j;
    for (j = 0; j < n; j++)
    {
        for (i = 0; i < m; i++)
        {
            printf("%.15f ", *(t + j * m + i));
        }
        printf("\n");
    }
}

void aff(float *t, int n)
{
    int i;
    printf("[ ");
    for (i = 0; i < n; i++)
    {
        printf("%.15f ", *(t + i));
    }
    printf("] \n");
}


int main() {
    int n ;
    printf("Size of vector = ");
    scanf("%d", &n);
    int i;

    // Enter the exact result to have the correct rounded
    float result;
    printf("Exact result = size * 0.06 = ");
    scanf("%e", &result);


    // Initialise vector a
    float *a;
    a = (float *)malloc(n * sizeof(float));
    for (i = 0; i<n; i++) {
        *(a+i) = 0.2;
    }

    // Print a
    // printf("a = ");
    // aff(a,n);


    // Initialise vector b
    float *b;
    b = (float *)malloc(n * sizeof(float));
    for (i = 0; i<n; i++) {
        *(b+i) = 0.3;
    }

    // Print b
    // printf("b = ");
    // aff(b,n);

    // Compute a . b 
    float compute = 0;
    for (i=0; i<n; i++){
        compute += *(a+i) * *(b+i);
    }
    printf("compute = %.15f \n",compute);


    // Print the correct rounding of the result
    printf("result = %.15f \n",result);


    return 0;
}