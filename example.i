
%module example

// out

%typemap(out) int * v {
  $result = Py_None;
  printf("FAIL calling typemap(out) int * v\n");
}

%typemap(out) int * _A::v {
  $result = Py_None;
  printf("OK calling typemap(out) int * _A::v\n");
}

// in

%typemap(in) int * v {
  printf("FAIL calling typemap(in) int * v\n");
}

%typemap(in) int * _A::v {
  printf("OK calling typemap(in) int * _A::v\n");
}

%{
#include "example.h"
%}

%include example.h
