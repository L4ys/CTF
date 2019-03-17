#!/usr/bin/env python
# -*- coding: utf-8 -*-

def Huge_Fib(n,m):
    # Initialize a matrix [[1,1],[1,0]]    
    v1, v2, v3 = 1, 1, 0  
    # Perform fast exponentiation of the matrix (quickly raise it to the nth power)
    for rec in bin(n)[3:]:
        calc = (v2*v2) % m
        v1, v2, v3 = (v1*v1+calc) % m, ((v1+v3)*v2) % m, (calc+v3*v3) % m
        if rec == '1': v1, v2, v3 = (v1+v2) % m, v1, v2
    return v2

print "CTF{%016lx}" % Huge_Fib(9009131337,2037448192360);
