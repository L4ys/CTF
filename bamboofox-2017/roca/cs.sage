#encoding:utf-8
from sage.all import *
import time

def coppersmith_howgrave_univariate(pol, modulus, beta, mm, tt, XX):

    dd = pol.degree()
    nn = dd * mm + tt

    if not 0 < beta <= 1:
        raise ValueError("beta should belongs in (0, 1]")

    if not pol.is_monic():
        raise ArithmeticError("Polynomial must be monic.")

    polZ = pol.change_ring(ZZ)
    x = polZ.parent().gen()

    gg = []
    for ii in range(mm):
        for jj in range(dd):
            gg.append((x * XX)**jj * modulus**(mm - ii) * polZ(x * XX)**ii)
    for ii in range(tt):
        gg.append((x * XX)**ii * polZ(x * XX)**mm)
    
    BB = Matrix(ZZ, nn)

    for ii in range(nn):
        for jj in range(ii+1):
            BB[ii, jj] = gg[ii][jj]

    BB = BB.LLL()
 
    new_pol = 0
    for ii in range(nn):
        new_pol += x**ii * BB[0, ii] / XX**ii

    potential_roots = new_pol.roots()
    #print "\npotential roots:", potential_roots

    roots = []
    for root in potential_roots:
        if root[0].is_integer():
            roots.append(ZZ(root[0]))
    return roots



if len(sys.argv) != 3:
    print "Usage %s <N> <partial p>" % sys.argv[0]
    exit()

N = int(sys.argv[1], 16)
p_part = int(sys.argv[2], 16)

F.<x> = PolynomialRing(Zmod(N), implementation='NTL'); 
pol = x - p_part
dd = pol.degree()

beta = 0.5                           
epsilon = beta / 7                    
mm = ceil(beta**2 / (dd * epsilon))   
tt = floor(dd * mm * ((1/beta) - 1))  
XX = ceil(N**((beta**2/dd) - epsilon))

roots = coppersmith_howgrave_univariate(pol, N, beta, mm, tt, XX)

#print [(p_part-root) for root in roots]
print hex(p_part-roots[0])

