#!/usr/bin/env python
# -*- coding: utf-8 -*-

from z3 import *

pos = [ 
    [[1, 6], [2, 6],],
    [[1, 7], [2, 7],],
    [[2, 1], [3, 1],],
    [[2, 2], [3, 2], [4, 2],],
    [[2, 4], [3, 4],],
    [[1, 6], [1, 7],],
    [[2, 5], [3, 5], [4, 5],],
    [[2, 8], [3, 8],],
    [[2, 9], [3, 9],],
    [[2, 1], [2, 2],],
    [[2, 4], [2, 5], [2, 6], [2, 7], [2, 8], [2, 9],],
    [[3, 3], [4, 3], [5, 3],],
    [[3, 1], [3, 2], [3, 3], [3, 4], [3, 5],],
    [[4, 6], [5, 6],],
    [[3, 8], [3, 9],],
    [[4, 2], [4, 3],],
    [[4, 5], [4, 6],],
    [[5, 4], [6, 4],],
    [[5, 7], [6, 7], [7, 7],],
    [[5, 3], [5, 4],],
    [[5, 6], [5, 7],],
    [[6, 5], [7, 5], [8, 5],],
    [[6, 8], [7, 8], [8, 8],],
    [[7, 1], [8, 1],],
    [[7, 2], [8, 2],],
    [[6, 4], [6, 5],],
    [[6, 7], [6, 8],],
    [[7, 6], [8, 6],],
    [[7, 9], [8, 9],],
    [[7, 1], [7, 2],],
    [[8, 3], [9, 3],],
    [[7, 5], [7, 6], [7, 7], [7, 8], [7, 9],],
    [[8, 4], [9, 4],],
    [[8, 1], [8, 2], [8, 3], [8, 4], [8, 5], [8, 6],],
    [[8, 8], [8, 9],],
    [[9, 3], [9, 4],],
    [[1, 12], [2, 12], [3, 12], [4, 12], [5, 12],],
    [[1, 13], [2, 13],],
    [[1, 18], [2, 18],],
    [[1, 19], [2, 19],],
    [[1, 12], [1, 13],],
    [[2, 14], [3, 14],],
    [[2, 16], [3, 16], [4, 16], [5, 16],],
    [[1, 18], [1, 19],],
    [[2, 17], [3, 17], [4, 17], [5, 17], [6, 17],],
    [[2, 12], [2, 13], [2, 14],],
    [[3, 11], [4, 11], [5, 11],],
    [[2, 16], [2, 17], [2, 18], [2, 19],],
    [[3, 15], [4, 15],],
    [[3, 11], [3, 12],],
    [[3, 14], [3, 15], [3, 16], [3, 17],],
    [[4, 13], [5, 13], [6, 13], [7, 13], [8, 13],],
    [[4, 11], [4, 12], [4, 13],],
    [[4, 15], [4, 16], [4, 17],],
    [[5, 14], [6, 14], [7, 14], [8, 14],],
    [[5, 18], [6, 18], [7, 18], [8, 18], [9, 18],],
    [[5, 19], [6, 19], [7, 19],],
    [[5, 11], [5, 12], [5, 13], [5, 14],],
    [[5, 16], [5, 17], [5, 18], [5, 19],],
    [[6, 15], [7, 15],],
    [[6, 13], [6, 14], [6, 15],],
    [[6, 17], [6, 18], [6, 19],],
    [[7, 16], [8, 16],],
    [[8, 11], [9, 11],],
    [[7, 13], [7, 14], [7, 15], [7, 16],],
    [[8, 12], [9, 12],],
    [[7, 18], [7, 19],],
    [[8, 17], [9, 17],],
    [[8, 11], [8, 12], [8, 13], [8, 14],],
    [[8, 16], [8, 17], [8, 18],],
    [[9, 11], [9, 12],],
    [[9, 17], [9, 18],],
    [[11, 4], [12, 4],],
    [[11, 5], [12, 5], [13, 5], [14, 5],],
    [[11, 7], [12, 7],],
    [[11, 8], [12, 8], [13, 8], [14, 8], [15, 8], [16, 8], [17, 8], [18, 8],],
    [[12, 2], [13, 2], [14, 2], [15, 2], [16, 2], [17, 2], [18, 2], [19, 2],],
    [[11, 4], [11, 5],],
    [[12, 3], [13, 3],],
    [[11, 7], [11, 8],],
    [[12, 6], [13, 6],],
    [[12, 9], [13, 9],],
    [[12, 2], [12, 3], [12, 4], [12, 5], [12, 6], [12, 7], [12, 8], [12, 9],],
    [[13, 1], [14, 1],],
    [[13, 1], [13, 2], [13, 3],],
    [[13, 5], [13, 6],],
    [[14, 4], [15, 4],],
    [[13, 8], [13, 9],],
    [[14, 7], [15, 7],],
    [[14, 1], [14, 2],],
    [[14, 4], [14, 5],],
    [[15, 3], [16, 3],],
    [[14, 7], [14, 8],],
    [[15, 6], [16, 6],],
    [[15, 2], [15, 3], [15, 4],],
    [[15, 6], [15, 7], [15, 8],],
    [[16, 5], [17, 5], [18, 5], [19, 5],],
    [[16, 9], [17, 9],],
    [[16, 2], [16, 3],],
    [[17, 1], [18, 1],],
    [[16, 5], [16, 6],],
    [[17, 4], [18, 4],],
    [[16, 8], [16, 9],],
    [[17, 7], [18, 7],],
    [[17, 1], [17, 2],],
    [[17, 4], [17, 5],],
    [[18, 3], [19, 3],],
    [[17, 7], [17, 8], [17, 9],],
    [[18, 6], [19, 6],],
    [[18, 1], [18, 2], [18, 3], [18, 4], [18, 5], [18, 6], [18, 7], [18, 8],],
    [[19, 2], [19, 3],],
    [[19, 5], [19, 6],],
    [[11, 12], [12, 12], [13, 12], [14, 12], [15, 12],],
    [[11, 13], [12, 13],],
    [[11, 14], [12, 14],],
    [[11, 16], [12, 16], [13, 16], [14, 16],],
    [[11, 17], [12, 17],],
    [[11, 12], [11, 13], [11, 14],],
    [[11, 16], [11, 17],],
    [[12, 15], [13, 15],],
    [[12, 18], [13, 18],],
    [[12, 19], [13, 19],],
    [[12, 12], [12, 13], [12, 14], [12, 15], [12, 16], [12, 17], [12, 18], [12, 19],],
    [[13, 11], [14, 11],],
    [[13, 11], [13, 12],],
    [[13, 15], [13, 16],],
    [[13, 18], [13, 19],],
    [[14, 17], [15, 17],],
    [[14, 11], [14, 12],],
    [[15, 13], [16, 13],],
    [[14, 16], [14, 17],],
    [[15, 18], [16, 18], [17, 18], [18, 18], [19, 18],],
    [[15, 12], [15, 13],],
    [[16, 14], [17, 14], [18, 14], [19, 14],],
    [[15, 17], [15, 18],],
    [[16, 19], [17, 19],],
    [[17, 11], [18, 11],],
    [[16, 13], [16, 14],],
    [[17, 12], [18, 12],],
    [[17, 15], [18, 15],],
    [[16, 18], [16, 19],],
    [[17, 11], [17, 12],],
    [[17, 14], [17, 15],],
    [[18, 13], [19, 13],],
    [[18, 16], [19, 16],],
    [[17, 18], [17, 19],],
    [[18, 17], [19, 17],],
    [[18, 11], [18, 12], [18, 13], [18, 14], [18, 15], [18, 16], [18, 17], [18, 18],],
    [[19, 13], [19, 14],],
    [[19, 16], [19, 17], [19, 18],],
]

