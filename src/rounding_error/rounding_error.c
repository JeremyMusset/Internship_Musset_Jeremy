#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

// Print a matrix

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

// Print a vector

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

    // Start
    clock_t start;
    clock_t end;
    double time;
    int n ;
    start = clock();
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

    // Initialise vector b
    float *b;
    b = (float *)malloc(n * sizeof(float));
    for (i = 0; i<n; i++) {
        *(b+i) = 0.3;
    }


    // Compute a . b 
    float compute = 0;
    for (i=0; i<n; i++){
        compute += *(a+i) * *(b+i);
    }
    printf("compute = %.15f \n",compute);
    end = clock();
    time = end - start;

    // Print the correct rounding of the result
    printf("correct rounding = %.15f \n",result);

    // Print the time
    printf("Time = %.15f \n",time/1000000);

    return 0;
}



// Compile with -lm