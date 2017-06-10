#!/usr/bin/env python
# encoding: utf-8

import wiener_attack
import rsatool

e = 65326441199468453286318255077403579659791312164553127869260446442105779909064937488537560101781375987673235379770584320200902922242466357110710512224365096172037200923774406729082247857808967592679310852236885503191205805867846536002124193676637708886499398965506519247168289750006311551455779911863709319947
N = 106491733927966194442570111833195971964540708710920248828539833058388088046807126527055336225402088921783018876076946794272419044969606936676842530973101509230963945247110105556900247885580601951941082462702181710167276943785261576473507495128333901938830998211916498162015185298755857306262703571421288351501
c = 33622269493924708607616624997424398912036927135599622278786063601678887543600400094409392433011134767526461813770729744913267138041445567265417022865204844947994077429853354378479239765411140344806650450747715214836133182538012671115882981194344900010564346012743782146937616191257888190694561289344531933844

# get p q by wiener attack
p, q = wiener_attack.wienerAttack(N,e)
print "p =", p
print "q =", q

#p = 10194311856500116345991071335437344259112830449723602784500482185132440071545272127462396337455347083206893822214795165240080421650126063131382626459873987
#q = 10446191506302088873130049722280729565519908477466897437611420171683609462248504391359626630778666971099098421099097879680254311470916645822384432157565423

# get d by p q
rsa = rsatool.RSA(p=int(p), q=int(q), e=e)
d = rsa.d
print "d =", rsa.d

p = str(pow(c, d, N))
print "p =", p

# decode flag

sbox = [
    0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x2E, 0x00, 0x2F, 0x13, 0x3E, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0x3C, 0x57, 0x37, 0x62, 0x4E, 0x47, 0x4A, 0x40, 0x4B, 0x03, 0x11, 0x5F, 0x0E, 0x0B, 0x35, 0x46,
    0x53, 0x5A, 0x16, 0x38, 0x49, 0x45, 0x0D, 0x32, 0x5D, 0x43, 0x61, 0x2A, 0x1F, 0x28, 0x26, 0x09,
    0x27, 0x4D, 0x08, 0x3D, 0x55, 0x22, 0x44, 0x01, 0x34, 0x56, 0x2D, 0x48, 0x0A, 0x0C, 0x42, 0x1E,
    0x30, 0x20, 0x4C, 0x10, 0x3F, 0x2B, 0x07, 0x29, 0x06, 0x4F, 0x17, 0x33, 0x39, 0x1B, 0x12, 0x19,
    0x3B, 0x05, 0x04, 0x3A, 0x18, 0x51, 0x63, 0x52, 0x15, 0x1C, 0x5B, 0x1A, 0x25, 0x1D, 0x21, 0x2C,
    0x54, 0x5E, 0x50, 0x60, 0x24, 0x02, 0x5C, 0x58, 0x41, 0x36, 0x31, 0x23, 0x0F, 0x59, 0x14, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
]

print "".join([chr(sbox.index(int(p[i:i+2]))) for i in range(0,len(p),2)])[::-1]
