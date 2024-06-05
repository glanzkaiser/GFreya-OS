using IntervalArithmetic

x = 4/3
f(x) = 1/80 * log(abs(3*(1 - x) + 1)) + x^2 + 1
@show f(x)

f(prevfloat(x))
f(nextfloat(x))

a = 1..2
@show a

# If the upper bound is negative, then it should be within parentheses -5..(-2)

a = @interval(1,2)

b = interval(1, 2)

c = interval(1)

d = @interval 1

@show a, b, c, d

correct = big"0.1"
@show correct

I = interval(a)

II = @interval 0.1
III = a..a

@show correct ∈ I
@show correct ∈ II
@show correct ∈ III

X = 1..2
Y = 3..4

@show X ∩ Y # typed \cap<TAB
@show X ∪ Y # TYPED \cup<TAB>
@show X + Y
@show X*Y
@show X^3
@show X/Y

X = 1..2
Y = -1..1
Z = 0..2

@show X/Y
@show X/Z

@show sin(0..2/3*π)
@show  log(-3.. -2)
@show log(-3..2)
@show  √(-3..4)

f(x) = (1/80) * log(abs(3*(1 - x) + 1)) + x^2 + 1
x = @interval 4/3
@show f(x)

# Estimate function over the interval
f(x) = x^2+3x-1
X = -2..2

@show f(X)

@show f(-2.. -1.5) ∪ f(-1.5.. 2)

X1 = IntervalBox(1..2, 2..3, 3..4)
X2 = IntervalBox(1..2, 3..4)
X3 = IntervalBox(1..2, 5)

@show X1
@show X2
@show X3

X1 = IntervalBox(1..2, 2..3)
X2 = IntervalBox(-1..1, 0..2)

@show X1 + X2
@show sin.(X1)

# 2D Interval Box
f(x) = x^2 + 3x - 1
X = -2..2
f1 = f(X)

X2 = [-2.. -1.5, -1.5..2]
f2 = f.(X2)

box1 = IntervalBox(X, f1)
box2 = IntervalBox.(X2, f2)

using Plots
plot(box1)
plot!(box2)
plot!(f, -2, 2, leg=false, color=:black, linewidth=2)


#Another example
a = sqrt(2) .. sqrt(3)
@show a

setformat(:full)
@show a

setformat(:midpoint)
@show a
setformat(:standard)

setformat(sigfigs=10)
@show a

setprecision(Interval, 256)
@show precision(Interval)
@interval π