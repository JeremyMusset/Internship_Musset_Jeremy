
#include "../../include/parallelisation.h"
#include <cmath>



int get_size(int nb_thread, int nb_elem){
  return ceil((float)nb_elem/nb_thread);
}