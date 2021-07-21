import example
a = example.A()
example.init_a(a)

# ok, specific typemaps are called
v = a.v

# fail, only the generic typemap is called
a.v = [0]*5
