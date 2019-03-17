#!/usr/bin/env python
# -*- coding: utf-8 -*-
from pwn import *   # pip install pwntools
from commands import getoutput
import ctypes

r = remote("210.61.119.7", 9527)

while True:
    seed = int(r.recv())
    log.info("seed=%d", seed)

    question = [0] * 1000

    for x in range(1000):
        if x % 4 == 0:
            Temp = -1
        else:
            Temp = 1
        question[x]=(Temp*seed*x)

    def maxSubArray(A):
        ThisSum = 0
        MaxSum = -10000
        for i in range( 0, len(A) ):
            if ThisSum < 0:
                ThisSum = 0
            ThisSum = (ThisSum + A[i])
            MaxSum = max( ThisSum, MaxSum )

        return MaxSum
    ans = maxSubArray(question)
    r.sendline(str(ans))

r.interactive()
