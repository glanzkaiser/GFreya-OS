# Inverted catenary
using Plots;
gr() 


# a large hayshed of length 100 feet and width 48 feet is built
# a cross section has the shape of an inverted catenary with equation y = 37 - 24 cosh (x/24)
# ones(m) = m-element row vector (m x 1) with entries of 1
# ones(m,n) = m times n matrix with entries of 1
# range(0, 2π; length = n) = initial 0 till 2π partitioned n times
# θ' = 1x130 vector column with entries θ
# ones(m)*θ' -> becomes m x dim(θ') matrix
# cosh.(ones(m)*θ') -> compute cosh for every entries in matrix (ones(m)*θ')

function hayshedcatenary(r)   
    m = 200
    n = 130
    h = 100 # length 100 feet
    w = range(-24, 24; length = n)
    t = range(0, h; length = m) 
    x = ones(m)*w'
    y = t * ones(n)' 
    z = 37*ones(m,n) - 24cosh.(ones(m)*(w/24)')
    return x, y, z
end
my_cg = cgrad([:green,:blue])
surface(hayshedcatenary(3),  label="hayshed")	
savefig("catenary.png")