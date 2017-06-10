
#!/usr/bin/python
import optparse
from sympy.solvers import solve
from sympy import Symbol

def makeNextFraction(fraction):
    (a,b) = fraction
    res=b/a
    a1=b%a
    b1=a
    return res, (a1,b1)

def makeContinuedFraction(fraction):
    (a,b) = fraction
    v=[]
    v.append(0)
    while not a == 1:
        r, fraction = makeNextFraction(fraction)
        (a,b) = fraction
        v.append(r)
    v.append(b)
    return v

def makeIndexedConvergent(sequence, index):
    (a,b)=(1,sequence[index])
    while index>0:
        index-=1
        (a,b)=(b,sequence[index]*b+a)
    return (b,a)

def makeConvergents(sequence):
    r=[]
    for i in xrange(0,len(sequence)):
        r.append(makeIndexedConvergent(sequence,i))
    return r

def solveQuadratic(a,b,c):
    x = Symbol('x')
    return solve(a*x**2 + b*x + c, x)

def wienerAttack(N,e):
    conv=makeConvergents(makeContinuedFraction((e,N)))
    for frac in conv:
        (k,d)=frac
        if k == 0:
            continue
        phiN=((e*d)-1)/k
        roots=solveQuadratic(1, -(N-phiN+1), N)
        if len(roots) == 2:
            p,q=roots[0]%N,roots[1]%N
            if(p*q==N):
                return p, q

if __name__ == '__main__':
    parser = optparse.OptionParser()
    parser.add_option('-n', dest='n', help='modulus', type='int')
    parser.add_option('-e', dest='e', help='public exponent', type='int')

    try:
        (options, args) = parser.parse_args()
        
        if options.n and options.e:
            e=options.e
            p, q = wienerAttack(options.n, options.e)
            print "-p", p
            print "-q", q
            print "-e", e
        else:
            parser.print_help()
            parser.error('n and e must be specified')

    except optparse.OptionValueError, e:
        parser.print_help()
        parser.error(e.msg)
