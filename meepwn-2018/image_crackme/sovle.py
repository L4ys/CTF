f = open("log")

d = {}
for i, l in enumerate(filter(lambda x: "==" not in x, f.readlines())):
    v = l[:-1].split()[1]
    idx = i % 33
    if idx not in d:
        d[idx] = []
    d[idx].append(v)

for i in d:
    print "flag[%d]=" % i,
    for c in d[i][0]:
        if all(c in x for x in d[i]):
            print c,
    print
