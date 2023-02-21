#include<vector>
#include <string>
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>


template <class T>
void vec_gen (int nb_gen, int size, T cond, T sum,int q);

template <class T>
void gen_fpnumber(std::vector<T> &x, int nb_elem, T required_cond, T &sum);

template <class T>
void generate_v(std::vector<T> &x, std::vector<T> &y, int nb_elem, T required_cond, T &sum);

template <class T>
void import_vec(std::vector<T> &vec, unsigned int l,int q);