val = [17, 3, 3, 24, 4, 11, 24, 17, 3, 8, 30, 23, 26, 3, 9, 17, 11, 4, 6, 9, 3, 6, 7, 4, 16, 4, 3, 16, 3, 10, 3, 19, 17, 30, 3, 10, 16, 4, 17, 4, 5, 17, 10, 10, 35, 17, 24, 21, 17, 8, 27, 16, 18, 15, 30, 16, 6, 17, 17, 17, 21, 13, 3, 16, 21, 3, 8, 16, 18, 10, 11, 10, 9, 10, 13, 44, 44, 5, 6, 11, 8, 5, 39, 8, 8, 4, 15, 10, 9, 13, 9, 11, 14, 13, 21, 8, 20, 14, 12, 5, 9, 10, 14, 14, 12, 13, 9, 16, 6, 40, 4, 11, 22, 16, 7, 10, 11, 10, 13, 9, 10, 12, 42, 17, 10, 8, 10, 9, 14, 8, 8, 26, 8, 14, 9, 6, 15, 7, 8, 14, 6, 13, 15, 9, 3, 13, 10, 36, 8, 6,]


M = [[Int("m_%s_%s" % (i, j)) for j in range(20)] for i in range(20)]

s = Solver()
s.add([And(0 < M[i][j], M[i][j] <= 9) for j in range(20) for i in range(20)])
for p, v in zip(pos, val):
    s.add(sum(M[i][j] for i,j in p) == v)
    s.add(Distinct([M[i][j] for i,j in p]))

assert s.check() == sat
m = s.model()

print "".join(str(m.evaluate(M[i][j])) for i in range(20) for j in range(20))

# hitcon{6c0d62189adfd27a12289890d5b89c0dc8098bc976ecc3f6d61ec0429cccae61}