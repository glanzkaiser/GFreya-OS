# To compute an indefinite integral
using SymPy

# we can also use @vars x y z
#x = symbols("x")
@syms x::real

integrate(sin(x)^2,x)
