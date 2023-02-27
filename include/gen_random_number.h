#include<vector>
#include <string>
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>


template <class T>
void vec_gen (int nb_gen, int size, T cond, T sum,int q);

template <class T>
void vec_gen_cond (int nb_gen, int size, T cond, T sum,int q,std::vector<T> &x, int nb);

template <class T>
void vec_gen_print (int nb_gen, int size, T cond, T sum,int q);

void vec_gen_random (int nb_gen, int size, int q);

template <class T>
void gen_fpnumber(std::vector<T> &x, int nb_elem, T required_cond, T &sum);

template <class T>
void gen_fpnumber_print(std::vector<T> &x, int nb_elem, T required_cond, T &sum);

template <class T>
void generate_v(std::vector<T> &x, std::vector<T> &y, int nb_elem, T required_cond, T &sum);

template <class T>
void generate_v_cond(std::vector<T> &x, std::vector<T> &y, int nb_elem, T required_cond, T &sum, T &conditioning);

template <class T>
void generate_v_print(std::vector<T> &x, std::vector<T> &y, int nb_elem, T required_cond, T &sum);

template <class T>
void import_vec(std::vector<T> &vec, unsigned int l,int q);