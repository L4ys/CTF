import os
from glob import glob

flag = ""
global c
for j in range(160):
    charset = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$_-}"
    os.system("del *.txt")
    for i in charset:
        os.system("echo %s%c" % (flag, i) + "| image_crackme.exe")
        os.system("move MeePwn.ascii %d.txt" % ord(i))
        
    ascii = open("MeePwn.ascii.bak").read()

    with open("log", "a") as f:
        f.write("%03d: " % j)

        for i in glob("*.txt"):
            t = open(i).read(len(flag)+1)
            if ascii[:len(flag)+1][-1] == t[-1]:
                c = chr(int(i.rstrip(".txt")))
                f.write(c)
                #print chr(int(i.rstrip(".txt")))
        f.write("\n" + "=" * 20 + "\n")
        flag += c