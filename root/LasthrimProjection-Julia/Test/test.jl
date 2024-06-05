using Plots, LaTeXStrings, Plots.PlotMeasures
gr()

function pitick(start, stop, denom; mode=:text)
    a = Int(cld(start, π/denom))
    b = Int(fld(stop, π/denom))
    tick = range(a*π/denom, b*π/denom; step=π/denom)
    ticklabel = piticklabel.((a:b) .// denom, Val(mode))
    tick, ticklabel
end

function piticklabel(x::Rational, ::Val{:text})
    iszero(x) && return "0"
    S = x < 0 ? "-" : ""
    n, d = abs(numerator(x)), denominator(x)
    N = n == 1 ? "" : repr(n)
    d == 1 && return S * N * "π"
    S * N * "π/" * repr(d)
end

function piticklabel(x::Rational, ::Val{:latex})
    iszero(x) && return L"0"
    S = x < 0 ? "-" : ""
    n, d = abs(numerator(x)), denominator(x)
    N = n == 1 ? "" : repr(n)
    d == 1 && return L"%$S%$N\pi"
    L"%$S\frac{%$N\pi}{%$d}"
end

a, b = -π/2, π/2

f(x) = csc.(x)
xs = range(a, b, length=150)
ys = f.(xs)

d = plot(ys, xs, color=:red, ytick=pitick(a, b, 2; mode=:latex), 
	xlims=(-3,3), framestyle=:zerolines,
	linestyle=:solid,  linecolor=:red2,
	legend=:topright, label=L"\csc^{-1} \ x", 
	bottom_margin=3mm,
	size=(1800, 800), tickfontsize=10)# the inverse function
	
savefig(d,"plot.png")
# savefig("plot.png")