using FresnelIntegrals
using Plots

z = -30:0.001:30
plot(x->real(fresnelc(x)), x->real(fresnels(x)),z,legend=false)
title!("Euler Spiral")
xlabel!("C(x)")
ylabel!("S(x)")