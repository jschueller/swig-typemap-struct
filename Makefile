
all: example.i example.h
	swig -python -o example_wrap.c example.i
	gcc -c -O2 -g -fPIC example_wrap.c -I/usr/include/python3.8 -I/usr/lib/python3.8/config
	gcc -shared  example_wrap.o -o _example.so
	python3 ./test_example.py
