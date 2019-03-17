
/home/lays/rrr:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	0000d197          	auipc	gp,0xd
   10004:	6d018193          	addi	gp,gp,1744 # 1d6d0 <_gp>
   10008:	0000d297          	auipc	t0,0xd
   1000c:	f6828293          	addi	t0,t0,-152 # 1cf70 <__malloc_max_total_mem>
   10010:	0000d317          	auipc	t1,0xd
   10014:	00030313          	mv	t1,t1
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00001517          	auipc	a0,0x1
   10028:	10850513          	addi	a0,a0,264 # 1112c <__libc_fini_array>
   1002c:	6b8000ef          	jal	ra,106e4 <atexit>
   10030:	59d010ef          	jal	ra,11dcc <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	61c000ef          	jal	ra,1065c <main>
   10044:	6fc0006f          	j	10740 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	0001d537          	lui	a0,0x1d
   10050:	0001d7b7          	lui	a5,0x1d
   10054:	ec850713          	addi	a4,a0,-312 # 1cec8 <__TMC_END__>
   10058:	ecf78793          	addi	a5,a5,-305 # 1cecf <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	ec850513          	addi	a0,a0,-312
   10078:	00030067          	jr	t1 # 0 <_ftext-0x10000>
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	0001d537          	lui	a0,0x1d
   10084:	0001d7b7          	lui	a5,0x1d
   10088:	ec850593          	addi	a1,a0,-312 # 1cec8 <__TMC_END__>
   1008c:	ec878793          	addi	a5,a5,-312 # 1cec8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	ec850513          	addi	a0,a0,-312
   100b8:	00030067          	jr	t1 # 0 <_ftext-0x10000>
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8d01c783          	lbu	a5,-1840(gp)
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	ra,1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	0001b537          	lui	a0,0x1b
   100e8:	b7850513          	addi	a0,a0,-1160 # 1ab78 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	-236(t1) # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	8cf18823          	sb	a5,-1840(gp)
   100fc:	00813083          	ld	ra,8(sp)
   10100:	00013403          	ld	s0,0(sp)
   10104:	01010113          	addi	sp,sp,16
   10108:	00008067          	ret

000000000001010c <frame_dummy>:
   1010c:	ff010113          	addi	sp,sp,-16
   10110:	000007b7          	lui	a5,0x0
   10114:	00113423          	sd	ra,8(sp)
   10118:	00078793          	mv	a5,a5
   1011c:	00078c63          	beqz	a5,10134 <frame_dummy+0x28>
   10120:	0001b537          	lui	a0,0x1b
   10124:	8d818593          	addi	a1,gp,-1832
   10128:	b7850513          	addi	a0,a0,-1160 # 1ab78 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	-300(t1) # 0 <_ftext-0x10000>
   10134:	0001c7b7          	lui	a5,0x1c
   10138:	ec878513          	addi	a0,a5,-312 # 1bec8 <__JCR_END__>
   1013c:	00053783          	ld	a5,0(a0)
   10140:	00079863          	bnez	a5,10150 <frame_dummy+0x44>
   10144:	00813083          	ld	ra,8(sp)
   10148:	01010113          	addi	sp,sp,16
   1014c:	f35ff06f          	j	10080 <register_tm_clones>
   10150:	000007b7          	lui	a5,0x0
   10154:	00078793          	mv	a5,a5
   10158:	fe0786e3          	beqz	a5,10144 <frame_dummy+0x38>
   1015c:	000780e7          	jalr	a5 # 0 <_ftext-0x10000>
   10160:	fe5ff06f          	j	10144 <frame_dummy+0x38>

0000000000010164 <print_flag>:
   10164:	f8010113          	addi	sp,sp,-128
   10168:	06113c23          	sd	ra,120(sp)
   1016c:	06813823          	sd	s0,112(sp)
   10170:	08010413          	addi	s0,sp,128
   10174:	0001a7b7          	lui	a5,0x1a
   10178:	46878593          	addi	a1,a5,1128 # 1a468 <__errno+0xc>
   1017c:	0001a7b7          	lui	a5,0x1a
   10180:	47078513          	addi	a0,a5,1136 # 1a470 <__errno+0x14>
   10184:	128010ef          	jal	ra,112ac <fopen>
   10188:	fea43423          	sd	a0,-24(s0)
   1018c:	fe843783          	ld	a5,-24(s0)
   10190:	02079663          	bnez	a5,101bc <print_flag+0x58>
   10194:	8101b783          	ld	a5,-2032(gp)
   10198:	0187b783          	ld	a5,24(a5)
   1019c:	00078693          	mv	a3,a5
   101a0:	02e00613          	li	a2,46
   101a4:	00100593          	li	a1,1
   101a8:	0001a7b7          	lui	a5,0x1a
   101ac:	48078513          	addi	a0,a5,1152 # 1a480 <__errno+0x24>
   101b0:	405010ef          	jal	ra,11db4 <fwrite>
   101b4:	fff00513          	li	a0,-1
   101b8:	588000ef          	jal	ra,10740 <exit>
   101bc:	f8043023          	sd	zero,-128(s0)
   101c0:	f8043423          	sd	zero,-120(s0)
   101c4:	f8043823          	sd	zero,-112(s0)
   101c8:	f8043c23          	sd	zero,-104(s0)
   101cc:	fa043023          	sd	zero,-96(s0)
   101d0:	fa043423          	sd	zero,-88(s0)
   101d4:	fa043823          	sd	zero,-80(s0)
   101d8:	fa043c23          	sd	zero,-72(s0)
   101dc:	fc043023          	sd	zero,-64(s0)
   101e0:	fc043423          	sd	zero,-56(s0)
   101e4:	fc043823          	sd	zero,-48(s0)
   101e8:	fc043c23          	sd	zero,-40(s0)
   101ec:	fe042023          	sw	zero,-32(s0)
   101f0:	fe042223          	sw	zero,-28(s0)
   101f4:	f8040793          	addi	a5,s0,-128
   101f8:	fe843603          	ld	a2,-24(s0)
   101fc:	06400593          	li	a1,100
   10200:	00078513          	mv	a0,a5
   10204:	3a5000ef          	jal	ra,10da8 <fgets>
   10208:	00050793          	mv	a5,a0
   1020c:	02078063          	beqz	a5,1022c <print_flag+0xc8>
   10210:	0001a7b7          	lui	a5,0x1a
   10214:	4b078513          	addi	a0,a5,1200 # 1a4b0 <__errno+0x54>
   10218:	0a1020ef          	jal	ra,12ab8 <printf>
   1021c:	f8040793          	addi	a5,s0,-128
   10220:	00078513          	mv	a0,a5
   10224:	195020ef          	jal	ra,12bb8 <puts>
   10228:	02c0006f          	j	10254 <print_flag+0xf0>
   1022c:	8101b783          	ld	a5,-2032(gp)
   10230:	0187b783          	ld	a5,24(a5)
   10234:	00078693          	mv	a3,a5
   10238:	02500613          	li	a2,37
   1023c:	00100593          	li	a1,1
   10240:	0001a7b7          	lui	a5,0x1a
   10244:	4d078513          	addi	a0,a5,1232 # 1a4d0 <__errno+0x74>
   10248:	36d010ef          	jal	ra,11db4 <fwrite>
   1024c:	fff00513          	li	a0,-1
   10250:	4f0000ef          	jal	ra,10740 <exit>
   10254:	fe843503          	ld	a0,-24(s0)
   10258:	61c000ef          	jal	ra,10874 <fclose>
   1025c:	00000013          	nop
   10260:	07813083          	ld	ra,120(sp)
   10264:	07013403          	ld	s0,112(sp)
   10268:	08010113          	addi	sp,sp,128
   1026c:	00008067          	ret

0000000000010270 <read_int>:
   10270:	fe010113          	addi	sp,sp,-32
   10274:	00113c23          	sd	ra,24(sp)
   10278:	00813823          	sd	s0,16(sp)
   1027c:	02010413          	addi	s0,sp,32
   10280:	fe043023          	sd	zero,-32(s0)
   10284:	fe041423          	sh	zero,-24(s0)
   10288:	fe040793          	addi	a5,s0,-32
   1028c:	00500613          	li	a2,5
   10290:	00078593          	mv	a1,a5
   10294:	00000513          	li	a0,0
   10298:	665090ef          	jal	ra,1a0fc <read>
   1029c:	fe040793          	addi	a5,s0,-32
   102a0:	00078513          	mv	a0,a5
   102a4:	454000ef          	jal	ra,106f8 <atoi>
   102a8:	00050793          	mv	a5,a0
   102ac:	00078513          	mv	a0,a5
   102b0:	01813083          	ld	ra,24(sp)
   102b4:	01013403          	ld	s0,16(sp)
   102b8:	02010113          	addi	sp,sp,32
   102bc:	00008067          	ret

00000000000102c0 <f4>:
   102c0:	fd010113          	addi	sp,sp,-48
   102c4:	02813423          	sd	s0,40(sp)
   102c8:	03010413          	addi	s0,sp,48
   102cc:	fca42e23          	sw	a0,-36(s0); var36 = arg1
   102d0:	fcb42c23          	sw	a1,-40(s0); var40 = arg2
   102d4:	0300006f          	j	10304 <f4+0x44>

   102d8:	fdc42703          	lw	a4,-36(s0) ; a4 = var36
   102dc:	fd842783          	lw	a5,-40(s0) ; a5 = var40
   102e0:	00f777b3          	and	a5,a4,a5  ; var20 = var36 & var40
   102e4:	fef42623          	sw	a5,-20(s0)

   102e8:	fdc42703          	lw	a4,-36(s0) ; a4 = var36
   102ec:	fd842783          	lw	a5,-40(s0) ; a5 = var40
   102f0:	00f747b3          	xor	a5,a4,a5   ; var36 = var36 ^ var40
   102f4:	fcf42e23          	sw	a5,-36(s0)

   102f8:	fec42783          	lw	a5,-20(s0)
   102fc:	0017979b          	slliw	a5,a5,0x1 ; var40 = var20 << 1
   10300:	fcf42c23          	sw	a5,-40(s0)

   10304:	fd842783          	lw	a5,-40(s0) ; a5 = var40
   10308:	fc0798e3          	bnez	a5,102d8 <f4+0x18>

   1030c:	fdc42783          	lw	a5,-36(s0)  ; reurn var36
   10310:	00078513          	mv	a0,a5
   10314:	02813403          	ld	s0,40(sp)
   10318:	03010113          	addi	sp,sp,48
   1031c:	00008067          	ret

0000000000010320 <f44>: ; * -1
   10320:	fe010113          	addi	sp,sp,-32
   10324:	00113c23          	sd	ra,24(sp)
   10328:	00813823          	sd	s0,16(sp)
   1032c:	02010413          	addi	s0,sp,32

   10330:	fea42623          	sw	a0,-20(s0) ; var20 = arg1
   ; var20 = !var20
   10334:	fec42783          	lw	a5,-20(s0) ; 
   10338:	fff7c793          	not	a5,a5       ;
    ; 
   1033c:	00100593          	li	a1,1        ;
   10340:	00078513          	mv	a0,a5       ; return f4(a5, 1)
   10344:	f7dff0ef          	jal	ra,102c0 <f4>
   10348:	00050793          	mv	a5,a0
   1034c:	00078513          	mv	a0,a5
   10350:	01813083          	ld	ra,24(sp)
   10354:	01013403          	ld	s0,16(sp)
   10358:	02010113          	addi	sp,sp,32
   1035c:	00008067          	ret

0000000000010360 <f444>: ; sub
   10360:	fe010113          	addi	sp,sp,-32
   10364:	00113c23          	sd	ra,24(sp)
   10368:	00813823          	sd	s0,16(sp)
   1036c:	02010413          	addi	s0,sp,32
    ; var20 = arg1
    ; var24 = arg2
   10370:	fea42623          	sw	a0,-20(s0)
   10374:	feb42423          	sw	a1,-24(s0)
   10378:	fe842503          	lw	a0,-24(s0)
   ; a5 = f44(var24)
   1037c:	fa5ff0ef          	jal	ra,10320 <f44>
   10380:	00050793          	mv	a5,a0

    ; f4(var20, a5)
   10384:	00078593          	mv	a1,a5
   10388:	fec42503          	lw	a0,-20(s0)
   1038c:	f35ff0ef          	jal	ra,102c0 <f4>

   10390:	00050793          	mv	a5,a0
   10394:	00078513          	mv	a0,a5
   10398:	01813083          	ld	ra,24(sp)
   1039c:	01013403          	ld	s0,16(sp)
   103a0:	02010113          	addi	sp,sp,32
   103a4:	00008067          	ret

00000000000103a8 <f4444>:
   103a8:	fd010113          	addi	sp,sp,-48
   103ac:	02113423          	sd	ra,40(sp)
   103b0:	02813023          	sd	s0,32(sp)
   103b4:	03010413          	addi	s0,sp,48

   103b8:	fca42e23          	sw	a0,-36(s0)   ; var36 = arg1
   103bc:	fcb42c23          	sw	a1,-40(s0)   ; var40 = arg2

   103c0:	00100793          	li	a5,1         ; 
   103c4:	fef42623          	sw	a5,-20(s0)   ; var20 = 1
   103c8:	fe042423          	sw	zero,-24(s0) ; var24 = 0

   103cc:	fdc42783          	lw	a5,-36(s0)   ; 
   103d0:	0407dc63          	bgez	a5,10428 <f4444+0x80> ; if var36 >= 0 goto 10428

    ; var36 = f44(var36) ; *= -1
   103d4:	fdc42503          	lw	a0,-36(s0)
   103d8:	f49ff0ef          	jal	ra,10320 <f44>
   103dc:	fca42e23          	sw	a0,-36(s0)
    ; var40 = f44(var40) ; *= -1
   103e0:	fd842503          	lw	a0,-40(s0)
   103e4:	f3dff0ef          	jal	ra,10320 <f44>
   103e8:	fca42c23          	sw	a0,-40(s0)
    ; 
   103ec:	03c0006f          	j	10428 <f4444+0x80>

   103f0:	fdc42703          	lw	a4,-36(s0)   ; if var36 & var40 != 0 goto 10410
   103f4:	fec42783          	lw	a5,-20(s0)
   103f8:	00f777b3          	and	a5,a4,a5
   103fc:	00078a63          	beqz	a5,10410 <f4444+0x68>

   ; var24 = f4(var40, var24)
   10400:	fe842583          	lw	a1,-24(s0)
   10404:	fd842503          	lw	a0,-40(s0)
   10408:	eb9ff0ef          	jal	ra,102c0 <f4>
   1040c:	fea42423          	sw	a0,-24(s0)

; var40 <<= 1
   10410:	fd842783          	lw	a5,-40(s0)
   10414:	0017979b          	slliw	a5,a5,0x1
   10418:	fcf42c23          	sw	a5,-40(s0)
; var20 <<=1
   1041c:	fec42783          	lw	a5,-20(s0)
   10420:	0017979b          	slliw	a5,a5,0x1
   10424:	fef42623          	sw	a5,-20(s0)

   10428:	fdc42703          	lw	a4,-36(s0) ; a4 = var36
   1042c:	fec42783          	lw	a5,-20(s0) ; a5 = var20
   10430:	00f74663          	blt	a4,a5,1043c <f4444+0x94> ; if var36 < var20 ; goto 1043c

   10434:	fd842783          	lw	a5,-40(s0)
   10438:	fa079ce3          	bnez	a5,103f0 <f4444+0x48> ; if var40 != 0 goto 103f0

   1043c:	fe842783          	lw	a5,-24(s0)
   10440:	00078513          	mv	a0,a5
   10444:	02813083          	ld	ra,40(sp)
   10448:	02013403          	ld	s0,32(sp)
   1044c:	03010113          	addi	sp,sp,48
   10450:	00008067          	ret

0000000000010454 <game>:
   10454:	fb010113          	addi	sp,sp,-80
   10458:	04113423          	sd	ra,72(sp)
   1045c:	04813023          	sd	s0,64(sp)
   10460:	05010413          	addi	s0,sp,80
   10464:	fe042623          	sw	zero,-20(s0)
   10468:	fe042423          	sw	zero,-24(s0)

   ; fopen("/dev/urandom", "r")
   1046c:	0001a7b7          	lui	a5,0x1a
   10470:	46878593          	addi	a1,a5,1128 # 1a468 <__errno+0xc>
   10474:	0001a7b7          	lui	a5,0x1a
   10478:	4f878513          	addi	a0,a5,1272 # 1a4f8 <__errno+0x9c>
   1047c:	631000ef          	jal	ra,112ac <fopen>
   10480:	fea43023          	sd	a0,-32(s0)
   10484:	fe043783          	ld	a5,-32(s0)
   ; if fp !=0 go 104b4
       10488:	02079663          	bnez	a5,104b4 <game+0x60>
       1048c:	8101b783          	ld	a5,-2032(gp)
       10490:	0187b783          	ld	a5,24(a5)
       10494:	00078693          	mv	a3,a5
       10498:	02c00613          	li	a2,44
       1049c:	00100593          	li	a1,1
       104a0:	0001a7b7          	lui	a5,0x1a
       104a4:	50878513          	addi	a0,a5,1288 # 1a508 <__errno+0xac>
       104a8:	10d010ef          	jal	ra,11db4 <fwrite>
       ; fwirte Error
       104ac:	fff00513          	li	a0,-1
       104b0:	290000ef          	jal	ra,10740 <exit>

   104b4:	fe042623          	sw	zero,-20(s0)
   104b8:	17c0006f          	j	10634 <game+0x1e0>
   104bc:	fec42783          	lw	a5,-20(s0); i 
   104c0:	0017879b          	addiw	a5,a5,1 ; i ++
   ; printf("round %d\n", i);
   104c4:	00078593          	mv	a1,a5
   104c8:	0001a7b7          	lui	a5,0x1a
   104cc:	53878513          	addi	a0,a5,1336 # 1a538 <__errno+0xdc>
   104d0:	5e8020ef          	jal	ra,12ab8 <printf>

   ; fget(random)
   104d4:	fe043503          	ld	a0,-32(s0)
   104d8:	700000ef          	jal	ra,10bd8 <fgetc>
   104dc:	fca42e23          	sw	a0,-36(s0)

   104e0:	fe043503          	ld	a0,-32(s0)
   104e4:	6f4000ef          	jal	ra,10bd8 <fgetc>
   104e8:	fca42c23          	sw	a0,-40(s0)

   104ec:	fe043503          	ld	a0,-32(s0)
   104f0:	6e8000ef          	jal	ra,10bd8 <fgetc>
   104f4:	fca42a23          	sw	a0,-44(s0)

   104f8:	fe043503          	ld	a0,-32(s0)
   104f:	6dc000ef          	jal	ra,10bd8 <fgetc>
   10500:	fca42823          	sw	a0,-48(s0)

; f4(var52=0, rand[0])
; var52 += rand[0]
   10504:	fc042623          	sw	zero,-52(s0)
   10508:	fdc42583          	lw	a1,-36(s0)
   1050c:	fcc42503          	lw	a0,-52(s0)
   10510:	db1ff0ef          	jal	ra,102c0 <f4>
   10514:	fca42623          	sw	a0,-52(s0)
; var 52 = f4444(var52, rand[1]);
   10518:	fd842583          	lw	a1,-40(s0)
   1051c:	fcc42503          	lw	a0,-52(s0)
   10520:	e89ff0ef          	jal	ra,103a8 <f4444>
   10524:	fca42623          	sw	a0,-52(s0)
; f444(var52, rand[2]);
;  var52 -= rand[2]
   10528:	fd442583          	lw	a1,-44(s0)
   1052c:	fcc42503          	lw	a0,-52(s0)
   10530:	e31ff0ef          	jal	ra,10360 <f444>
   10534:	fca42623          	sw	a0,-52(s0)
; f4444(var52, rand[3]);
   10538:	fd042583          	lw	a1,-48(s0)
   1053c:	fcc42503          	lw	a0,-52(s0)
   10540:	e69ff0ef          	jal	ra,103a8 <f4444>

; printf("secret %d\n", var_52);
   10544:	fca42623          	sw	a0,-52(s0)
   10548:	fcc42583          	lw	a1,-52(s0)
   1054c:	0001a7b7          	lui	a5,0x1a
   10550:	54878513          	addi	a0,a5,1352 # 1a548 <__errno+0xec>
   10554:	564020ef          	jal	ra,12ab8 <printf>

; var24 = 0
   10558:	fe042423          	sw	zero,-24(s0)
   1055c:	0440006f          	j	105a0 <game+0x14c>

    ; i++
   10560:	fe842783          	lw	a5,-24(s0)
   10564:	0017879b          	addiw	a5,a5,1
   ; a1 = i + 1
   10568:	00078593          	mv	a1,a5
; printf("\n");
   1056c:	0001a7b7          	lui	a5,0x1a
   10570:	55878513          	addi	a0,a5,1368 # 1a558 <__errno+0xfc>
   10574:	544020ef          	jal	ra,12ab8 <printf>

; a4 = read_int()
   10578:	cf9ff0ef          	jal	ra,10270 <read_int>
   1057c:	00050713          	mv	a4,a0
;a5 = var24 << 2  (i*4)
   10580:	fe842783          	lw	a5,-24(s0)
   10584:	00279793          	slli	a5,a5,0x2
;a3  = s0 - 16
   10588:	ff040693          	addi	a3,s0,-16
; a5 += a3
   1058c:	00f687b3          	add	a5,a3,a5
; ans[i] = a4
   10590:	fce7a423          	sw	a4,-56(a5)
   10594:	fe842783          	lw	a5,-24(s0)
   10598:	0017879b          	addiw	a5,a5,1
   1059c:	fef42423          	sw	a5,-24(s0)

;a4 = var24 (i)
;a5 = 3
   105a0:	fe842703          	lw	a4,-24(s0)
   105a4:	00300793          	li	a5,3

   105a8:	fae7dce3          	ble	a4,a5,10560 <game+0x10c>

;var56 = 0
; f4(0, 
   105ac:	fc042423          	sw	zero,-56(s0)
   105b0:	fb842783          	lw	a5,-72(s0)
   105b4:	00078593          	mv	a1,a5
   105b8:	fc842503          	lw	a0,-56(s0)
   105bc:	d05ff0ef          	jal	ra,102c0 <f4>

   105c0:	fca42423          	sw	a0,-56(s0)
   105c4:	fbc42783          	lw	a5,-68(s0)
   105c8:	00078593          	mv	a1,a5
   105cc:	fc842503          	lw	a0,-56(s0)
   105d0:	dd9ff0ef          	jal	ra,103a8 <f4444>
   105d4:	fca42423          	sw	a0,-56(s0)

   105d8:	fc042783          	lw	a5,-64(s0)
   105dc:	00078593          	mv	a1,a5
   105e0:	fc842503          	lw	a0,-56(s0)
   105e4:	d7dff0ef          	jal	ra,10360 <f444>
   105e8:	fca42423          	sw	a0,-56(s0)

   105ec:	fc442783          	lw	a5,-60(s0)
   105f0:	00078593          	mv	a1,a5
   105f4:	fc842503          	lw	a0,-56(s0)
   105f8:	db1ff0ef          	jal	ra,103a8 <f4444>
   105fc:	fca42423          	sw	a0,-56(s0)

   ; if var52 == var 56 goto pass
   10600:	fcc42703          	lw	a4,-52(s0)
   10604:	fc842783          	lw	a5,-56(s0)
   10608:	00f70a63          	beq	a4,a5,1061c <game+0x1c8>

       ;puts("Failed")
       1060c:	0001a7b7          	lui	a5,0x1a
       10610:	57878513          	addi	a0,a5,1400 # 1a578 <__errno+0x11c>
       10614:	5a4020ef          	jal	ra,12bb8 <puts>
       10618:	0340006f          	j	1064c <game+0x1f8>

   ;puts("Pass")
   1061c:	0001a7b7          	lui	a5,0x1a
   10620:	58878513          	addi	a0,a5,1416 # 1a588 <__errno+0x12c>
   10624:	594020ef          	jal	ra,12bb8 <puts>

   10628:	fec42783          	lw	a5,-20(s0)
   1062c:	0017879b          	addiw	a5,a5,1
   10630:	fef42623          	sw	a5,-20(s0)

   10634:	fec42703          	lw	a4,-20(s0)
   10638:	00900793          	li	a5,9
   ;while i < 9
   1063c:	e8e7d0e3          	ble	a4,a5,104bc <game+0x68>
   10640:	fe043503          	ld	a0,-32(s0)
   10644:	230000ef          	jal	ra,10874 <fclose>
   10648:	b1dff0ef          	jal	ra,10164 <print_flag>
   1064c:	04813083          	ld	ra,72(sp)
   10650:	04013403          	ld	s0,64(sp)
   10654:	05010113          	addi	sp,sp,80
   10658:	00008067          	ret

000000000001065c <main>:
   1065c:	fe010113          	addi	sp,sp,-32
   10660:	00113c23          	sd	ra,24(sp)
   10664:	00813823          	sd	s0,16(sp)
   10668:	02010413          	addi	s0,sp,32
   1066c:	fea42623          	sw	a0,-20(s0)
   10670:	feb43023          	sd	a1,-32(s0)
   10674:	8101b783          	ld	a5,-2032(gp)
   10678:	0087b783          	ld	a5,8(a5)
   1067c:	00000693          	li	a3,0
   10680:	00200613          	li	a2,2
   10684:	00000593          	li	a1,0
   10688:	00078513          	mv	a0,a5
   1068c:	01d020ef          	jal	ra,12ea8 <setvbuf>
   10690:	8101b783          	ld	a5,-2032(gp)
   10694:	0107b783          	ld	a5,16(a5)
   10698:	00000693          	li	a3,0
   1069c:	00200613          	li	a2,2
   106a0:	00000593          	li	a1,0
   106a4:	00078513          	mv	a0,a5
   106a8:	001020ef          	jal	ra,12ea8 <setvbuf>
   106ac:	8101b783          	ld	a5,-2032(gp)
   106b0:	0187b783          	ld	a5,24(a5)
   106b4:	00000693          	li	a3,0
   106b8:	00200613          	li	a2,2
   106bc:	00000593          	li	a1,0
   106c0:	00078513          	mv	a0,a5
   106c4:	7e4020ef          	jal	ra,12ea8 <setvbuf>
   106c8:	d8dff0ef          	jal	ra,10454 <game>
   106cc:	00000793          	li	a5,0
   106d0:	00078513          	mv	a0,a5
   106d4:	01813083          	ld	ra,24(sp)
   106d8:	01013403          	ld	s0,16(sp)
   106dc:	02010113          	addi	sp,sp,32
   106e0:	00008067          	ret

00000000000106e4 <atexit>:
   106e4:	00050593          	mv	a1,a0
   106e8:	00000693          	li	a3,0
   106ec:	00000613          	li	a2,0
   106f0:	00000513          	li	a0,0
   106f4:	4690406f          	j	1535c <__register_exitproc>

00000000000106f8 <atoi>:
   106f8:	ff010113          	addi	sp,sp,-16
   106fc:	00a00613          	li	a2,10
   10700:	00000593          	li	a1,0
   10704:	00113423          	sd	ra,8(sp)
   10708:	581020ef          	jal	ra,13488 <strtol>
   1070c:	00813083          	ld	ra,8(sp)
   10710:	0005051b          	sext.w	a0,a0
   10714:	01010113          	addi	sp,sp,16
   10718:	00008067          	ret

000000000001071c <_atoi_r>:
   1071c:	ff010113          	addi	sp,sp,-16
   10720:	00a00693          	li	a3,10
   10724:	00000613          	li	a2,0
   10728:	00113423          	sd	ra,8(sp)
   1072c:	381020ef          	jal	ra,132ac <_strtol_r>
   10730:	00813083          	ld	ra,8(sp)
   10734:	0005051b          	sext.w	a0,a0
   10738:	01010113          	addi	sp,sp,16
   1073c:	00008067          	ret

0000000000010740 <exit>:
   10740:	ff010113          	addi	sp,sp,-16
   10744:	00000593          	li	a1,0
   10748:	00813023          	sd	s0,0(sp)
   1074c:	00113423          	sd	ra,8(sp)
   10750:	00050413          	mv	s0,a0
   10754:	519040ef          	jal	ra,1546c <__call_exitprocs>
   10758:	8081b503          	ld	a0,-2040(gp)
   1075c:	05853783          	ld	a5,88(a0)
   10760:	00078463          	beqz	a5,10768 <exit+0x28>
   10764:	000780e7          	jalr	a5
   10768:	00040513          	mv	a0,s0
   1076c:	4d5090ef          	jal	ra,1a440 <_exit>

0000000000010770 <_fclose_r>:
   10770:	0e058e63          	beqz	a1,1086c <_fclose_r+0xfc>
   10774:	fe010113          	addi	sp,sp,-32
   10778:	00813823          	sd	s0,16(sp)
   1077c:	00913423          	sd	s1,8(sp)
   10780:	00113c23          	sd	ra,24(sp)
   10784:	01213023          	sd	s2,0(sp)
   10788:	00050493          	mv	s1,a0
   1078c:	00058413          	mv	s0,a1
   10790:	00050663          	beqz	a0,1079c <_fclose_r+0x2c>
   10794:	05052783          	lw	a5,80(a0)
   10798:	0a078a63          	beqz	a5,1084c <_fclose_r+0xdc>
   1079c:	01041783          	lh	a5,16(s0)
   107a0:	00000513          	li	a0,0
   107a4:	00079e63          	bnez	a5,107c0 <_fclose_r+0x50>
   107a8:	01813083          	ld	ra,24(sp)
   107ac:	01013403          	ld	s0,16(sp)
   107b0:	00813483          	ld	s1,8(sp)
   107b4:	00013903          	ld	s2,0(sp)
   107b8:	02010113          	addi	sp,sp,32
   107bc:	00008067          	ret
   107c0:	00040593          	mv	a1,s0
   107c4:	00048513          	mv	a0,s1
   107c8:	0b8000ef          	jal	ra,10880 <__sflush_r>
   107cc:	05043783          	ld	a5,80(s0)
   107d0:	00050913          	mv	s2,a0
   107d4:	00078a63          	beqz	a5,107e8 <_fclose_r+0x78>
   107d8:	03043583          	ld	a1,48(s0)
   107dc:	00048513          	mv	a0,s1
   107e0:	000780e7          	jalr	a5
   107e4:	06054863          	bltz	a0,10854 <_fclose_r+0xe4>
   107e8:	01045783          	lhu	a5,16(s0)
   107ec:	0807f793          	andi	a5,a5,128
   107f0:	06079663          	bnez	a5,1085c <_fclose_r+0xec>
   107f4:	05843583          	ld	a1,88(s0)
   107f8:	00058c63          	beqz	a1,10810 <_fclose_r+0xa0>
   107fc:	07440793          	addi	a5,s0,116
   10800:	00f58663          	beq	a1,a5,1080c <_fclose_r+0x9c>
   10804:	00048513          	mv	a0,s1
   10808:	3cd000ef          	jal	ra,113d4 <_free_r>
   1080c:	04043c23          	sd	zero,88(s0)
   10810:	07843583          	ld	a1,120(s0)
   10814:	00058863          	beqz	a1,10824 <_fclose_r+0xb4>
   10818:	00048513          	mv	a0,s1
   1081c:	3b9000ef          	jal	ra,113d4 <_free_r>
   10820:	06043c23          	sd	zero,120(s0)
   10824:	0d9000ef          	jal	ra,110fc <__sfp_lock_acquire>
   10828:	00041823          	sh	zero,16(s0)
   1082c:	0d5000ef          	jal	ra,11100 <__sfp_lock_release>
   10830:	01813083          	ld	ra,24(sp)
   10834:	00090513          	mv	a0,s2
   10838:	01013403          	ld	s0,16(sp)
   1083c:	00813483          	ld	s1,8(sp)
   10840:	00013903          	ld	s2,0(sp)
   10844:	02010113          	addi	sp,sp,32
   10848:	00008067          	ret
   1084c:	0a1000ef          	jal	ra,110ec <__sinit>
   10850:	f4dff06f          	j	1079c <_fclose_r+0x2c>
   10854:	fff00913          	li	s2,-1
   10858:	f91ff06f          	j	107e8 <_fclose_r+0x78>
   1085c:	01843583          	ld	a1,24(s0)
   10860:	00048513          	mv	a0,s1
   10864:	371000ef          	jal	ra,113d4 <_free_r>
   10868:	f8dff06f          	j	107f4 <_fclose_r+0x84>
   1086c:	00000513          	li	a0,0
   10870:	00008067          	ret

0000000000010874 <fclose>:
   10874:	00050593          	mv	a1,a0
   10878:	8101b503          	ld	a0,-2032(gp)
   1087c:	ef5ff06f          	j	10770 <_fclose_r>

0000000000010880 <__sflush_r>:
   10880:	01059683          	lh	a3,16(a1)
   10884:	fd010113          	addi	sp,sp,-48
   10888:	00913c23          	sd	s1,24(sp)
   1088c:	03069713          	slli	a4,a3,0x30
   10890:	03075713          	srli	a4,a4,0x30
   10894:	01313423          	sd	s3,8(sp)
   10898:	02113423          	sd	ra,40(sp)
   1089c:	02813023          	sd	s0,32(sp)
   108a0:	01213823          	sd	s2,16(sp)
   108a4:	00877793          	andi	a5,a4,8
   108a8:	00058493          	mv	s1,a1
   108ac:	00050993          	mv	s3,a0
   108b0:	0e079863          	bnez	a5,109a0 <__sflush_r+0x120>
   108b4:	000017b7          	lui	a5,0x1
   108b8:	8007879b          	addiw	a5,a5,-2048
   108bc:	00f6e7b3          	or	a5,a3,a5
   108c0:	0107979b          	slliw	a5,a5,0x10
   108c4:	0085a703          	lw	a4,8(a1)
   108c8:	4107d79b          	sraiw	a5,a5,0x10
   108cc:	00f59823          	sh	a5,16(a1)
   108d0:	1ae05863          	blez	a4,10a80 <__sflush_r+0x200>
   108d4:	0484b703          	ld	a4,72(s1)
   108d8:	0a070463          	beqz	a4,10980 <__sflush_r+0x100>
   108dc:	03079793          	slli	a5,a5,0x30
   108e0:	0307d793          	srli	a5,a5,0x30
   108e4:	0009a403          	lw	s0,0(s3)
   108e8:	03379693          	slli	a3,a5,0x33
   108ec:	0009a023          	sw	zero,0(s3)
   108f0:	1806de63          	bgez	a3,10a8c <__sflush_r+0x20c>
   108f4:	0904b603          	ld	a2,144(s1)
   108f8:	0047f793          	andi	a5,a5,4
   108fc:	00078e63          	beqz	a5,10918 <__sflush_r+0x98>
   10900:	0084a683          	lw	a3,8(s1)
   10904:	0584b783          	ld	a5,88(s1)
   10908:	40d60633          	sub	a2,a2,a3
   1090c:	00078663          	beqz	a5,10918 <__sflush_r+0x98>
   10910:	0704a783          	lw	a5,112(s1)
   10914:	40f60633          	sub	a2,a2,a5
   10918:	0304b583          	ld	a1,48(s1)
   1091c:	00000693          	li	a3,0
   10920:	00098513          	mv	a0,s3
   10924:	000700e7          	jalr	a4
   10928:	fff00793          	li	a5,-1
   1092c:	0ef50c63          	beq	a0,a5,10a24 <__sflush_r+0x1a4>
   10930:	0104d683          	lhu	a3,16(s1)
   10934:	fffff7b7          	lui	a5,0xfffff
   10938:	7ff7879b          	addiw	a5,a5,2047
   1093c:	0184b703          	ld	a4,24(s1)
   10940:	00f6f7b3          	and	a5,a3,a5
   10944:	0107979b          	slliw	a5,a5,0x10
   10948:	4107d79b          	sraiw	a5,a5,0x10
   1094c:	00e4b023          	sd	a4,0(s1)
   10950:	00f49823          	sh	a5,16(s1)
   10954:	0004a423          	sw	zero,8(s1)
   10958:	03379713          	slli	a4,a5,0x33
   1095c:	10074e63          	bltz	a4,10a78 <__sflush_r+0x1f8>
   10960:	0584b583          	ld	a1,88(s1)
   10964:	0089a023          	sw	s0,0(s3)
   10968:	00058c63          	beqz	a1,10980 <__sflush_r+0x100>
   1096c:	07448793          	addi	a5,s1,116
   10970:	00f58663          	beq	a1,a5,1097c <__sflush_r+0xfc>
   10974:	00098513          	mv	a0,s3
   10978:	25d000ef          	jal	ra,113d4 <_free_r>
   1097c:	0404bc23          	sd	zero,88(s1)
   10980:	00000513          	li	a0,0
   10984:	02813083          	ld	ra,40(sp)
   10988:	02013403          	ld	s0,32(sp)
   1098c:	01813483          	ld	s1,24(sp)
   10990:	01013903          	ld	s2,16(sp)
   10994:	00813983          	ld	s3,8(sp)
   10998:	03010113          	addi	sp,sp,48
   1099c:	00008067          	ret
   109a0:	0185b903          	ld	s2,24(a1)
   109a4:	fc090ee3          	beqz	s2,10980 <__sflush_r+0x100>
   109a8:	0005b403          	ld	s0,0(a1)
   109ac:	00377713          	andi	a4,a4,3
   109b0:	0125b023          	sd	s2,0(a1)
   109b4:	4124043b          	subw	s0,s0,s2
   109b8:	00000793          	li	a5,0
   109bc:	00071463          	bnez	a4,109c4 <__sflush_r+0x144>
   109c0:	0205a783          	lw	a5,32(a1)
   109c4:	00f4a623          	sw	a5,12(s1)
   109c8:	00804863          	bgtz	s0,109d8 <__sflush_r+0x158>
   109cc:	fb5ff06f          	j	10980 <__sflush_r+0x100>
   109d0:	00a90933          	add	s2,s2,a0
   109d4:	fa8056e3          	blez	s0,10980 <__sflush_r+0x100>
   109d8:	0404b783          	ld	a5,64(s1)
   109dc:	0304b583          	ld	a1,48(s1)
   109e0:	00040693          	mv	a3,s0
   109e4:	00090613          	mv	a2,s2
   109e8:	00098513          	mv	a0,s3
   109ec:	000780e7          	jalr	a5 # fffffffffffff000 <_gp+0xfffffffffffe1930>
   109f0:	40a4043b          	subw	s0,s0,a0
   109f4:	fca04ee3          	bgtz	a0,109d0 <__sflush_r+0x150>
   109f8:	0104d783          	lhu	a5,16(s1)
   109fc:	02813083          	ld	ra,40(sp)
   10a00:	fff00513          	li	a0,-1
   10a04:	0407e793          	ori	a5,a5,64
   10a08:	00f49823          	sh	a5,16(s1)
   10a0c:	02013403          	ld	s0,32(sp)
   10a10:	01813483          	ld	s1,24(sp)
   10a14:	01013903          	ld	s2,16(sp)
   10a18:	00813983          	ld	s3,8(sp)
   10a1c:	03010113          	addi	sp,sp,48
   10a20:	00008067          	ret
   10a24:	0009a703          	lw	a4,0(s3)
   10a28:	01d00793          	li	a5,29
   10a2c:	fce7e6e3          	bltu	a5,a4,109f8 <__sflush_r+0x178>
   10a30:	204007b7          	lui	a5,0x20400
   10a34:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e2931>
   10a38:	00e7d7b3          	srl	a5,a5,a4
   10a3c:	0017f793          	andi	a5,a5,1
   10a40:	fa078ce3          	beqz	a5,109f8 <__sflush_r+0x178>
   10a44:	0104d603          	lhu	a2,16(s1)
   10a48:	fffff7b7          	lui	a5,0xfffff
   10a4c:	7ff7879b          	addiw	a5,a5,2047
   10a50:	0184b683          	ld	a3,24(s1)
   10a54:	00f677b3          	and	a5,a2,a5
   10a58:	0107979b          	slliw	a5,a5,0x10
   10a5c:	4107d79b          	sraiw	a5,a5,0x10
   10a60:	00d4b023          	sd	a3,0(s1)
   10a64:	00f49823          	sh	a5,16(s1)
   10a68:	0004a423          	sw	zero,8(s1)
   10a6c:	03379693          	slli	a3,a5,0x33
   10a70:	ee06d8e3          	bgez	a3,10960 <__sflush_r+0xe0>
   10a74:	ee0716e3          	bnez	a4,10960 <__sflush_r+0xe0>
   10a78:	08a4b823          	sd	a0,144(s1)
   10a7c:	ee5ff06f          	j	10960 <__sflush_r+0xe0>
   10a80:	0705a703          	lw	a4,112(a1)
   10a84:	e4e048e3          	bgtz	a4,108d4 <__sflush_r+0x54>
   10a88:	ef9ff06f          	j	10980 <__sflush_r+0x100>
   10a8c:	0304b583          	ld	a1,48(s1)
   10a90:	00000613          	li	a2,0
   10a94:	00100693          	li	a3,1
   10a98:	00098513          	mv	a0,s3
   10a9c:	000700e7          	jalr	a4
   10aa0:	fff00793          	li	a5,-1
   10aa4:	00050613          	mv	a2,a0
   10aa8:	00f50863          	beq	a0,a5,10ab8 <__sflush_r+0x238>
   10aac:	0104d783          	lhu	a5,16(s1)
   10ab0:	0484b703          	ld	a4,72(s1)
   10ab4:	e45ff06f          	j	108f8 <__sflush_r+0x78>
   10ab8:	0009a783          	lw	a5,0(s3)
   10abc:	fe0788e3          	beqz	a5,10aac <__sflush_r+0x22c>
   10ac0:	01d00713          	li	a4,29
   10ac4:	00e78663          	beq	a5,a4,10ad0 <__sflush_r+0x250>
   10ac8:	01600713          	li	a4,22
   10acc:	00e79863          	bne	a5,a4,10adc <__sflush_r+0x25c>
   10ad0:	0089a023          	sw	s0,0(s3)
   10ad4:	00000513          	li	a0,0
   10ad8:	eadff06f          	j	10984 <__sflush_r+0x104>
   10adc:	0104d783          	lhu	a5,16(s1)
   10ae0:	0407e793          	ori	a5,a5,64
   10ae4:	00f49823          	sh	a5,16(s1)
   10ae8:	e9dff06f          	j	10984 <__sflush_r+0x104>

0000000000010aec <_fflush_r>:
   10aec:	fe010113          	addi	sp,sp,-32
   10af0:	00813823          	sd	s0,16(sp)
   10af4:	00113c23          	sd	ra,24(sp)
   10af8:	00050413          	mv	s0,a0
   10afc:	00050663          	beqz	a0,10b08 <_fflush_r+0x1c>
   10b00:	05052783          	lw	a5,80(a0)
   10b04:	02078a63          	beqz	a5,10b38 <_fflush_r+0x4c>
   10b08:	01059783          	lh	a5,16(a1)
   10b0c:	00079c63          	bnez	a5,10b24 <_fflush_r+0x38>
   10b10:	01813083          	ld	ra,24(sp)
   10b14:	00000513          	li	a0,0
   10b18:	01013403          	ld	s0,16(sp)
   10b1c:	02010113          	addi	sp,sp,32
   10b20:	00008067          	ret
   10b24:	00040513          	mv	a0,s0
   10b28:	01813083          	ld	ra,24(sp)
   10b2c:	01013403          	ld	s0,16(sp)
   10b30:	02010113          	addi	sp,sp,32
   10b34:	d4dff06f          	j	10880 <__sflush_r>
   10b38:	00b13423          	sd	a1,8(sp)
   10b3c:	5b0000ef          	jal	ra,110ec <__sinit>
   10b40:	00813583          	ld	a1,8(sp)
   10b44:	fc5ff06f          	j	10b08 <_fflush_r+0x1c>

0000000000010b48 <fflush>:
   10b48:	00050593          	mv	a1,a0
   10b4c:	00050663          	beqz	a0,10b58 <fflush+0x10>
   10b50:	8101b503          	ld	a0,-2032(gp)
   10b54:	f99ff06f          	j	10aec <_fflush_r>
   10b58:	8081b503          	ld	a0,-2040(gp)
   10b5c:	000115b7          	lui	a1,0x11
   10b60:	aec58593          	addi	a1,a1,-1300 # 10aec <_fflush_r>
   10b64:	0c40106f          	j	11c28 <_fwalk_reent>

0000000000010b68 <_fgetc_r>:
   10b68:	fe010113          	addi	sp,sp,-32
   10b6c:	00813823          	sd	s0,16(sp)
   10b70:	00113c23          	sd	ra,24(sp)
   10b74:	00050413          	mv	s0,a0
   10b78:	00050663          	beqz	a0,10b84 <_fgetc_r+0x1c>
   10b7c:	05052783          	lw	a5,80(a0)
   10b80:	02078a63          	beqz	a5,10bb4 <_fgetc_r+0x4c>
   10b84:	0085a783          	lw	a5,8(a1)
   10b88:	fff7879b          	addiw	a5,a5,-1
   10b8c:	00f5a423          	sw	a5,8(a1)
   10b90:	0207ca63          	bltz	a5,10bc4 <_fgetc_r+0x5c>
   10b94:	0005b783          	ld	a5,0(a1)
   10b98:	01813083          	ld	ra,24(sp)
   10b9c:	01013403          	ld	s0,16(sp)
   10ba0:	00178713          	addi	a4,a5,1 # fffffffffffff001 <_gp+0xfffffffffffe1931>
   10ba4:	00e5b023          	sd	a4,0(a1)
   10ba8:	0007c503          	lbu	a0,0(a5)
   10bac:	02010113          	addi	sp,sp,32
   10bb0:	00008067          	ret
   10bb4:	00b13423          	sd	a1,8(sp)
   10bb8:	534000ef          	jal	ra,110ec <__sinit>
   10bbc:	00813583          	ld	a1,8(sp)
   10bc0:	fc5ff06f          	j	10b84 <_fgetc_r+0x1c>
   10bc4:	00040513          	mv	a0,s0
   10bc8:	01813083          	ld	ra,24(sp)
   10bcc:	01013403          	ld	s0,16(sp)
   10bd0:	02010113          	addi	sp,sp,32
   10bd4:	2540206f          	j	12e28 <__srget_r>

0000000000010bd8 <fgetc>:
   10bd8:	fe010113          	addi	sp,sp,-32
   10bdc:	00913423          	sd	s1,8(sp)
   10be0:	8101b483          	ld	s1,-2032(gp)
   10be4:	00813823          	sd	s0,16(sp)
   10be8:	00113c23          	sd	ra,24(sp)
   10bec:	00050413          	mv	s0,a0
   10bf0:	00048663          	beqz	s1,10bfc <fgetc+0x24>
   10bf4:	0504a783          	lw	a5,80(s1)
   10bf8:	02078c63          	beqz	a5,10c30 <fgetc+0x58>
   10bfc:	00842783          	lw	a5,8(s0)
   10c00:	fff7879b          	addiw	a5,a5,-1
   10c04:	00f42423          	sw	a5,8(s0)
   10c08:	0207ca63          	bltz	a5,10c3c <fgetc+0x64>
   10c0c:	00043783          	ld	a5,0(s0)
   10c10:	01813083          	ld	ra,24(sp)
   10c14:	00813483          	ld	s1,8(sp)
   10c18:	00178713          	addi	a4,a5,1
   10c1c:	00e43023          	sd	a4,0(s0)
   10c20:	0007c503          	lbu	a0,0(a5)
   10c24:	01013403          	ld	s0,16(sp)
   10c28:	02010113          	addi	sp,sp,32
   10c2c:	00008067          	ret
   10c30:	00048513          	mv	a0,s1
   10c34:	4b8000ef          	jal	ra,110ec <__sinit>
   10c38:	fc5ff06f          	j	10bfc <fgetc+0x24>
   10c3c:	00040593          	mv	a1,s0
   10c40:	00048513          	mv	a0,s1
   10c44:	01813083          	ld	ra,24(sp)
   10c48:	01013403          	ld	s0,16(sp)
   10c4c:	00813483          	ld	s1,8(sp)
   10c50:	02010113          	addi	sp,sp,32
   10c54:	1d40206f          	j	12e28 <__srget_r>

0000000000010c58 <_fgets_r>:
   10c58:	00100793          	li	a5,1
   10c5c:	14c7d263          	ble	a2,a5,10da0 <_fgets_r+0x148>
   10c60:	fb010113          	addi	sp,sp,-80
   10c64:	02913c23          	sd	s1,56(sp)
   10c68:	03213823          	sd	s2,48(sp)
   10c6c:	03313423          	sd	s3,40(sp)
   10c70:	03413023          	sd	s4,32(sp)
   10c74:	04113423          	sd	ra,72(sp)
   10c78:	04813023          	sd	s0,64(sp)
   10c7c:	01513c23          	sd	s5,24(sp)
   10c80:	01613823          	sd	s6,16(sp)
   10c84:	01713423          	sd	s7,8(sp)
   10c88:	00050993          	mv	s3,a0
   10c8c:	00068493          	mv	s1,a3
   10c90:	00058a13          	mv	s4,a1
   10c94:	00060913          	mv	s2,a2
   10c98:	00050663          	beqz	a0,10ca4 <_fgets_r+0x4c>
   10c9c:	05052783          	lw	a5,80(a0)
   10ca0:	0e078863          	beqz	a5,10d90 <_fgets_r+0x138>
   10ca4:	fff9091b          	addiw	s2,s2,-1
   10ca8:	000a0a93          	mv	s5,s4
   10cac:	0600006f          	j	10d0c <_fgets_r+0xb4>
   10cb0:	00a00593          	li	a1,10
   10cb4:	0004bb03          	ld	s6,0(s1)
   10cb8:	00897463          	bleu	s0,s2,10cc0 <_fgets_r+0x68>
   10cbc:	00090413          	mv	s0,s2
   10cc0:	00040613          	mv	a2,s0
   10cc4:	000b0513          	mv	a0,s6
   10cc8:	2c1010ef          	jal	ra,12788 <memchr>
   10ccc:	00040b9b          	sext.w	s7,s0
   10cd0:	00050793          	mv	a5,a0
   10cd4:	00040613          	mv	a2,s0
   10cd8:	000a8513          	mv	a0,s5
   10cdc:	000b0593          	mv	a1,s6
   10ce0:	4179093b          	subw	s2,s2,s7
   10ce4:	0084a703          	lw	a4,8(s1)
   10ce8:	06079e63          	bnez	a5,10d64 <_fgets_r+0x10c>
   10cec:	0004b783          	ld	a5,0(s1)
   10cf0:	008a8ab3          	add	s5,s5,s0
   10cf4:	4177073b          	subw	a4,a4,s7
   10cf8:	00878433          	add	s0,a5,s0
   10cfc:	00e4a423          	sw	a4,8(s1)
   10d00:	0084b023          	sd	s0,0(s1)
   10d04:	36d010ef          	jal	ra,12870 <memcpy>
   10d08:	02090463          	beqz	s2,10d30 <_fgets_r+0xd8>
   10d0c:	0084a403          	lw	s0,8(s1)
   10d10:	fa0410e3          	bnez	s0,10cb0 <_fgets_r+0x58>
   10d14:	00048593          	mv	a1,s1
   10d18:	00098513          	mv	a0,s3
   10d1c:	6c5010ef          	jal	ra,12be0 <__srefill_r>
   10d20:	00051663          	bnez	a0,10d2c <_fgets_r+0xd4>
   10d24:	0084a403          	lw	s0,8(s1)
   10d28:	f89ff06f          	j	10cb0 <_fgets_r+0x58>
   10d2c:	074a8663          	beq	s5,s4,10d98 <_fgets_r+0x140>
   10d30:	000a8023          	sb	zero,0(s5)
   10d34:	000a0513          	mv	a0,s4
   10d38:	04813083          	ld	ra,72(sp)
   10d3c:	04013403          	ld	s0,64(sp)
   10d40:	03813483          	ld	s1,56(sp)
   10d44:	03013903          	ld	s2,48(sp)
   10d48:	02813983          	ld	s3,40(sp)
   10d4c:	02013a03          	ld	s4,32(sp)
   10d50:	01813a83          	ld	s5,24(sp)
   10d54:	01013b03          	ld	s6,16(sp)
   10d58:	00813b83          	ld	s7,8(sp)
   10d5c:	05010113          	addi	sp,sp,80
   10d60:	00008067          	ret
   10d64:	00178793          	addi	a5,a5,1
   10d68:	41678433          	sub	s0,a5,s6
   10d6c:	4087073b          	subw	a4,a4,s0
   10d70:	00e4a423          	sw	a4,8(s1)
   10d74:	00f4b023          	sd	a5,0(s1)
   10d78:	00040613          	mv	a2,s0
   10d7c:	2f5010ef          	jal	ra,12870 <memcpy>
   10d80:	008a8ab3          	add	s5,s5,s0
   10d84:	000a8023          	sb	zero,0(s5)
   10d88:	000a0513          	mv	a0,s4
   10d8c:	fadff06f          	j	10d38 <_fgets_r+0xe0>
   10d90:	35c000ef          	jal	ra,110ec <__sinit>
   10d94:	f11ff06f          	j	10ca4 <_fgets_r+0x4c>
   10d98:	00000513          	li	a0,0
   10d9c:	f9dff06f          	j	10d38 <_fgets_r+0xe0>
   10da0:	00000513          	li	a0,0
   10da4:	00008067          	ret

0000000000010da8 <fgets>:
   10da8:	00060693          	mv	a3,a2
   10dac:	00058613          	mv	a2,a1
   10db0:	00050593          	mv	a1,a0
   10db4:	8101b503          	ld	a0,-2032(gp)
   10db8:	ea1ff06f          	j	10c58 <_fgets_r>

0000000000010dbc <__fp_unlock>:
   10dbc:	00000513          	li	a0,0
   10dc0:	00008067          	ret

0000000000010dc4 <_cleanup_r>:
   10dc4:	000105b7          	lui	a1,0x10
   10dc8:	77058593          	addi	a1,a1,1904 # 10770 <_fclose_r>
   10dcc:	65d0006f          	j	11c28 <_fwalk_reent>

0000000000010dd0 <__sinit.part.1>:
   10dd0:	fc010113          	addi	sp,sp,-64
   10dd4:	000117b7          	lui	a5,0x11
   10dd8:	02113c23          	sd	ra,56(sp)
   10ddc:	02813823          	sd	s0,48(sp)
   10de0:	02913423          	sd	s1,40(sp)
   10de4:	00853403          	ld	s0,8(a0)
   10de8:	03213023          	sd	s2,32(sp)
   10dec:	01313c23          	sd	s3,24(sp)
   10df0:	01413823          	sd	s4,16(sp)
   10df4:	01513423          	sd	s5,8(sp)
   10df8:	01613023          	sd	s6,0(sp)
   10dfc:	dc478793          	addi	a5,a5,-572 # 10dc4 <_cleanup_r>
   10e00:	04f53c23          	sd	a5,88(a0)
   10e04:	53850713          	addi	a4,a0,1336
   10e08:	00300793          	li	a5,3
   10e0c:	52e53823          	sd	a4,1328(a0)
   10e10:	52f52423          	sw	a5,1320(a0)
   10e14:	52053023          	sd	zero,1312(a0)
   10e18:	00400793          	li	a5,4
   10e1c:	00050913          	mv	s2,a0
   10e20:	00f41823          	sh	a5,16(s0)
   10e24:	00800613          	li	a2,8
   10e28:	00000593          	li	a1,0
   10e2c:	00043023          	sd	zero,0(s0)
   10e30:	00042423          	sw	zero,8(s0)
   10e34:	00042623          	sw	zero,12(s0)
   10e38:	0a042623          	sw	zero,172(s0)
   10e3c:	00041923          	sh	zero,18(s0)
   10e40:	00043c23          	sd	zero,24(s0)
   10e44:	02042023          	sw	zero,32(s0)
   10e48:	02042423          	sw	zero,40(s0)
   10e4c:	0a440513          	addi	a0,s0,164
   10e50:	341010ef          	jal	ra,12990 <memset>
   10e54:	00013b37          	lui	s6,0x13
   10e58:	01093483          	ld	s1,16(s2)
   10e5c:	00013ab7          	lui	s5,0x13
   10e60:	00013a37          	lui	s4,0x13
   10e64:	000139b7          	lui	s3,0x13
   10e68:	08cb0b13          	addi	s6,s6,140 # 1308c <__sread>
   10e6c:	0f8a8a93          	addi	s5,s5,248 # 130f8 <__swrite>
   10e70:	168a0a13          	addi	s4,s4,360 # 13168 <__sseek>
   10e74:	1d498993          	addi	s3,s3,468 # 131d4 <__sclose>
   10e78:	03643c23          	sd	s6,56(s0)
   10e7c:	05543023          	sd	s5,64(s0)
   10e80:	05443423          	sd	s4,72(s0)
   10e84:	05343823          	sd	s3,80(s0)
   10e88:	02843823          	sd	s0,48(s0)
   10e8c:	00900793          	li	a5,9
   10e90:	00f49823          	sh	a5,16(s1)
   10e94:	00100793          	li	a5,1
   10e98:	00f49923          	sh	a5,18(s1)
   10e9c:	00800613          	li	a2,8
   10ea0:	00000593          	li	a1,0
   10ea4:	0004b023          	sd	zero,0(s1)
   10ea8:	0004a423          	sw	zero,8(s1)
   10eac:	0004a623          	sw	zero,12(s1)
   10eb0:	0a04a623          	sw	zero,172(s1)
   10eb4:	0004bc23          	sd	zero,24(s1)
   10eb8:	0204a023          	sw	zero,32(s1)
   10ebc:	0204a423          	sw	zero,40(s1)
   10ec0:	0a448513          	addi	a0,s1,164
   10ec4:	2cd010ef          	jal	ra,12990 <memset>
   10ec8:	01893403          	ld	s0,24(s2)
   10ecc:	01200793          	li	a5,18
   10ed0:	0364bc23          	sd	s6,56(s1)
   10ed4:	0554b023          	sd	s5,64(s1)
   10ed8:	0544b423          	sd	s4,72(s1)
   10edc:	0534b823          	sd	s3,80(s1)
   10ee0:	0294b823          	sd	s1,48(s1)
   10ee4:	00f41823          	sh	a5,16(s0)
   10ee8:	00200793          	li	a5,2
   10eec:	00f41923          	sh	a5,18(s0)
   10ef0:	00043023          	sd	zero,0(s0)
   10ef4:	00042423          	sw	zero,8(s0)
   10ef8:	00042623          	sw	zero,12(s0)
   10efc:	0a042623          	sw	zero,172(s0)
   10f00:	00043c23          	sd	zero,24(s0)
   10f04:	02042023          	sw	zero,32(s0)
   10f08:	02042423          	sw	zero,40(s0)
   10f0c:	0a440513          	addi	a0,s0,164
   10f10:	00800613          	li	a2,8
   10f14:	00000593          	li	a1,0
   10f18:	279010ef          	jal	ra,12990 <memset>
   10f1c:	03813083          	ld	ra,56(sp)
   10f20:	03643c23          	sd	s6,56(s0)
   10f24:	05543023          	sd	s5,64(s0)
   10f28:	05443423          	sd	s4,72(s0)
   10f2c:	05343823          	sd	s3,80(s0)
   10f30:	02843823          	sd	s0,48(s0)
   10f34:	00100793          	li	a5,1
   10f38:	04f92823          	sw	a5,80(s2)
   10f3c:	03013403          	ld	s0,48(sp)
   10f40:	02813483          	ld	s1,40(sp)
   10f44:	02013903          	ld	s2,32(sp)
   10f48:	01813983          	ld	s3,24(sp)
   10f4c:	01013a03          	ld	s4,16(sp)
   10f50:	00813a83          	ld	s5,8(sp)
   10f54:	00013b03          	ld	s6,0(sp)
   10f58:	04010113          	addi	sp,sp,64
   10f5c:	00008067          	ret

0000000000010f60 <__fp_lock>:
   10f60:	00000513          	li	a0,0
   10f64:	00008067          	ret

0000000000010f68 <__sfmoreglue>:
   10f68:	fe010113          	addi	sp,sp,-32
   10f6c:	fff5879b          	addiw	a5,a1,-1
   10f70:	00913423          	sd	s1,8(sp)
   10f74:	0b000493          	li	s1,176
   10f78:	029784b3          	mul	s1,a5,s1
   10f7c:	01213023          	sd	s2,0(sp)
   10f80:	00058913          	mv	s2,a1
   10f84:	00813823          	sd	s0,16(sp)
   10f88:	00113c23          	sd	ra,24(sp)
   10f8c:	0c848593          	addi	a1,s1,200
   10f90:	088010ef          	jal	ra,12018 <_malloc_r>
   10f94:	00050413          	mv	s0,a0
   10f98:	02050063          	beqz	a0,10fb8 <__sfmoreglue+0x50>
   10f9c:	01850513          	addi	a0,a0,24
   10fa0:	00043023          	sd	zero,0(s0)
   10fa4:	01242423          	sw	s2,8(s0)
   10fa8:	00a43823          	sd	a0,16(s0)
   10fac:	0b048613          	addi	a2,s1,176
   10fb0:	00000593          	li	a1,0
   10fb4:	1dd010ef          	jal	ra,12990 <memset>
   10fb8:	01813083          	ld	ra,24(sp)
   10fbc:	00040513          	mv	a0,s0
   10fc0:	00813483          	ld	s1,8(sp)
   10fc4:	01013403          	ld	s0,16(sp)
   10fc8:	00013903          	ld	s2,0(sp)
   10fcc:	02010113          	addi	sp,sp,32
   10fd0:	00008067          	ret

0000000000010fd4 <__sfp>:
   10fd4:	fd010113          	addi	sp,sp,-48
   10fd8:	01213823          	sd	s2,16(sp)
   10fdc:	8081b903          	ld	s2,-2040(gp)
   10fe0:	01313423          	sd	s3,8(sp)
   10fe4:	02113423          	sd	ra,40(sp)
   10fe8:	05092783          	lw	a5,80(s2)
   10fec:	02813023          	sd	s0,32(sp)
   10ff0:	00913c23          	sd	s1,24(sp)
   10ff4:	00050993          	mv	s3,a0
   10ff8:	00079663          	bnez	a5,11004 <__sfp+0x30>
   10ffc:	00090513          	mv	a0,s2
   11000:	dd1ff0ef          	jal	ra,10dd0 <__sinit.part.1>
   11004:	52090913          	addi	s2,s2,1312
   11008:	fff00493          	li	s1,-1
   1100c:	00892783          	lw	a5,8(s2)
   11010:	01093403          	ld	s0,16(s2)
   11014:	fff7879b          	addiw	a5,a5,-1
   11018:	0007da63          	bgez	a5,1102c <__sfp+0x58>
   1101c:	0840006f          	j	110a0 <__sfp+0xcc>
   11020:	fff7879b          	addiw	a5,a5,-1
   11024:	0b040413          	addi	s0,s0,176
   11028:	06978c63          	beq	a5,s1,110a0 <__sfp+0xcc>
   1102c:	01041703          	lh	a4,16(s0)
   11030:	fe0718e3          	bnez	a4,11020 <__sfp+0x4c>
   11034:	fff00793          	li	a5,-1
   11038:	00f41923          	sh	a5,18(s0)
   1103c:	00100793          	li	a5,1
   11040:	00f41823          	sh	a5,16(s0)
   11044:	0a042623          	sw	zero,172(s0)
   11048:	00043023          	sd	zero,0(s0)
   1104c:	00042623          	sw	zero,12(s0)
   11050:	00042423          	sw	zero,8(s0)
   11054:	00043c23          	sd	zero,24(s0)
   11058:	02042023          	sw	zero,32(s0)
   1105c:	02042423          	sw	zero,40(s0)
   11060:	00800613          	li	a2,8
   11064:	00000593          	li	a1,0
   11068:	0a440513          	addi	a0,s0,164
   1106c:	125010ef          	jal	ra,12990 <memset>
   11070:	00040513          	mv	a0,s0
   11074:	04043c23          	sd	zero,88(s0)
   11078:	06042023          	sw	zero,96(s0)
   1107c:	06043c23          	sd	zero,120(s0)
   11080:	08042023          	sw	zero,128(s0)
   11084:	02813083          	ld	ra,40(sp)
   11088:	02013403          	ld	s0,32(sp)
   1108c:	01813483          	ld	s1,24(sp)
   11090:	01013903          	ld	s2,16(sp)
   11094:	00813983          	ld	s3,8(sp)
   11098:	03010113          	addi	sp,sp,48
   1109c:	00008067          	ret
   110a0:	00093783          	ld	a5,0(s2)
   110a4:	00078663          	beqz	a5,110b0 <__sfp+0xdc>
   110a8:	00078913          	mv	s2,a5
   110ac:	f61ff06f          	j	1100c <__sfp+0x38>
   110b0:	00400593          	li	a1,4
   110b4:	00098513          	mv	a0,s3
   110b8:	eb1ff0ef          	jal	ra,10f68 <__sfmoreglue>
   110bc:	00a93023          	sd	a0,0(s2)
   110c0:	00050663          	beqz	a0,110cc <__sfp+0xf8>
   110c4:	00050913          	mv	s2,a0
   110c8:	f45ff06f          	j	1100c <__sfp+0x38>
   110cc:	00c00793          	li	a5,12
   110d0:	00f9a023          	sw	a5,0(s3)
   110d4:	00000513          	li	a0,0
   110d8:	fadff06f          	j	11084 <__sfp+0xb0>

00000000000110dc <_cleanup>:
   110dc:	8081b503          	ld	a0,-2040(gp)
   110e0:	000105b7          	lui	a1,0x10
   110e4:	77058593          	addi	a1,a1,1904 # 10770 <_fclose_r>
   110e8:	3410006f          	j	11c28 <_fwalk_reent>

00000000000110ec <__sinit>:
   110ec:	05052783          	lw	a5,80(a0)
   110f0:	00078463          	beqz	a5,110f8 <__sinit+0xc>
   110f4:	00008067          	ret
   110f8:	cd9ff06f          	j	10dd0 <__sinit.part.1>

00000000000110fc <__sfp_lock_acquire>:
   110fc:	00008067          	ret

0000000000011100 <__sfp_lock_release>:
   11100:	00008067          	ret

0000000000011104 <__sinit_lock_acquire>:
   11104:	00008067          	ret

0000000000011108 <__sinit_lock_release>:
   11108:	00008067          	ret

000000000001110c <__fp_lock_all>:
   1110c:	8101b503          	ld	a0,-2032(gp)
   11110:	000115b7          	lui	a1,0x11
   11114:	f6058593          	addi	a1,a1,-160 # 10f60 <__fp_lock>
   11118:	2610006f          	j	11b78 <_fwalk>

000000000001111c <__fp_unlock_all>:
   1111c:	8101b503          	ld	a0,-2032(gp)
   11120:	000115b7          	lui	a1,0x11
   11124:	dbc58593          	addi	a1,a1,-580 # 10dbc <__fp_unlock>
   11128:	2510006f          	j	11b78 <_fwalk>

000000000001112c <__libc_fini_array>:
   1112c:	fe010113          	addi	sp,sp,-32
   11130:	00813823          	sd	s0,16(sp)
   11134:	00913423          	sd	s1,8(sp)
   11138:	0001b437          	lui	s0,0x1b
   1113c:	0001b4b7          	lui	s1,0x1b
   11140:	b7048493          	addi	s1,s1,-1168 # 1ab70 <__init_array_end>
   11144:	b7840413          	addi	s0,s0,-1160 # 1ab78 <__fini_array_end>
   11148:	40940433          	sub	s0,s0,s1
   1114c:	ff840793          	addi	a5,s0,-8
   11150:	00113c23          	sd	ra,24(sp)
   11154:	40345413          	srai	s0,s0,0x3
   11158:	009784b3          	add	s1,a5,s1
   1115c:	00040c63          	beqz	s0,11174 <__libc_fini_array+0x48>
   11160:	0004b783          	ld	a5,0(s1)
   11164:	fff40413          	addi	s0,s0,-1
   11168:	ff848493          	addi	s1,s1,-8
   1116c:	000780e7          	jalr	a5
   11170:	fe0418e3          	bnez	s0,11160 <__libc_fini_array+0x34>
   11174:	01813083          	ld	ra,24(sp)
   11178:	01013403          	ld	s0,16(sp)
   1117c:	00813483          	ld	s1,8(sp)
   11180:	02010113          	addi	sp,sp,32
   11184:	ec5fe06f          	j	10048 <_fini>

0000000000011188 <_fopen_r>:
   11188:	fc010113          	addi	sp,sp,-64
   1118c:	00060793          	mv	a5,a2
   11190:	01313c23          	sd	s3,24(sp)
   11194:	00c10613          	addi	a2,sp,12
   11198:	00058993          	mv	s3,a1
   1119c:	00078593          	mv	a1,a5
   111a0:	03213023          	sd	s2,32(sp)
   111a4:	02113c23          	sd	ra,56(sp)
   111a8:	02813823          	sd	s0,48(sp)
   111ac:	02913423          	sd	s1,40(sp)
   111b0:	00050913          	mv	s2,a0
   111b4:	730050ef          	jal	ra,168e4 <__sflags>
   111b8:	08050e63          	beqz	a0,11254 <_fopen_r+0xcc>
   111bc:	00050493          	mv	s1,a0
   111c0:	00090513          	mv	a0,s2
   111c4:	e11ff0ef          	jal	ra,10fd4 <__sfp>
   111c8:	00050413          	mv	s0,a0
   111cc:	08050463          	beqz	a0,11254 <_fopen_r+0xcc>
   111d0:	00c12583          	lw	a1,12(sp)
   111d4:	1b600613          	li	a2,438
   111d8:	00098513          	mv	a0,s3
   111dc:	6e1080ef          	jal	ra,1a0bc <open>
   111e0:	06054463          	bltz	a0,11248 <_fopen_r+0xc0>
   111e4:	000137b7          	lui	a5,0x13
   111e8:	08c78793          	addi	a5,a5,140 # 1308c <__sread>
   111ec:	02f43c23          	sd	a5,56(s0)
   111f0:	000137b7          	lui	a5,0x13
   111f4:	0f878793          	addi	a5,a5,248 # 130f8 <__swrite>
   111f8:	04f43023          	sd	a5,64(s0)
   111fc:	000137b7          	lui	a5,0x13
   11200:	16878793          	addi	a5,a5,360 # 13168 <__sseek>
   11204:	04f43423          	sd	a5,72(s0)
   11208:	000137b7          	lui	a5,0x13
   1120c:	1d478793          	addi	a5,a5,468 # 131d4 <__sclose>
   11210:	00941823          	sh	s1,16(s0)
   11214:	00a41923          	sh	a0,18(s0)
   11218:	02843823          	sd	s0,48(s0)
   1121c:	04f43823          	sd	a5,80(s0)
   11220:	1004f493          	andi	s1,s1,256
   11224:	04049a63          	bnez	s1,11278 <_fopen_r+0xf0>
   11228:	03813083          	ld	ra,56(sp)
   1122c:	00040513          	mv	a0,s0
   11230:	02813483          	ld	s1,40(sp)
   11234:	03013403          	ld	s0,48(sp)
   11238:	02013903          	ld	s2,32(sp)
   1123c:	01813983          	ld	s3,24(sp)
   11240:	04010113          	addi	sp,sp,64
   11244:	00008067          	ret
   11248:	eb5ff0ef          	jal	ra,110fc <__sfp_lock_acquire>
   1124c:	00041823          	sh	zero,16(s0)
   11250:	eb1ff0ef          	jal	ra,11100 <__sfp_lock_release>
   11254:	03813083          	ld	ra,56(sp)
   11258:	00000413          	li	s0,0
   1125c:	00040513          	mv	a0,s0
   11260:	02813483          	ld	s1,40(sp)
   11264:	03013403          	ld	s0,48(sp)
   11268:	02013903          	ld	s2,32(sp)
   1126c:	01813983          	ld	s3,24(sp)
   11270:	04010113          	addi	sp,sp,64
   11274:	00008067          	ret
   11278:	00040593          	mv	a1,s0
   1127c:	00090513          	mv	a0,s2
   11280:	00200693          	li	a3,2
   11284:	00000613          	li	a2,0
   11288:	45c000ef          	jal	ra,116e4 <_fseek_r>
   1128c:	03813083          	ld	ra,56(sp)
   11290:	00040513          	mv	a0,s0
   11294:	02813483          	ld	s1,40(sp)
   11298:	03013403          	ld	s0,48(sp)
   1129c:	02013903          	ld	s2,32(sp)
   112a0:	01813983          	ld	s3,24(sp)
   112a4:	04010113          	addi	sp,sp,64
   112a8:	00008067          	ret

00000000000112ac <fopen>:
   112ac:	00058613          	mv	a2,a1
   112b0:	00050593          	mv	a1,a0
   112b4:	8101b503          	ld	a0,-2032(gp)
   112b8:	ed1ff06f          	j	11188 <_fopen_r>

00000000000112bc <_malloc_trim_r>:
   112bc:	fd010113          	addi	sp,sp,-48
   112c0:	01213823          	sd	s2,16(sp)
   112c4:	0001c937          	lui	s2,0x1c
   112c8:	02813023          	sd	s0,32(sp)
   112cc:	00913c23          	sd	s1,24(sp)
   112d0:	00058413          	mv	s0,a1
   112d4:	01313423          	sd	s3,8(sp)
   112d8:	02113423          	sd	ra,40(sp)
   112dc:	00050993          	mv	s3,a0
   112e0:	61890913          	addi	s2,s2,1560 # 1c618 <__malloc_av_>
   112e4:	788010ef          	jal	ra,12a6c <__malloc_lock>
   112e8:	01093703          	ld	a4,16(s2)
   112ec:	000017b7          	lui	a5,0x1
   112f0:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   112f4:	00873483          	ld	s1,8(a4)
   112f8:	ffc4f493          	andi	s1,s1,-4
   112fc:	40848433          	sub	s0,s1,s0
   11300:	00b40433          	add	s0,s0,a1
   11304:	00c45413          	srli	s0,s0,0xc
   11308:	fff40413          	addi	s0,s0,-1
   1130c:	00c41413          	slli	s0,s0,0xc
   11310:	00f44c63          	blt	s0,a5,11328 <_malloc_trim_r+0x6c>
   11314:	00000513          	li	a0,0
   11318:	0d8090ef          	jal	ra,1a3f0 <sbrk>
   1131c:	01093783          	ld	a5,16(s2)
   11320:	009787b3          	add	a5,a5,s1
   11324:	02f50663          	beq	a0,a5,11350 <_malloc_trim_r+0x94>
   11328:	00098513          	mv	a0,s3
   1132c:	744010ef          	jal	ra,12a70 <__malloc_unlock>
   11330:	02813083          	ld	ra,40(sp)
   11334:	00000513          	li	a0,0
   11338:	02013403          	ld	s0,32(sp)
   1133c:	01813483          	ld	s1,24(sp)
   11340:	01013903          	ld	s2,16(sp)
   11344:	00813983          	ld	s3,8(sp)
   11348:	03010113          	addi	sp,sp,48
   1134c:	00008067          	ret
   11350:	40800533          	neg	a0,s0
   11354:	09c090ef          	jal	ra,1a3f0 <sbrk>
   11358:	fff00793          	li	a5,-1
   1135c:	04f50463          	beq	a0,a5,113a4 <_malloc_trim_r+0xe8>
   11360:	9081a783          	lw	a5,-1784(gp)
   11364:	01093683          	ld	a3,16(s2)
   11368:	408484b3          	sub	s1,s1,s0
   1136c:	0014e493          	ori	s1,s1,1
   11370:	4087843b          	subw	s0,a5,s0
   11374:	00098513          	mv	a0,s3
   11378:	0096b423          	sd	s1,8(a3)
   1137c:	9081a423          	sw	s0,-1784(gp)
   11380:	6f0010ef          	jal	ra,12a70 <__malloc_unlock>
   11384:	02813083          	ld	ra,40(sp)
   11388:	00100513          	li	a0,1
   1138c:	02013403          	ld	s0,32(sp)
   11390:	01813483          	ld	s1,24(sp)
   11394:	01013903          	ld	s2,16(sp)
   11398:	00813983          	ld	s3,8(sp)
   1139c:	03010113          	addi	sp,sp,48
   113a0:	00008067          	ret
   113a4:	00000513          	li	a0,0
   113a8:	048090ef          	jal	ra,1a3f0 <sbrk>
   113ac:	01093703          	ld	a4,16(s2)
   113b0:	01f00693          	li	a3,31
   113b4:	40e507b3          	sub	a5,a0,a4
   113b8:	f6f6d8e3          	ble	a5,a3,11328 <_malloc_trim_r+0x6c>
   113bc:	8181b683          	ld	a3,-2024(gp)
   113c0:	0017e793          	ori	a5,a5,1
   113c4:	00f73423          	sd	a5,8(a4)
   113c8:	40d50533          	sub	a0,a0,a3
   113cc:	90a1a423          	sw	a0,-1784(gp)
   113d0:	f59ff06f          	j	11328 <_malloc_trim_r+0x6c>

00000000000113d4 <_free_r>:
   113d4:	10058263          	beqz	a1,114d8 <_free_r+0x104>
   113d8:	fe010113          	addi	sp,sp,-32
   113dc:	00813823          	sd	s0,16(sp)
   113e0:	00913423          	sd	s1,8(sp)
   113e4:	00058413          	mv	s0,a1
   113e8:	00050493          	mv	s1,a0
   113ec:	00113c23          	sd	ra,24(sp)
   113f0:	67c010ef          	jal	ra,12a6c <__malloc_lock>
   113f4:	ff843503          	ld	a0,-8(s0)
   113f8:	ff040693          	addi	a3,s0,-16
   113fc:	0001c5b7          	lui	a1,0x1c
   11400:	ffe57793          	andi	a5,a0,-2
   11404:	00f68633          	add	a2,a3,a5
   11408:	61858593          	addi	a1,a1,1560 # 1c618 <__malloc_av_>
   1140c:	00863703          	ld	a4,8(a2)
   11410:	0105b803          	ld	a6,16(a1)
   11414:	ffc77713          	andi	a4,a4,-4
   11418:	17060663          	beq	a2,a6,11584 <_free_r+0x1b0>
   1141c:	00e63423          	sd	a4,8(a2)
   11420:	00157513          	andi	a0,a0,1
   11424:	02051663          	bnez	a0,11450 <_free_r+0x7c>
   11428:	ff043503          	ld	a0,-16(s0)
   1142c:	40a686b3          	sub	a3,a3,a0
   11430:	0106b803          	ld	a6,16(a3)
   11434:	00a787b3          	add	a5,a5,a0
   11438:	0001c537          	lui	a0,0x1c
   1143c:	62850513          	addi	a0,a0,1576 # 1c628 <__malloc_av_+0x10>
   11440:	18a80863          	beq	a6,a0,115d0 <_free_r+0x1fc>
   11444:	0186b503          	ld	a0,24(a3)
   11448:	00a83c23          	sd	a0,24(a6)
   1144c:	01053823          	sd	a6,16(a0)
   11450:	00e60533          	add	a0,a2,a4
   11454:	00853503          	ld	a0,8(a0)
   11458:	00157513          	andi	a0,a0,1
   1145c:	0e050a63          	beqz	a0,11550 <_free_r+0x17c>
   11460:	0017e713          	ori	a4,a5,1
   11464:	00e6b423          	sd	a4,8(a3)
   11468:	00f68733          	add	a4,a3,a5
   1146c:	00f73023          	sd	a5,0(a4)
   11470:	1ff00713          	li	a4,511
   11474:	06f76463          	bltu	a4,a5,114dc <_free_r+0x108>
   11478:	0037d793          	srli	a5,a5,0x3
   1147c:	0007879b          	sext.w	a5,a5
   11480:	0017871b          	addiw	a4,a5,1
   11484:	0017171b          	slliw	a4,a4,0x1
   11488:	00371713          	slli	a4,a4,0x3
   1148c:	0085b603          	ld	a2,8(a1)
   11490:	00e58733          	add	a4,a1,a4
   11494:	00073803          	ld	a6,0(a4)
   11498:	4027d79b          	sraiw	a5,a5,0x2
   1149c:	00100513          	li	a0,1
   114a0:	00f517b3          	sll	a5,a0,a5
   114a4:	00c7e7b3          	or	a5,a5,a2
   114a8:	ff070613          	addi	a2,a4,-16
   114ac:	00c6bc23          	sd	a2,24(a3)
   114b0:	0106b823          	sd	a6,16(a3)
   114b4:	00f5b423          	sd	a5,8(a1)
   114b8:	00d73023          	sd	a3,0(a4)
   114bc:	00d83c23          	sd	a3,24(a6)
   114c0:	00048513          	mv	a0,s1
   114c4:	01813083          	ld	ra,24(sp)
   114c8:	01013403          	ld	s0,16(sp)
   114cc:	00813483          	ld	s1,8(sp)
   114d0:	02010113          	addi	sp,sp,32
   114d4:	59c0106f          	j	12a70 <__malloc_unlock>
   114d8:	00008067          	ret
   114dc:	0097d713          	srli	a4,a5,0x9
   114e0:	00400613          	li	a2,4
   114e4:	12e66263          	bltu	a2,a4,11608 <_free_r+0x234>
   114e8:	0067d713          	srli	a4,a5,0x6
   114ec:	0007071b          	sext.w	a4,a4
   114f0:	0397051b          	addiw	a0,a4,57
   114f4:	0387061b          	addiw	a2,a4,56
   114f8:	0015151b          	slliw	a0,a0,0x1
   114fc:	00351513          	slli	a0,a0,0x3
   11500:	00a58533          	add	a0,a1,a0
   11504:	00053703          	ld	a4,0(a0)
   11508:	ff050513          	addi	a0,a0,-16
   1150c:	10e50c63          	beq	a0,a4,11624 <_free_r+0x250>
   11510:	00873603          	ld	a2,8(a4)
   11514:	ffc67613          	andi	a2,a2,-4
   11518:	00c7f663          	bleu	a2,a5,11524 <_free_r+0x150>
   1151c:	01073703          	ld	a4,16(a4)
   11520:	fee518e3          	bne	a0,a4,11510 <_free_r+0x13c>
   11524:	01873503          	ld	a0,24(a4)
   11528:	00a6bc23          	sd	a0,24(a3)
   1152c:	00e6b823          	sd	a4,16(a3)
   11530:	00d53823          	sd	a3,16(a0)
   11534:	01813083          	ld	ra,24(sp)
   11538:	00048513          	mv	a0,s1
   1153c:	01013403          	ld	s0,16(sp)
   11540:	00813483          	ld	s1,8(sp)
   11544:	00d73c23          	sd	a3,24(a4)
   11548:	02010113          	addi	sp,sp,32
   1154c:	5240106f          	j	12a70 <__malloc_unlock>
   11550:	01063503          	ld	a0,16(a2)
   11554:	00e787b3          	add	a5,a5,a4
   11558:	0001c737          	lui	a4,0x1c
   1155c:	62870713          	addi	a4,a4,1576 # 1c628 <__malloc_av_+0x10>
   11560:	0ee50263          	beq	a0,a4,11644 <_free_r+0x270>
   11564:	01863803          	ld	a6,24(a2)
   11568:	0017e613          	ori	a2,a5,1
   1156c:	00f68733          	add	a4,a3,a5
   11570:	01053c23          	sd	a6,24(a0)
   11574:	00a83823          	sd	a0,16(a6)
   11578:	00c6b423          	sd	a2,8(a3)
   1157c:	00f73023          	sd	a5,0(a4)
   11580:	ef1ff06f          	j	11470 <_free_r+0x9c>
   11584:	00157513          	andi	a0,a0,1
   11588:	00e787b3          	add	a5,a5,a4
   1158c:	02051063          	bnez	a0,115ac <_free_r+0x1d8>
   11590:	ff043503          	ld	a0,-16(s0)
   11594:	40a686b3          	sub	a3,a3,a0
   11598:	0186b703          	ld	a4,24(a3)
   1159c:	0106b603          	ld	a2,16(a3)
   115a0:	00a787b3          	add	a5,a5,a0
   115a4:	00e63c23          	sd	a4,24(a2)
   115a8:	00c73823          	sd	a2,16(a4)
   115ac:	0017e613          	ori	a2,a5,1
   115b0:	8201b703          	ld	a4,-2016(gp)
   115b4:	00c6b423          	sd	a2,8(a3)
   115b8:	00d5b823          	sd	a3,16(a1)
   115bc:	f0e7e2e3          	bltu	a5,a4,114c0 <_free_r+0xec>
   115c0:	8b01b583          	ld	a1,-1872(gp)
   115c4:	00048513          	mv	a0,s1
   115c8:	cf5ff0ef          	jal	ra,112bc <_malloc_trim_r>
   115cc:	ef5ff06f          	j	114c0 <_free_r+0xec>
   115d0:	00e605b3          	add	a1,a2,a4
   115d4:	0085b583          	ld	a1,8(a1)
   115d8:	0015f593          	andi	a1,a1,1
   115dc:	0e059a63          	bnez	a1,116d0 <_free_r+0x2fc>
   115e0:	01063583          	ld	a1,16(a2)
   115e4:	01863603          	ld	a2,24(a2)
   115e8:	00f707b3          	add	a5,a4,a5
   115ec:	0017e713          	ori	a4,a5,1
   115f0:	00c5bc23          	sd	a2,24(a1)
   115f4:	00b63823          	sd	a1,16(a2)
   115f8:	00e6b423          	sd	a4,8(a3)
   115fc:	00f686b3          	add	a3,a3,a5
   11600:	00f6b023          	sd	a5,0(a3)
   11604:	ebdff06f          	j	114c0 <_free_r+0xec>
   11608:	01400613          	li	a2,20
   1160c:	04e66e63          	bltu	a2,a4,11668 <_free_r+0x294>
   11610:	0007071b          	sext.w	a4,a4
   11614:	05c7051b          	addiw	a0,a4,92
   11618:	05b7061b          	addiw	a2,a4,91
   1161c:	0015151b          	slliw	a0,a0,0x1
   11620:	eddff06f          	j	114fc <_free_r+0x128>
   11624:	0085b783          	ld	a5,8(a1)
   11628:	4026571b          	sraiw	a4,a2,0x2
   1162c:	00100613          	li	a2,1
   11630:	00e61733          	sll	a4,a2,a4
   11634:	00f767b3          	or	a5,a4,a5
   11638:	00f5b423          	sd	a5,8(a1)
   1163c:	00050713          	mv	a4,a0
   11640:	ee9ff06f          	j	11528 <_free_r+0x154>
   11644:	02d5b423          	sd	a3,40(a1)
   11648:	02d5b023          	sd	a3,32(a1)
   1164c:	0017e713          	ori	a4,a5,1
   11650:	00a6bc23          	sd	a0,24(a3)
   11654:	00a6b823          	sd	a0,16(a3)
   11658:	00e6b423          	sd	a4,8(a3)
   1165c:	00f686b3          	add	a3,a3,a5
   11660:	00f6b023          	sd	a5,0(a3)
   11664:	e5dff06f          	j	114c0 <_free_r+0xec>
   11668:	05400613          	li	a2,84
   1166c:	00e66e63          	bltu	a2,a4,11688 <_free_r+0x2b4>
   11670:	00c7d713          	srli	a4,a5,0xc
   11674:	0007071b          	sext.w	a4,a4
   11678:	06f7051b          	addiw	a0,a4,111
   1167c:	06e7061b          	addiw	a2,a4,110
   11680:	0015151b          	slliw	a0,a0,0x1
   11684:	e79ff06f          	j	114fc <_free_r+0x128>
   11688:	15400613          	li	a2,340
   1168c:	00e66e63          	bltu	a2,a4,116a8 <_free_r+0x2d4>
   11690:	00f7d713          	srli	a4,a5,0xf
   11694:	0007071b          	sext.w	a4,a4
   11698:	0787051b          	addiw	a0,a4,120
   1169c:	0777061b          	addiw	a2,a4,119
   116a0:	0015151b          	slliw	a0,a0,0x1
   116a4:	e59ff06f          	j	114fc <_free_r+0x128>
   116a8:	55400813          	li	a6,1364
   116ac:	0fe00513          	li	a0,254
   116b0:	07e00613          	li	a2,126
   116b4:	e4e864e3          	bltu	a6,a4,114fc <_free_r+0x128>
   116b8:	0127d713          	srli	a4,a5,0x12
   116bc:	0007071b          	sext.w	a4,a4
   116c0:	07d7051b          	addiw	a0,a4,125
   116c4:	07c7061b          	addiw	a2,a4,124
   116c8:	0015151b          	slliw	a0,a0,0x1
   116cc:	e31ff06f          	j	114fc <_free_r+0x128>
   116d0:	0017e713          	ori	a4,a5,1
   116d4:	00e6b423          	sd	a4,8(a3)
   116d8:	00f686b3          	add	a3,a3,a5
   116dc:	00f6b023          	sd	a5,0(a3)
   116e0:	de1ff06f          	j	114c0 <_free_r+0xec>

00000000000116e4 <_fseek_r>:
   116e4:	0180006f          	j	116fc <_fseeko_r>

00000000000116e8 <fseek>:
   116e8:	00060693          	mv	a3,a2
   116ec:	00058613          	mv	a2,a1
   116f0:	00050593          	mv	a1,a0
   116f4:	8101b503          	ld	a0,-2032(gp)
   116f8:	0040006f          	j	116fc <_fseeko_r>

00000000000116fc <_fseeko_r>:
   116fc:	f3010113          	addi	sp,sp,-208
   11700:	0c813023          	sd	s0,192(sp)
   11704:	0a913c23          	sd	s1,184(sp)
   11708:	0b213823          	sd	s2,176(sp)
   1170c:	0b413023          	sd	s4,160(sp)
   11710:	0c113423          	sd	ra,200(sp)
   11714:	0b313423          	sd	s3,168(sp)
   11718:	09513c23          	sd	s5,152(sp)
   1171c:	09613823          	sd	s6,144(sp)
   11720:	09713423          	sd	s7,136(sp)
   11724:	00050493          	mv	s1,a0
   11728:	00058413          	mv	s0,a1
   1172c:	00060a13          	mv	s4,a2
   11730:	00068913          	mv	s2,a3
   11734:	00050663          	beqz	a0,11740 <_fseeko_r+0x44>
   11738:	05052783          	lw	a5,80(a0)
   1173c:	18078663          	beqz	a5,118c8 <_fseeko_r+0x1cc>
   11740:	01045783          	lhu	a5,16(s0)
   11744:	10800713          	li	a4,264
   11748:	1087f793          	andi	a5,a5,264
   1174c:	18e78863          	beq	a5,a4,118dc <_fseeko_r+0x1e0>
   11750:	04843983          	ld	s3,72(s0)
   11754:	40098063          	beqz	s3,11b54 <_fseeko_r+0x458>
   11758:	00100793          	li	a5,1
   1175c:	10f90e63          	beq	s2,a5,11878 <_fseeko_r+0x17c>
   11760:	00200793          	li	a5,2
   11764:	04f90263          	beq	s2,a5,117a8 <_fseeko_r+0xac>
   11768:	04090063          	beqz	s2,117a8 <_fseeko_r+0xac>
   1176c:	01600793          	li	a5,22
   11770:	00f4a023          	sw	a5,0(s1)
   11774:	fff00a93          	li	s5,-1
   11778:	0c813083          	ld	ra,200(sp)
   1177c:	000a8513          	mv	a0,s5
   11780:	0c013403          	ld	s0,192(sp)
   11784:	0b813483          	ld	s1,184(sp)
   11788:	0b013903          	ld	s2,176(sp)
   1178c:	0a813983          	ld	s3,168(sp)
   11790:	0a013a03          	ld	s4,160(sp)
   11794:	09813a83          	ld	s5,152(sp)
   11798:	09013b03          	ld	s6,144(sp)
   1179c:	08813b83          	ld	s7,136(sp)
   117a0:	0d010113          	addi	sp,sp,208
   117a4:	00008067          	ret
   117a8:	01843783          	ld	a5,24(s0)
   117ac:	00000b93          	li	s7,0
   117b0:	00000a93          	li	s5,0
   117b4:	34078a63          	beqz	a5,11b08 <_fseeko_r+0x40c>
   117b8:	01041683          	lh	a3,16(s0)
   117bc:	000017b7          	lui	a5,0x1
   117c0:	81a7879b          	addiw	a5,a5,-2022
   117c4:	03069713          	slli	a4,a3,0x30
   117c8:	03075713          	srli	a4,a4,0x30
   117cc:	00e7f7b3          	and	a5,a5,a4
   117d0:	02079463          	bnez	a5,117f8 <_fseeko_r+0xfc>
   117d4:	40077713          	andi	a4,a4,1024
   117d8:	12071463          	bnez	a4,11900 <_fseeko_r+0x204>
   117dc:	000137b7          	lui	a5,0x13
   117e0:	16878793          	addi	a5,a5,360 # 13168 <__sseek>
   117e4:	2ef98a63          	beq	s3,a5,11ad8 <_fseeko_r+0x3dc>
   117e8:	000017b7          	lui	a5,0x1
   117ec:	8007879b          	addiw	a5,a5,-2048
   117f0:	00f6e6b3          	or	a3,a3,a5
   117f4:	00d41823          	sh	a3,16(s0)
   117f8:	00040593          	mv	a1,s0
   117fc:	00048513          	mv	a0,s1
   11800:	aecff0ef          	jal	ra,10aec <_fflush_r>
   11804:	00050a93          	mv	s5,a0
   11808:	f60516e3          	bnez	a0,11774 <_fseeko_r+0x78>
   1180c:	03043583          	ld	a1,48(s0)
   11810:	00090693          	mv	a3,s2
   11814:	000a0613          	mv	a2,s4
   11818:	00048513          	mv	a0,s1
   1181c:	000980e7          	jalr	s3
   11820:	fff00793          	li	a5,-1
   11824:	f4f508e3          	beq	a0,a5,11774 <_fseeko_r+0x78>
   11828:	05843583          	ld	a1,88(s0)
   1182c:	00058c63          	beqz	a1,11844 <_fseeko_r+0x148>
   11830:	07440793          	addi	a5,s0,116
   11834:	00f58663          	beq	a1,a5,11840 <_fseeko_r+0x144>
   11838:	00048513          	mv	a0,s1
   1183c:	b99ff0ef          	jal	ra,113d4 <_free_r>
   11840:	04043c23          	sd	zero,88(s0)
   11844:	01045683          	lhu	a3,16(s0)
   11848:	01843703          	ld	a4,24(s0)
   1184c:	fffff7b7          	lui	a5,0xfffff
   11850:	7df7879b          	addiw	a5,a5,2015
   11854:	00f6f7b3          	and	a5,a3,a5
   11858:	00e43023          	sd	a4,0(s0)
   1185c:	00042423          	sw	zero,8(s0)
   11860:	00f41823          	sh	a5,16(s0)
   11864:	00800613          	li	a2,8
   11868:	00000593          	li	a1,0
   1186c:	0a440513          	addi	a0,s0,164
   11870:	120010ef          	jal	ra,12990 <memset>
   11874:	f05ff06f          	j	11778 <_fseeko_r+0x7c>
   11878:	00040593          	mv	a1,s0
   1187c:	00048513          	mv	a0,s1
   11880:	a6cff0ef          	jal	ra,10aec <_fflush_r>
   11884:	01045783          	lhu	a5,16(s0)
   11888:	03379713          	slli	a4,a5,0x33
   1188c:	22075263          	bgez	a4,11ab0 <_fseeko_r+0x3b4>
   11890:	09043a83          	ld	s5,144(s0)
   11894:	0047f713          	andi	a4,a5,4
   11898:	0a071063          	bnez	a4,11938 <_fseeko_r+0x23c>
   1189c:	0087f793          	andi	a5,a5,8
   118a0:	20078463          	beqz	a5,11aa8 <_fseeko_r+0x3ac>
   118a4:	00043703          	ld	a4,0(s0)
   118a8:	01843783          	ld	a5,24(s0)
   118ac:	00070663          	beqz	a4,118b8 <_fseeko_r+0x1bc>
   118b0:	40f70733          	sub	a4,a4,a5
   118b4:	00ea8ab3          	add	s5,s5,a4
   118b8:	015a0a33          	add	s4,s4,s5
   118bc:	00100b93          	li	s7,1
   118c0:	00000913          	li	s2,0
   118c4:	ef1ff06f          	j	117b4 <_fseeko_r+0xb8>
   118c8:	825ff0ef          	jal	ra,110ec <__sinit>
   118cc:	01045783          	lhu	a5,16(s0)
   118d0:	10800713          	li	a4,264
   118d4:	1087f793          	andi	a5,a5,264
   118d8:	e6e79ce3          	bne	a5,a4,11750 <_fseeko_r+0x54>
   118dc:	00040593          	mv	a1,s0
   118e0:	00048513          	mv	a0,s1
   118e4:	a08ff0ef          	jal	ra,10aec <_fflush_r>
   118e8:	e69ff06f          	j	11750 <_fseeko_r+0x54>
   118ec:	01045783          	lhu	a5,16(s0)
   118f0:	40000713          	li	a4,1024
   118f4:	08e42423          	sw	a4,136(s0)
   118f8:	00e7e7b3          	or	a5,a5,a4
   118fc:	00f41823          	sh	a5,16(s0)
   11900:	000a0b13          	mv	s6,s4
   11904:	0c091e63          	bnez	s2,119e0 <_fseeko_r+0x2e4>
   11908:	040b9863          	bnez	s7,11958 <_fseeko_r+0x25c>
   1190c:	01045783          	lhu	a5,16(s0)
   11910:	03379713          	slli	a4,a5,0x33
   11914:	20075263          	bgez	a4,11b18 <_fseeko_r+0x41c>
   11918:	09043503          	ld	a0,144(s0)
   1191c:	00842783          	lw	a5,8(s0)
   11920:	05843583          	ld	a1,88(s0)
   11924:	40f50ab3          	sub	s5,a0,a5
   11928:	20058863          	beqz	a1,11b38 <_fseeko_r+0x43c>
   1192c:	07042603          	lw	a2,112(s0)
   11930:	40ca8ab3          	sub	s5,s5,a2
   11934:	0340006f          	j	11968 <_fseeko_r+0x26c>
   11938:	00842703          	lw	a4,8(s0)
   1193c:	05843783          	ld	a5,88(s0)
   11940:	40ea8ab3          	sub	s5,s5,a4
   11944:	16078263          	beqz	a5,11aa8 <_fseeko_r+0x3ac>
   11948:	07042703          	lw	a4,112(s0)
   1194c:	01843783          	ld	a5,24(s0)
   11950:	40ea8ab3          	sub	s5,s5,a4
   11954:	f65ff06f          	j	118b8 <_fseeko_r+0x1bc>
   11958:	05843583          	ld	a1,88(s0)
   1195c:	00842783          	lw	a5,8(s0)
   11960:	1c058c63          	beqz	a1,11b38 <_fseeko_r+0x43c>
   11964:	07042603          	lw	a2,112(s0)
   11968:	06843703          	ld	a4,104(s0)
   1196c:	01843683          	ld	a3,24(s0)
   11970:	00fa8ab3          	add	s5,s5,a5
   11974:	40d707b3          	sub	a5,a4,a3
   11978:	40fa8ab3          	sub	s5,s5,a5
   1197c:	00c787b3          	add	a5,a5,a2
   11980:	095b6063          	bltu	s6,s5,11a00 <_fseeko_r+0x304>
   11984:	00fa8733          	add	a4,s5,a5
   11988:	06eb7c63          	bleu	a4,s6,11a00 <_fseeko_r+0x304>
   1198c:	415b0abb          	subw	s5,s6,s5
   11990:	000a8713          	mv	a4,s5
   11994:	00e686b3          	add	a3,a3,a4
   11998:	415787bb          	subw	a5,a5,s5
   1199c:	00d43023          	sd	a3,0(s0)
   119a0:	00f42423          	sw	a5,8(s0)
   119a4:	00058c63          	beqz	a1,119bc <_fseeko_r+0x2c0>
   119a8:	07440793          	addi	a5,s0,116
   119ac:	00f58663          	beq	a1,a5,119b8 <_fseeko_r+0x2bc>
   119b0:	00048513          	mv	a0,s1
   119b4:	a21ff0ef          	jal	ra,113d4 <_free_r>
   119b8:	04043c23          	sd	zero,88(s0)
   119bc:	01045783          	lhu	a5,16(s0)
   119c0:	00800613          	li	a2,8
   119c4:	00000593          	li	a1,0
   119c8:	fdf7f793          	andi	a5,a5,-33
   119cc:	00f41823          	sh	a5,16(s0)
   119d0:	0a440513          	addi	a0,s0,164
   119d4:	7bd000ef          	jal	ra,12990 <memset>
   119d8:	00000a93          	li	s5,0
   119dc:	d9dff06f          	j	11778 <_fseeko_r+0x7c>
   119e0:	01241503          	lh	a0,18(s0)
   119e4:	00010593          	mv	a1,sp
   119e8:	73c080ef          	jal	ra,1a124 <fstat>
   119ec:	e00516e3          	bnez	a0,117f8 <_fseeko_r+0xfc>
   119f0:	02813b03          	ld	s6,40(sp)
   119f4:	016a0b33          	add	s6,s4,s6
   119f8:	f60b90e3          	bnez	s7,11958 <_fseeko_r+0x25c>
   119fc:	f11ff06f          	j	1190c <_fseeko_r+0x210>
   11a00:	08842a83          	lw	s5,136(s0)
   11a04:	03043583          	ld	a1,48(s0)
   11a08:	00000693          	li	a3,0
   11a0c:	41500abb          	negw	s5,s5
   11a10:	016afab3          	and	s5,s5,s6
   11a14:	000a8613          	mv	a2,s5
   11a18:	00048513          	mv	a0,s1
   11a1c:	000980e7          	jalr	s3
   11a20:	fff00793          	li	a5,-1
   11a24:	dcf50ae3          	beq	a0,a5,117f8 <_fseeko_r+0xfc>
   11a28:	01843783          	ld	a5,24(s0)
   11a2c:	05843583          	ld	a1,88(s0)
   11a30:	00042423          	sw	zero,8(s0)
   11a34:	00f43023          	sd	a5,0(s0)
   11a38:	00058c63          	beqz	a1,11a50 <_fseeko_r+0x354>
   11a3c:	07440793          	addi	a5,s0,116
   11a40:	00f58663          	beq	a1,a5,11a4c <_fseeko_r+0x350>
   11a44:	00048513          	mv	a0,s1
   11a48:	98dff0ef          	jal	ra,113d4 <_free_r>
   11a4c:	04043c23          	sd	zero,88(s0)
   11a50:	01045783          	lhu	a5,16(s0)
   11a54:	415b0ab3          	sub	s5,s6,s5
   11a58:	fdf7f793          	andi	a5,a5,-33
   11a5c:	00f41823          	sh	a5,16(s0)
   11a60:	020a8863          	beqz	s5,11a90 <_fseeko_r+0x394>
   11a64:	00040593          	mv	a1,s0
   11a68:	00048513          	mv	a0,s1
   11a6c:	174010ef          	jal	ra,12be0 <__srefill_r>
   11a70:	d80514e3          	bnez	a0,117f8 <_fseeko_r+0xfc>
   11a74:	00842783          	lw	a5,8(s0)
   11a78:	d957e0e3          	bltu	a5,s5,117f8 <_fseeko_r+0xfc>
   11a7c:	00043703          	ld	a4,0(s0)
   11a80:	415787bb          	subw	a5,a5,s5
   11a84:	00f42423          	sw	a5,8(s0)
   11a88:	01570ab3          	add	s5,a4,s5
   11a8c:	01543023          	sd	s5,0(s0)
   11a90:	00800613          	li	a2,8
   11a94:	00000593          	li	a1,0
   11a98:	0a440513          	addi	a0,s0,164
   11a9c:	6f5000ef          	jal	ra,12990 <memset>
   11aa0:	00000a93          	li	s5,0
   11aa4:	cd5ff06f          	j	11778 <_fseeko_r+0x7c>
   11aa8:	01843783          	ld	a5,24(s0)
   11aac:	e0dff06f          	j	118b8 <_fseeko_r+0x1bc>
   11ab0:	03043583          	ld	a1,48(s0)
   11ab4:	00090693          	mv	a3,s2
   11ab8:	00000613          	li	a2,0
   11abc:	00048513          	mv	a0,s1
   11ac0:	000980e7          	jalr	s3
   11ac4:	fff00793          	li	a5,-1
   11ac8:	00050a93          	mv	s5,a0
   11acc:	caf504e3          	beq	a0,a5,11774 <_fseeko_r+0x78>
   11ad0:	01045783          	lhu	a5,16(s0)
   11ad4:	dc1ff06f          	j	11894 <_fseeko_r+0x198>
   11ad8:	01241503          	lh	a0,18(s0)
   11adc:	d00546e3          	bltz	a0,117e8 <_fseeko_r+0xec>
   11ae0:	00010593          	mv	a1,sp
   11ae4:	640080ef          	jal	ra,1a124 <fstat>
   11ae8:	00051c63          	bnez	a0,11b00 <_fseeko_r+0x404>
   11aec:	01012703          	lw	a4,16(sp)
   11af0:	0000f7b7          	lui	a5,0xf
   11af4:	00f777b3          	and	a5,a4,a5
   11af8:	00008737          	lui	a4,0x8
   11afc:	dee788e3          	beq	a5,a4,118ec <_fseeko_r+0x1f0>
   11b00:	01041683          	lh	a3,16(s0)
   11b04:	ce5ff06f          	j	117e8 <_fseeko_r+0xec>
   11b08:	00040593          	mv	a1,s0
   11b0c:	00048513          	mv	a0,s1
   11b10:	35c000ef          	jal	ra,11e6c <__smakebuf_r>
   11b14:	ca5ff06f          	j	117b8 <_fseeko_r+0xbc>
   11b18:	03043583          	ld	a1,48(s0)
   11b1c:	00100693          	li	a3,1
   11b20:	00000613          	li	a2,0
   11b24:	00048513          	mv	a0,s1
   11b28:	000980e7          	jalr	s3
   11b2c:	fff00793          	li	a5,-1
   11b30:	def516e3          	bne	a0,a5,1191c <_fseeko_r+0x220>
   11b34:	cc5ff06f          	j	117f8 <_fseeko_r+0xfc>
   11b38:	00043703          	ld	a4,0(s0)
   11b3c:	01843683          	ld	a3,24(s0)
   11b40:	00000593          	li	a1,0
   11b44:	40d70733          	sub	a4,a4,a3
   11b48:	40ea8ab3          	sub	s5,s5,a4
   11b4c:	00f707b3          	add	a5,a4,a5
   11b50:	e31ff06f          	j	11980 <_fseeko_r+0x284>
   11b54:	01d00793          	li	a5,29
   11b58:	00f4a023          	sw	a5,0(s1)
   11b5c:	fff00a93          	li	s5,-1
   11b60:	c19ff06f          	j	11778 <_fseeko_r+0x7c>

0000000000011b64 <fseeko>:
   11b64:	00060693          	mv	a3,a2
   11b68:	00058613          	mv	a2,a1
   11b6c:	00050593          	mv	a1,a0
   11b70:	8101b503          	ld	a0,-2032(gp)
   11b74:	b89ff06f          	j	116fc <_fseeko_r>

0000000000011b78 <_fwalk>:
   11b78:	fc010113          	addi	sp,sp,-64
   11b7c:	01513423          	sd	s5,8(sp)
   11b80:	02113c23          	sd	ra,56(sp)
   11b84:	02813823          	sd	s0,48(sp)
   11b88:	02913423          	sd	s1,40(sp)
   11b8c:	03213023          	sd	s2,32(sp)
   11b90:	01313c23          	sd	s3,24(sp)
   11b94:	01413823          	sd	s4,16(sp)
   11b98:	01613023          	sd	s6,0(sp)
   11b9c:	52050a93          	addi	s5,a0,1312
   11ba0:	080a8063          	beqz	s5,11c20 <_fwalk+0xa8>
   11ba4:	00058b13          	mv	s6,a1
   11ba8:	00000a13          	li	s4,0
   11bac:	00100993          	li	s3,1
   11bb0:	fff00913          	li	s2,-1
   11bb4:	008aa483          	lw	s1,8(s5)
   11bb8:	010ab403          	ld	s0,16(s5)
   11bbc:	fff4849b          	addiw	s1,s1,-1
   11bc0:	0204c663          	bltz	s1,11bec <_fwalk+0x74>
   11bc4:	01045783          	lhu	a5,16(s0)
   11bc8:	fff4849b          	addiw	s1,s1,-1
   11bcc:	00f9fc63          	bleu	a5,s3,11be4 <_fwalk+0x6c>
   11bd0:	01241783          	lh	a5,18(s0)
   11bd4:	00040513          	mv	a0,s0
   11bd8:	01278663          	beq	a5,s2,11be4 <_fwalk+0x6c>
   11bdc:	000b00e7          	jalr	s6
   11be0:	00aa6a33          	or	s4,s4,a0
   11be4:	0b040413          	addi	s0,s0,176
   11be8:	fd249ee3          	bne	s1,s2,11bc4 <_fwalk+0x4c>
   11bec:	000aba83          	ld	s5,0(s5)
   11bf0:	fc0a92e3          	bnez	s5,11bb4 <_fwalk+0x3c>
   11bf4:	03813083          	ld	ra,56(sp)
   11bf8:	000a0513          	mv	a0,s4
   11bfc:	03013403          	ld	s0,48(sp)
   11c00:	02813483          	ld	s1,40(sp)
   11c04:	02013903          	ld	s2,32(sp)
   11c08:	01813983          	ld	s3,24(sp)
   11c0c:	01013a03          	ld	s4,16(sp)
   11c10:	00813a83          	ld	s5,8(sp)
   11c14:	00013b03          	ld	s6,0(sp)
   11c18:	04010113          	addi	sp,sp,64
   11c1c:	00008067          	ret
   11c20:	00000a13          	li	s4,0
   11c24:	fd1ff06f          	j	11bf4 <_fwalk+0x7c>

0000000000011c28 <_fwalk_reent>:
   11c28:	fb010113          	addi	sp,sp,-80
   11c2c:	01613823          	sd	s6,16(sp)
   11c30:	04113423          	sd	ra,72(sp)
   11c34:	04813023          	sd	s0,64(sp)
   11c38:	02913c23          	sd	s1,56(sp)
   11c3c:	03213823          	sd	s2,48(sp)
   11c40:	03313423          	sd	s3,40(sp)
   11c44:	03413023          	sd	s4,32(sp)
   11c48:	01513c23          	sd	s5,24(sp)
   11c4c:	01713423          	sd	s7,8(sp)
   11c50:	52050b13          	addi	s6,a0,1312
   11c54:	080b0663          	beqz	s6,11ce0 <_fwalk_reent+0xb8>
   11c58:	00058b93          	mv	s7,a1
   11c5c:	00050a93          	mv	s5,a0
   11c60:	00000a13          	li	s4,0
   11c64:	00100993          	li	s3,1
   11c68:	fff00913          	li	s2,-1
   11c6c:	008b2483          	lw	s1,8(s6)
   11c70:	010b3403          	ld	s0,16(s6)
   11c74:	fff4849b          	addiw	s1,s1,-1
   11c78:	0204c863          	bltz	s1,11ca8 <_fwalk_reent+0x80>
   11c7c:	01045783          	lhu	a5,16(s0)
   11c80:	fff4849b          	addiw	s1,s1,-1
   11c84:	00f9fe63          	bleu	a5,s3,11ca0 <_fwalk_reent+0x78>
   11c88:	01241783          	lh	a5,18(s0)
   11c8c:	00040593          	mv	a1,s0
   11c90:	000a8513          	mv	a0,s5
   11c94:	01278663          	beq	a5,s2,11ca0 <_fwalk_reent+0x78>
   11c98:	000b80e7          	jalr	s7
   11c9c:	00aa6a33          	or	s4,s4,a0
   11ca0:	0b040413          	addi	s0,s0,176
   11ca4:	fd249ce3          	bne	s1,s2,11c7c <_fwalk_reent+0x54>
   11ca8:	000b3b03          	ld	s6,0(s6)
   11cac:	fc0b10e3          	bnez	s6,11c6c <_fwalk_reent+0x44>
   11cb0:	04813083          	ld	ra,72(sp)
   11cb4:	000a0513          	mv	a0,s4
   11cb8:	04013403          	ld	s0,64(sp)
   11cbc:	03813483          	ld	s1,56(sp)
   11cc0:	03013903          	ld	s2,48(sp)
   11cc4:	02813983          	ld	s3,40(sp)
   11cc8:	02013a03          	ld	s4,32(sp)
   11ccc:	01813a83          	ld	s5,24(sp)
   11cd0:	01013b03          	ld	s6,16(sp)
   11cd4:	00813b83          	ld	s7,8(sp)
   11cd8:	05010113          	addi	sp,sp,80
   11cdc:	00008067          	ret
   11ce0:	00000a13          	li	s4,0
   11ce4:	fcdff06f          	j	11cb0 <_fwalk_reent+0x88>

0000000000011ce8 <_fwrite_r>:
   11ce8:	f9010113          	addi	sp,sp,-112
   11cec:	04913c23          	sd	s1,88(sp)
   11cf0:	02c684b3          	mul	s1,a3,a2
   11cf4:	01810793          	addi	a5,sp,24
   11cf8:	02f13423          	sd	a5,40(sp)
   11cfc:	00100793          	li	a5,1
   11d00:	06813023          	sd	s0,96(sp)
   11d04:	05213823          	sd	s2,80(sp)
   11d08:	05313423          	sd	s3,72(sp)
   11d0c:	06113423          	sd	ra,104(sp)
   11d10:	00b13c23          	sd	a1,24(sp)
   11d14:	02f12823          	sw	a5,48(sp)
   11d18:	02913023          	sd	s1,32(sp)
   11d1c:	02913c23          	sd	s1,56(sp)
   11d20:	00060993          	mv	s3,a2
   11d24:	00068413          	mv	s0,a3
   11d28:	00050913          	mv	s2,a0
   11d2c:	00050663          	beqz	a0,11d38 <_fwrite_r+0x50>
   11d30:	05052783          	lw	a5,80(a0)
   11d34:	06078863          	beqz	a5,11da4 <_fwrite_r+0xbc>
   11d38:	01071683          	lh	a3,16(a4) # 8010 <_ftext-0x7ff0>
   11d3c:	03269793          	slli	a5,a3,0x32
   11d40:	0207c263          	bltz	a5,11d64 <_fwrite_r+0x7c>
   11d44:	0ac72583          	lw	a1,172(a4)
   11d48:	ffffe7b7          	lui	a5,0xffffe
   11d4c:	00002637          	lui	a2,0x2
   11d50:	fff7879b          	addiw	a5,a5,-1
   11d54:	00c6e6b3          	or	a3,a3,a2
   11d58:	00f5f7b3          	and	a5,a1,a5
   11d5c:	00d71823          	sh	a3,16(a4)
   11d60:	0af72623          	sw	a5,172(a4)
   11d64:	02810613          	addi	a2,sp,40
   11d68:	00070593          	mv	a1,a4
   11d6c:	00090513          	mv	a0,s2
   11d70:	419040ef          	jal	ra,16988 <__sfvwrite_r>
   11d74:	00050863          	beqz	a0,11d84 <_fwrite_r+0x9c>
   11d78:	03813403          	ld	s0,56(sp)
   11d7c:	40848433          	sub	s0,s1,s0
   11d80:	03345433          	divu	s0,s0,s3
   11d84:	06813083          	ld	ra,104(sp)
   11d88:	00040513          	mv	a0,s0
   11d8c:	05813483          	ld	s1,88(sp)
   11d90:	06013403          	ld	s0,96(sp)
   11d94:	05013903          	ld	s2,80(sp)
   11d98:	04813983          	ld	s3,72(sp)
   11d9c:	07010113          	addi	sp,sp,112
   11da0:	00008067          	ret
   11da4:	00e13423          	sd	a4,8(sp)
   11da8:	b44ff0ef          	jal	ra,110ec <__sinit>
   11dac:	00813703          	ld	a4,8(sp)
   11db0:	f89ff06f          	j	11d38 <_fwrite_r+0x50>

0000000000011db4 <fwrite>:
   11db4:	00068713          	mv	a4,a3
   11db8:	00060693          	mv	a3,a2
   11dbc:	00058613          	mv	a2,a1
   11dc0:	00050593          	mv	a1,a0
   11dc4:	8101b503          	ld	a0,-2032(gp)
   11dc8:	f21ff06f          	j	11ce8 <_fwrite_r>

0000000000011dcc <__libc_init_array>:
   11dcc:	fe010113          	addi	sp,sp,-32
   11dd0:	00813823          	sd	s0,16(sp)
   11dd4:	0001b7b7          	lui	a5,0x1b
   11dd8:	0001b437          	lui	s0,0x1b
   11ddc:	01213023          	sd	s2,0(sp)
   11de0:	b6878793          	addi	a5,a5,-1176 # 1ab68 <_etext>
   11de4:	b6840913          	addi	s2,s0,-1176 # 1ab68 <_etext>
   11de8:	41278933          	sub	s2,a5,s2
   11dec:	00913423          	sd	s1,8(sp)
   11df0:	00113c23          	sd	ra,24(sp)
   11df4:	40395913          	srai	s2,s2,0x3
   11df8:	b6840413          	addi	s0,s0,-1176
   11dfc:	00000493          	li	s1,0
   11e00:	00090c63          	beqz	s2,11e18 <__libc_init_array+0x4c>
   11e04:	00043783          	ld	a5,0(s0)
   11e08:	00148493          	addi	s1,s1,1
   11e0c:	00840413          	addi	s0,s0,8
   11e10:	000780e7          	jalr	a5
   11e14:	fe9918e3          	bne	s2,s1,11e04 <__libc_init_array+0x38>
   11e18:	a30fe0ef          	jal	ra,10048 <_fini>
   11e1c:	0001b437          	lui	s0,0x1b
   11e20:	0001b7b7          	lui	a5,0x1b
   11e24:	b6840913          	addi	s2,s0,-1176 # 1ab68 <_etext>
   11e28:	b7078793          	addi	a5,a5,-1168 # 1ab70 <__init_array_end>
   11e2c:	41278933          	sub	s2,a5,s2
   11e30:	40395913          	srai	s2,s2,0x3
   11e34:	b6840413          	addi	s0,s0,-1176
   11e38:	00000493          	li	s1,0
   11e3c:	00090c63          	beqz	s2,11e54 <__libc_init_array+0x88>
   11e40:	00043783          	ld	a5,0(s0)
   11e44:	00148493          	addi	s1,s1,1
   11e48:	00840413          	addi	s0,s0,8
   11e4c:	000780e7          	jalr	a5
   11e50:	fe9918e3          	bne	s2,s1,11e40 <__libc_init_array+0x74>
   11e54:	01813083          	ld	ra,24(sp)
   11e58:	01013403          	ld	s0,16(sp)
   11e5c:	00813483          	ld	s1,8(sp)
   11e60:	00013903          	ld	s2,0(sp)
   11e64:	02010113          	addi	sp,sp,32
   11e68:	00008067          	ret

0000000000011e6c <__smakebuf_r>:
   11e6c:	01059783          	lh	a5,16(a1)
   11e70:	f5010113          	addi	sp,sp,-176
   11e74:	08913c23          	sd	s1,152(sp)
   11e78:	03079493          	slli	s1,a5,0x30
   11e7c:	0304d493          	srli	s1,s1,0x30
   11e80:	0a113423          	sd	ra,168(sp)
   11e84:	0a813023          	sd	s0,160(sp)
   11e88:	09213823          	sd	s2,144(sp)
   11e8c:	09313423          	sd	s3,136(sp)
   11e90:	0024f713          	andi	a4,s1,2
   11e94:	0e071063          	bnez	a4,11f74 <__smakebuf_r+0x108>
   11e98:	00050913          	mv	s2,a0
   11e9c:	01259503          	lh	a0,18(a1)
   11ea0:	00058413          	mv	s0,a1
   11ea4:	04054c63          	bltz	a0,11efc <__smakebuf_r+0x90>
   11ea8:	00010593          	mv	a1,sp
   11eac:	278080ef          	jal	ra,1a124 <fstat>
   11eb0:	04054063          	bltz	a0,11ef0 <__smakebuf_r+0x84>
   11eb4:	01012703          	lw	a4,16(sp)
   11eb8:	0000f7b7          	lui	a5,0xf
   11ebc:	ffffe9b7          	lui	s3,0xffffe
   11ec0:	00f777b3          	and	a5,a4,a5
   11ec4:	013789bb          	addw	s3,a5,s3
   11ec8:	00008737          	lui	a4,0x8
   11ecc:	0019b993          	seqz	s3,s3
   11ed0:	0ce78a63          	beq	a5,a4,11fa4 <__smakebuf_r+0x138>
   11ed4:	01045703          	lhu	a4,16(s0)
   11ed8:	000017b7          	lui	a5,0x1
   11edc:	8007879b          	addiw	a5,a5,-2048
   11ee0:	00f767b3          	or	a5,a4,a5
   11ee4:	00f41823          	sh	a5,16(s0)
   11ee8:	40000493          	li	s1,1024
   11eec:	0340006f          	j	11f20 <__smakebuf_r+0xb4>
   11ef0:	01041783          	lh	a5,16(s0)
   11ef4:	03079493          	slli	s1,a5,0x30
   11ef8:	0304d493          	srli	s1,s1,0x30
   11efc:	03849493          	slli	s1,s1,0x38
   11f00:	00001737          	lui	a4,0x1
   11f04:	43f4d493          	srai	s1,s1,0x3f
   11f08:	8007071b          	addiw	a4,a4,-2048
   11f0c:	c404f493          	andi	s1,s1,-960
   11f10:	00e7e7b3          	or	a5,a5,a4
   11f14:	40048493          	addi	s1,s1,1024
   11f18:	00f41823          	sh	a5,16(s0)
   11f1c:	00000993          	li	s3,0
   11f20:	00048593          	mv	a1,s1
   11f24:	00090513          	mv	a0,s2
   11f28:	0f0000ef          	jal	ra,12018 <_malloc_r>
   11f2c:	0c050063          	beqz	a0,11fec <__smakebuf_r+0x180>
   11f30:	01045783          	lhu	a5,16(s0)
   11f34:	00011737          	lui	a4,0x11
   11f38:	dc470713          	addi	a4,a4,-572 # 10dc4 <_cleanup_r>
   11f3c:	04e93c23          	sd	a4,88(s2)
   11f40:	0807e793          	ori	a5,a5,128
   11f44:	00f41823          	sh	a5,16(s0)
   11f48:	00a43023          	sd	a0,0(s0)
   11f4c:	00a43c23          	sd	a0,24(s0)
   11f50:	02942023          	sw	s1,32(s0)
   11f54:	06099e63          	bnez	s3,11fd0 <__smakebuf_r+0x164>
   11f58:	0a813083          	ld	ra,168(sp)
   11f5c:	0a013403          	ld	s0,160(sp)
   11f60:	09813483          	ld	s1,152(sp)
   11f64:	09013903          	ld	s2,144(sp)
   11f68:	08813983          	ld	s3,136(sp)
   11f6c:	0b010113          	addi	sp,sp,176
   11f70:	00008067          	ret
   11f74:	0a813083          	ld	ra,168(sp)
   11f78:	07758793          	addi	a5,a1,119
   11f7c:	00f5b023          	sd	a5,0(a1)
   11f80:	00f5bc23          	sd	a5,24(a1)
   11f84:	00100793          	li	a5,1
   11f88:	0a013403          	ld	s0,160(sp)
   11f8c:	09813483          	ld	s1,152(sp)
   11f90:	09013903          	ld	s2,144(sp)
   11f94:	08813983          	ld	s3,136(sp)
   11f98:	02f5a023          	sw	a5,32(a1)
   11f9c:	0b010113          	addi	sp,sp,176
   11fa0:	00008067          	ret
   11fa4:	04843703          	ld	a4,72(s0)
   11fa8:	000137b7          	lui	a5,0x13
   11fac:	16878793          	addi	a5,a5,360 # 13168 <__sseek>
   11fb0:	f2f712e3          	bne	a4,a5,11ed4 <__smakebuf_r+0x68>
   11fb4:	01045783          	lhu	a5,16(s0)
   11fb8:	40000713          	li	a4,1024
   11fbc:	08e42423          	sw	a4,136(s0)
   11fc0:	00e7e7b3          	or	a5,a5,a4
   11fc4:	00f41823          	sh	a5,16(s0)
   11fc8:	40000493          	li	s1,1024
   11fcc:	f55ff06f          	j	11f20 <__smakebuf_r+0xb4>
   11fd0:	01241503          	lh	a0,18(s0)
   11fd4:	2dc080ef          	jal	ra,1a2b0 <isatty>
   11fd8:	f80500e3          	beqz	a0,11f58 <__smakebuf_r+0xec>
   11fdc:	01045783          	lhu	a5,16(s0)
   11fe0:	0017e793          	ori	a5,a5,1
   11fe4:	00f41823          	sh	a5,16(s0)
   11fe8:	f71ff06f          	j	11f58 <__smakebuf_r+0xec>
   11fec:	01041783          	lh	a5,16(s0)
   11ff0:	2007f713          	andi	a4,a5,512
   11ff4:	f60712e3          	bnez	a4,11f58 <__smakebuf_r+0xec>
   11ff8:	0027e793          	ori	a5,a5,2
   11ffc:	07740713          	addi	a4,s0,119
   12000:	00f41823          	sh	a5,16(s0)
   12004:	00100793          	li	a5,1
   12008:	00e43023          	sd	a4,0(s0)
   1200c:	00e43c23          	sd	a4,24(s0)
   12010:	02f42023          	sw	a5,32(s0)
   12014:	f45ff06f          	j	11f58 <__smakebuf_r+0xec>

0000000000012018 <_malloc_r>:
   12018:	fa010113          	addi	sp,sp,-96
   1201c:	04913423          	sd	s1,72(sp)
   12020:	03313c23          	sd	s3,56(sp)
   12024:	04113c23          	sd	ra,88(sp)
   12028:	04813823          	sd	s0,80(sp)
   1202c:	05213023          	sd	s2,64(sp)
   12030:	03413823          	sd	s4,48(sp)
   12034:	03513423          	sd	s5,40(sp)
   12038:	03613023          	sd	s6,32(sp)
   1203c:	01713c23          	sd	s7,24(sp)
   12040:	01813823          	sd	s8,16(sp)
   12044:	01913423          	sd	s9,8(sp)
   12048:	01758493          	addi	s1,a1,23
   1204c:	02e00793          	li	a5,46
   12050:	00050993          	mv	s3,a0
   12054:	1c97fa63          	bleu	s1,a5,12228 <_malloc_r+0x210>
   12058:	800007b7          	lui	a5,0x80000
   1205c:	ff04f493          	andi	s1,s1,-16
   12060:	fff7c793          	not	a5,a5
   12064:	2497ee63          	bltu	a5,s1,122c0 <_malloc_r+0x2a8>
   12068:	24b4ec63          	bltu	s1,a1,122c0 <_malloc_r+0x2a8>
   1206c:	201000ef          	jal	ra,12a6c <__malloc_lock>
   12070:	1f700793          	li	a5,503
   12074:	7097f063          	bleu	s1,a5,12774 <_malloc_r+0x75c>
   12078:	0094d793          	srli	a5,s1,0x9
   1207c:	08000693          	li	a3,128
   12080:	04000513          	li	a0,64
   12084:	03f00593          	li	a1,63
   12088:	24079463          	bnez	a5,122d0 <_malloc_r+0x2b8>
   1208c:	0001c937          	lui	s2,0x1c
   12090:	61890913          	addi	s2,s2,1560 # 1c618 <__malloc_av_>
   12094:	00369693          	slli	a3,a3,0x3
   12098:	00d906b3          	add	a3,s2,a3
   1209c:	0086b403          	ld	s0,8(a3)
   120a0:	ff068693          	addi	a3,a3,-16
   120a4:	24868663          	beq	a3,s0,122f0 <_malloc_r+0x2d8>
   120a8:	00843783          	ld	a5,8(s0)
   120ac:	01f00613          	li	a2,31
   120b0:	ffc7f793          	andi	a5,a5,-4
   120b4:	40978733          	sub	a4,a5,s1
   120b8:	02e64063          	blt	a2,a4,120d8 <_malloc_r+0xc0>
   120bc:	22075e63          	bgez	a4,122f8 <_malloc_r+0x2e0>
   120c0:	01843403          	ld	s0,24(s0)
   120c4:	22868663          	beq	a3,s0,122f0 <_malloc_r+0x2d8>
   120c8:	00843783          	ld	a5,8(s0)
   120cc:	ffc7f793          	andi	a5,a5,-4
   120d0:	40978733          	sub	a4,a5,s1
   120d4:	fee654e3          	ble	a4,a2,120bc <_malloc_r+0xa4>
   120d8:	00058693          	mv	a3,a1
   120dc:	02093403          	ld	s0,32(s2)
   120e0:	01090813          	addi	a6,s2,16
   120e4:	47040a63          	beq	s0,a6,12558 <_malloc_r+0x540>
   120e8:	00843783          	ld	a5,8(s0)
   120ec:	01f00613          	li	a2,31
   120f0:	ffc7f793          	andi	a5,a5,-4
   120f4:	40978733          	sub	a4,a5,s1
   120f8:	44e64a63          	blt	a2,a4,1254c <_malloc_r+0x534>
   120fc:	03093423          	sd	a6,40(s2)
   12100:	03093023          	sd	a6,32(s2)
   12104:	20075063          	bgez	a4,12304 <_malloc_r+0x2ec>
   12108:	1ff00713          	li	a4,511
   1210c:	3cf76c63          	bltu	a4,a5,124e4 <_malloc_r+0x4cc>
   12110:	0037d793          	srli	a5,a5,0x3
   12114:	0007879b          	sext.w	a5,a5
   12118:	0017861b          	addiw	a2,a5,1
   1211c:	0016161b          	slliw	a2,a2,0x1
   12120:	00361613          	slli	a2,a2,0x3
   12124:	00893703          	ld	a4,8(s2)
   12128:	00c90633          	add	a2,s2,a2
   1212c:	00063503          	ld	a0,0(a2) # 2000 <_ftext-0xe000>
   12130:	4027d79b          	sraiw	a5,a5,0x2
   12134:	00100593          	li	a1,1
   12138:	00f597b3          	sll	a5,a1,a5
   1213c:	00e7e7b3          	or	a5,a5,a4
   12140:	ff060713          	addi	a4,a2,-16
   12144:	00e43c23          	sd	a4,24(s0)
   12148:	00a43823          	sd	a0,16(s0)
   1214c:	00f93423          	sd	a5,8(s2)
   12150:	00863023          	sd	s0,0(a2)
   12154:	00853c23          	sd	s0,24(a0)
   12158:	4026d61b          	sraiw	a2,a3,0x2
   1215c:	00100713          	li	a4,1
   12160:	00c71633          	sll	a2,a4,a2
   12164:	1cc7e063          	bltu	a5,a2,12324 <_malloc_r+0x30c>
   12168:	00f67733          	and	a4,a2,a5
   1216c:	02071463          	bnez	a4,12194 <_malloc_r+0x17c>
   12170:	00161613          	slli	a2,a2,0x1
   12174:	ffc6f693          	andi	a3,a3,-4
   12178:	00f67733          	and	a4,a2,a5
   1217c:	0046869b          	addiw	a3,a3,4
   12180:	00071a63          	bnez	a4,12194 <_malloc_r+0x17c>
   12184:	00161613          	slli	a2,a2,0x1
   12188:	00f67733          	and	a4,a2,a5
   1218c:	0046869b          	addiw	a3,a3,4
   12190:	fe070ae3          	beqz	a4,12184 <_malloc_r+0x16c>
   12194:	01f00513          	li	a0,31
   12198:	0016889b          	addiw	a7,a3,1
   1219c:	0018989b          	slliw	a7,a7,0x1
   121a0:	00389893          	slli	a7,a7,0x3
   121a4:	011908b3          	add	a7,s2,a7
   121a8:	ff088893          	addi	a7,a7,-16
   121ac:	00088593          	mv	a1,a7
   121b0:	00068313          	mv	t1,a3
   121b4:	0185b403          	ld	s0,24(a1)
   121b8:	00859a63          	bne	a1,s0,121cc <_malloc_r+0x1b4>
   121bc:	3a40006f          	j	12560 <_malloc_r+0x548>
   121c0:	3c075263          	bgez	a4,12584 <_malloc_r+0x56c>
   121c4:	01843403          	ld	s0,24(s0)
   121c8:	38858c63          	beq	a1,s0,12560 <_malloc_r+0x548>
   121cc:	00843783          	ld	a5,8(s0)
   121d0:	ffc7f793          	andi	a5,a5,-4
   121d4:	40978733          	sub	a4,a5,s1
   121d8:	fee554e3          	ble	a4,a0,121c0 <_malloc_r+0x1a8>
   121dc:	01843783          	ld	a5,24(s0)
   121e0:	01043683          	ld	a3,16(s0)
   121e4:	0014e613          	ori	a2,s1,1
   121e8:	00c43423          	sd	a2,8(s0)
   121ec:	00f6bc23          	sd	a5,24(a3)
   121f0:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffe2940>
   121f4:	009404b3          	add	s1,s0,s1
   121f8:	02993423          	sd	s1,40(s2)
   121fc:	02993023          	sd	s1,32(s2)
   12200:	00176793          	ori	a5,a4,1
   12204:	0104bc23          	sd	a6,24(s1)
   12208:	0104b823          	sd	a6,16(s1)
   1220c:	00f4b423          	sd	a5,8(s1)
   12210:	00e484b3          	add	s1,s1,a4
   12214:	00098513          	mv	a0,s3
   12218:	00e4b023          	sd	a4,0(s1)
   1221c:	055000ef          	jal	ra,12a70 <__malloc_unlock>
   12220:	01040513          	addi	a0,s0,16
   12224:	0680006f          	j	1228c <_malloc_r+0x274>
   12228:	02000493          	li	s1,32
   1222c:	08b4ea63          	bltu	s1,a1,122c0 <_malloc_r+0x2a8>
   12230:	03d000ef          	jal	ra,12a6c <__malloc_lock>
   12234:	00a00793          	li	a5,10
   12238:	00400693          	li	a3,4
   1223c:	0001c937          	lui	s2,0x1c
   12240:	61890913          	addi	s2,s2,1560 # 1c618 <__malloc_av_>
   12244:	00379793          	slli	a5,a5,0x3
   12248:	00f907b3          	add	a5,s2,a5
   1224c:	0087b403          	ld	s0,8(a5)
   12250:	ff078713          	addi	a4,a5,-16
   12254:	32e40063          	beq	s0,a4,12574 <_malloc_r+0x55c>
   12258:	00843783          	ld	a5,8(s0)
   1225c:	01843683          	ld	a3,24(s0)
   12260:	01043603          	ld	a2,16(s0)
   12264:	ffc7f793          	andi	a5,a5,-4
   12268:	00f407b3          	add	a5,s0,a5
   1226c:	0087b703          	ld	a4,8(a5)
   12270:	00d63c23          	sd	a3,24(a2)
   12274:	00c6b823          	sd	a2,16(a3)
   12278:	00176713          	ori	a4,a4,1
   1227c:	00098513          	mv	a0,s3
   12280:	00e7b423          	sd	a4,8(a5)
   12284:	7ec000ef          	jal	ra,12a70 <__malloc_unlock>
   12288:	01040513          	addi	a0,s0,16
   1228c:	05813083          	ld	ra,88(sp)
   12290:	05013403          	ld	s0,80(sp)
   12294:	04813483          	ld	s1,72(sp)
   12298:	04013903          	ld	s2,64(sp)
   1229c:	03813983          	ld	s3,56(sp)
   122a0:	03013a03          	ld	s4,48(sp)
   122a4:	02813a83          	ld	s5,40(sp)
   122a8:	02013b03          	ld	s6,32(sp)
   122ac:	01813b83          	ld	s7,24(sp)
   122b0:	01013c03          	ld	s8,16(sp)
   122b4:	00813c83          	ld	s9,8(sp)
   122b8:	06010113          	addi	sp,sp,96
   122bc:	00008067          	ret
   122c0:	00c00793          	li	a5,12
   122c4:	00f9a023          	sw	a5,0(s3) # ffffffffffffe000 <_gp+0xfffffffffffe0930>
   122c8:	00000513          	li	a0,0
   122cc:	fc1ff06f          	j	1228c <_malloc_r+0x274>
   122d0:	00400713          	li	a4,4
   122d4:	1ef76463          	bltu	a4,a5,124bc <_malloc_r+0x4a4>
   122d8:	0064d593          	srli	a1,s1,0x6
   122dc:	0005859b          	sext.w	a1,a1
   122e0:	0395851b          	addiw	a0,a1,57
   122e4:	0015169b          	slliw	a3,a0,0x1
   122e8:	0385859b          	addiw	a1,a1,56
   122ec:	da1ff06f          	j	1208c <_malloc_r+0x74>
   122f0:	00050693          	mv	a3,a0
   122f4:	de9ff06f          	j	120dc <_malloc_r+0xc4>
   122f8:	01843683          	ld	a3,24(s0)
   122fc:	01043603          	ld	a2,16(s0)
   12300:	f69ff06f          	j	12268 <_malloc_r+0x250>
   12304:	00f407b3          	add	a5,s0,a5
   12308:	0087b703          	ld	a4,8(a5)
   1230c:	00098513          	mv	a0,s3
   12310:	00176713          	ori	a4,a4,1
   12314:	00e7b423          	sd	a4,8(a5)
   12318:	758000ef          	jal	ra,12a70 <__malloc_unlock>
   1231c:	01040513          	addi	a0,s0,16
   12320:	f6dff06f          	j	1228c <_malloc_r+0x274>
   12324:	01093403          	ld	s0,16(s2)
   12328:	00843703          	ld	a4,8(s0)
   1232c:	ffc77b93          	andi	s7,a4,-4
   12330:	009be863          	bltu	s7,s1,12340 <_malloc_r+0x328>
   12334:	409b87b3          	sub	a5,s7,s1
   12338:	01f00713          	li	a4,31
   1233c:	14f74c63          	blt	a4,a5,12494 <_malloc_r+0x47c>
   12340:	8b01b783          	ld	a5,-1872(gp)
   12344:	8181b683          	ld	a3,-2024(gp)
   12348:	fff00713          	li	a4,-1
   1234c:	00f487b3          	add	a5,s1,a5
   12350:	01740a33          	add	s4,s0,s7
   12354:	02078b13          	addi	s6,a5,32
   12358:	00e68c63          	beq	a3,a4,12370 <_malloc_r+0x358>
   1235c:	00001b37          	lui	s6,0x1
   12360:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   12364:	01678b33          	add	s6,a5,s6
   12368:	fffff7b7          	lui	a5,0xfffff
   1236c:	00fb7b33          	and	s6,s6,a5
   12370:	000b0513          	mv	a0,s6
   12374:	07c080ef          	jal	ra,1a3f0 <sbrk>
   12378:	fff00793          	li	a5,-1
   1237c:	00050a93          	mv	s5,a0
   12380:	26f50263          	beq	a0,a5,125e4 <_malloc_r+0x5cc>
   12384:	25456e63          	bltu	a0,s4,125e0 <_malloc_r+0x5c8>
   12388:	90818c13          	addi	s8,gp,-1784
   1238c:	000c2783          	lw	a5,0(s8)
   12390:	00fb07bb          	addw	a5,s6,a5
   12394:	00fc2023          	sw	a5,0(s8)
   12398:	355a0463          	beq	s4,s5,126e0 <_malloc_r+0x6c8>
   1239c:	8181b683          	ld	a3,-2024(gp)
   123a0:	fff00713          	li	a4,-1
   123a4:	36e68263          	beq	a3,a4,12708 <_malloc_r+0x6f0>
   123a8:	414a8a33          	sub	s4,s5,s4
   123ac:	00fa07bb          	addw	a5,s4,a5
   123b0:	00fc2023          	sw	a5,0(s8)
   123b4:	00faf713          	andi	a4,s5,15
   123b8:	000017b7          	lui	a5,0x1
   123bc:	00070a63          	beqz	a4,123d0 <_malloc_r+0x3b8>
   123c0:	40ea8ab3          	sub	s5,s5,a4
   123c4:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   123c8:	010a8a93          	addi	s5,s5,16
   123cc:	40ea07b3          	sub	a5,s4,a4
   123d0:	00001a37          	lui	s4,0x1
   123d4:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   123d8:	016a8b33          	add	s6,s5,s6
   123dc:	014b7b33          	and	s6,s6,s4
   123e0:	41678a33          	sub	s4,a5,s6
   123e4:	000a0513          	mv	a0,s4
   123e8:	008080ef          	jal	ra,1a3f0 <sbrk>
   123ec:	fff00793          	li	a5,-1
   123f0:	30f50663          	beq	a0,a5,126fc <_malloc_r+0x6e4>
   123f4:	41550733          	sub	a4,a0,s5
   123f8:	01470733          	add	a4,a4,s4
   123fc:	00176713          	ori	a4,a4,1
   12400:	000a0a1b          	sext.w	s4,s4
   12404:	000c2783          	lw	a5,0(s8)
   12408:	01593823          	sd	s5,16(s2)
   1240c:	00eab423          	sd	a4,8(s5)
   12410:	00fa07bb          	addw	a5,s4,a5
   12414:	00fc2023          	sw	a5,0(s8)
   12418:	03240c63          	beq	s0,s2,12450 <_malloc_r+0x438>
   1241c:	01f00613          	li	a2,31
   12420:	27767463          	bleu	s7,a2,12688 <_malloc_r+0x670>
   12424:	00843683          	ld	a3,8(s0)
   12428:	fe8b8713          	addi	a4,s7,-24
   1242c:	ff077713          	andi	a4,a4,-16
   12430:	0016f693          	andi	a3,a3,1
   12434:	00e6e6b3          	or	a3,a3,a4
   12438:	00d43423          	sd	a3,8(s0)
   1243c:	00900593          	li	a1,9
   12440:	00e406b3          	add	a3,s0,a4
   12444:	00b6b423          	sd	a1,8(a3)
   12448:	00b6b823          	sd	a1,16(a3)
   1244c:	2ce66263          	bltu	a2,a4,12710 <_malloc_r+0x6f8>
   12450:	8a81b683          	ld	a3,-1880(gp)
   12454:	00f6f463          	bleu	a5,a3,1245c <_malloc_r+0x444>
   12458:	8af1b423          	sd	a5,-1880(gp)
   1245c:	8a01b683          	ld	a3,-1888(gp)
   12460:	01093403          	ld	s0,16(s2)
   12464:	00f6f463          	bleu	a5,a3,1246c <_malloc_r+0x454>
   12468:	8af1b023          	sd	a5,-1888(gp)
   1246c:	00843703          	ld	a4,8(s0)
   12470:	ffc77713          	andi	a4,a4,-4
   12474:	409707b3          	sub	a5,a4,s1
   12478:	00976663          	bltu	a4,s1,12484 <_malloc_r+0x46c>
   1247c:	01f00713          	li	a4,31
   12480:	00f74a63          	blt	a4,a5,12494 <_malloc_r+0x47c>
   12484:	00098513          	mv	a0,s3
   12488:	5e8000ef          	jal	ra,12a70 <__malloc_unlock>
   1248c:	00000513          	li	a0,0
   12490:	dfdff06f          	j	1228c <_malloc_r+0x274>
   12494:	0014e713          	ori	a4,s1,1
   12498:	00e43423          	sd	a4,8(s0)
   1249c:	009404b3          	add	s1,s0,s1
   124a0:	00993823          	sd	s1,16(s2)
   124a4:	0017e793          	ori	a5,a5,1
   124a8:	00098513          	mv	a0,s3
   124ac:	00f4b423          	sd	a5,8(s1)
   124b0:	5c0000ef          	jal	ra,12a70 <__malloc_unlock>
   124b4:	01040513          	addi	a0,s0,16
   124b8:	dd5ff06f          	j	1228c <_malloc_r+0x274>
   124bc:	01400713          	li	a4,20
   124c0:	0ef77a63          	bleu	a5,a4,125b4 <_malloc_r+0x59c>
   124c4:	05400713          	li	a4,84
   124c8:	18f76063          	bltu	a4,a5,12648 <_malloc_r+0x630>
   124cc:	00c4d593          	srli	a1,s1,0xc
   124d0:	0005859b          	sext.w	a1,a1
   124d4:	06f5851b          	addiw	a0,a1,111
   124d8:	0015169b          	slliw	a3,a0,0x1
   124dc:	06e5859b          	addiw	a1,a1,110
   124e0:	badff06f          	j	1208c <_malloc_r+0x74>
   124e4:	0097d713          	srli	a4,a5,0x9
   124e8:	00400613          	li	a2,4
   124ec:	0ce67e63          	bleu	a4,a2,125c8 <_malloc_r+0x5b0>
   124f0:	01400613          	li	a2,20
   124f4:	1ce66663          	bltu	a2,a4,126c0 <_malloc_r+0x6a8>
   124f8:	0007071b          	sext.w	a4,a4
   124fc:	05c7059b          	addiw	a1,a4,92
   12500:	05b7061b          	addiw	a2,a4,91
   12504:	0015959b          	slliw	a1,a1,0x1
   12508:	00359593          	slli	a1,a1,0x3
   1250c:	00b905b3          	add	a1,s2,a1
   12510:	0005b703          	ld	a4,0(a1)
   12514:	ff058593          	addi	a1,a1,-16
   12518:	14e58863          	beq	a1,a4,12668 <_malloc_r+0x650>
   1251c:	00873603          	ld	a2,8(a4)
   12520:	ffc67613          	andi	a2,a2,-4
   12524:	00c7f663          	bleu	a2,a5,12530 <_malloc_r+0x518>
   12528:	01073703          	ld	a4,16(a4)
   1252c:	fee598e3          	bne	a1,a4,1251c <_malloc_r+0x504>
   12530:	01873583          	ld	a1,24(a4)
   12534:	00893783          	ld	a5,8(s2)
   12538:	00b43c23          	sd	a1,24(s0)
   1253c:	00e43823          	sd	a4,16(s0)
   12540:	0085b823          	sd	s0,16(a1)
   12544:	00873c23          	sd	s0,24(a4)
   12548:	c11ff06f          	j	12158 <_malloc_r+0x140>
   1254c:	0014e793          	ori	a5,s1,1
   12550:	00f43423          	sd	a5,8(s0)
   12554:	ca1ff06f          	j	121f4 <_malloc_r+0x1dc>
   12558:	00893783          	ld	a5,8(s2)
   1255c:	bfdff06f          	j	12158 <_malloc_r+0x140>
   12560:	0013031b          	addiw	t1,t1,1
   12564:	00337793          	andi	a5,t1,3
   12568:	01058593          	addi	a1,a1,16
   1256c:	c40794e3          	bnez	a5,121b4 <_malloc_r+0x19c>
   12570:	0900006f          	j	12600 <_malloc_r+0x5e8>
   12574:	0187b403          	ld	s0,24(a5)
   12578:	0026869b          	addiw	a3,a3,2
   1257c:	b68780e3          	beq	a5,s0,120dc <_malloc_r+0xc4>
   12580:	cd9ff06f          	j	12258 <_malloc_r+0x240>
   12584:	00f407b3          	add	a5,s0,a5
   12588:	0087b703          	ld	a4,8(a5)
   1258c:	01843683          	ld	a3,24(s0)
   12590:	01043603          	ld	a2,16(s0)
   12594:	00176713          	ori	a4,a4,1
   12598:	00e7b423          	sd	a4,8(a5)
   1259c:	00d63c23          	sd	a3,24(a2)
   125a0:	00098513          	mv	a0,s3
   125a4:	00c6b823          	sd	a2,16(a3)
   125a8:	4c8000ef          	jal	ra,12a70 <__malloc_unlock>
   125ac:	01040513          	addi	a0,s0,16
   125b0:	cddff06f          	j	1228c <_malloc_r+0x274>
   125b4:	0007879b          	sext.w	a5,a5
   125b8:	05c7851b          	addiw	a0,a5,92
   125bc:	05b7859b          	addiw	a1,a5,91
   125c0:	0015169b          	slliw	a3,a0,0x1
   125c4:	ac9ff06f          	j	1208c <_malloc_r+0x74>
   125c8:	0067d713          	srli	a4,a5,0x6
   125cc:	0007071b          	sext.w	a4,a4
   125d0:	0397059b          	addiw	a1,a4,57
   125d4:	0387061b          	addiw	a2,a4,56
   125d8:	0015959b          	slliw	a1,a1,0x1
   125dc:	f2dff06f          	j	12508 <_malloc_r+0x4f0>
   125e0:	db2404e3          	beq	s0,s2,12388 <_malloc_r+0x370>
   125e4:	01093403          	ld	s0,16(s2)
   125e8:	00843703          	ld	a4,8(s0)
   125ec:	ffc77713          	andi	a4,a4,-4
   125f0:	e85ff06f          	j	12474 <_malloc_r+0x45c>
   125f4:	0108b783          	ld	a5,16(a7)
   125f8:	fff6869b          	addiw	a3,a3,-1
   125fc:	16f89863          	bne	a7,a5,1276c <_malloc_r+0x754>
   12600:	0036f793          	andi	a5,a3,3
   12604:	ff088893          	addi	a7,a7,-16
   12608:	fe0796e3          	bnez	a5,125f4 <_malloc_r+0x5dc>
   1260c:	00893783          	ld	a5,8(s2)
   12610:	fff64713          	not	a4,a2
   12614:	00f777b3          	and	a5,a4,a5
   12618:	00f93423          	sd	a5,8(s2)
   1261c:	00161613          	slli	a2,a2,0x1
   12620:	d0c7e2e3          	bltu	a5,a2,12324 <_malloc_r+0x30c>
   12624:	d00600e3          	beqz	a2,12324 <_malloc_r+0x30c>
   12628:	00f67733          	and	a4,a2,a5
   1262c:	00030693          	mv	a3,t1
   12630:	b60714e3          	bnez	a4,12198 <_malloc_r+0x180>
   12634:	00161613          	slli	a2,a2,0x1
   12638:	00f67733          	and	a4,a2,a5
   1263c:	0046869b          	addiw	a3,a3,4
   12640:	fe070ae3          	beqz	a4,12634 <_malloc_r+0x61c>
   12644:	b55ff06f          	j	12198 <_malloc_r+0x180>
   12648:	15400713          	li	a4,340
   1264c:	04f76463          	bltu	a4,a5,12694 <_malloc_r+0x67c>
   12650:	00f4d593          	srli	a1,s1,0xf
   12654:	0005859b          	sext.w	a1,a1
   12658:	0785851b          	addiw	a0,a1,120
   1265c:	0015169b          	slliw	a3,a0,0x1
   12660:	0775859b          	addiw	a1,a1,119
   12664:	a29ff06f          	j	1208c <_malloc_r+0x74>
   12668:	00893783          	ld	a5,8(s2)
   1266c:	4026571b          	sraiw	a4,a2,0x2
   12670:	00100613          	li	a2,1
   12674:	00e61733          	sll	a4,a2,a4
   12678:	00f767b3          	or	a5,a4,a5
   1267c:	00f93423          	sd	a5,8(s2)
   12680:	00058713          	mv	a4,a1
   12684:	eb5ff06f          	j	12538 <_malloc_r+0x520>
   12688:	00100793          	li	a5,1
   1268c:	00fab423          	sd	a5,8(s5)
   12690:	df5ff06f          	j	12484 <_malloc_r+0x46c>
   12694:	55400713          	li	a4,1364
   12698:	0fe00693          	li	a3,254
   1269c:	07f00513          	li	a0,127
   126a0:	07e00593          	li	a1,126
   126a4:	9ef764e3          	bltu	a4,a5,1208c <_malloc_r+0x74>
   126a8:	0124d593          	srli	a1,s1,0x12
   126ac:	0005859b          	sext.w	a1,a1
   126b0:	07d5851b          	addiw	a0,a1,125
   126b4:	0015169b          	slliw	a3,a0,0x1
   126b8:	07c5859b          	addiw	a1,a1,124
   126bc:	9d1ff06f          	j	1208c <_malloc_r+0x74>
   126c0:	05400613          	li	a2,84
   126c4:	06e66063          	bltu	a2,a4,12724 <_malloc_r+0x70c>
   126c8:	00c7d713          	srli	a4,a5,0xc
   126cc:	0007071b          	sext.w	a4,a4
   126d0:	06f7059b          	addiw	a1,a4,111
   126d4:	06e7061b          	addiw	a2,a4,110
   126d8:	0015959b          	slliw	a1,a1,0x1
   126dc:	e2dff06f          	j	12508 <_malloc_r+0x4f0>
   126e0:	034a1713          	slli	a4,s4,0x34
   126e4:	ca071ce3          	bnez	a4,1239c <_malloc_r+0x384>
   126e8:	01093683          	ld	a3,16(s2)
   126ec:	016b8733          	add	a4,s7,s6
   126f0:	00176713          	ori	a4,a4,1
   126f4:	00e6b423          	sd	a4,8(a3)
   126f8:	d59ff06f          	j	12450 <_malloc_r+0x438>
   126fc:	00100713          	li	a4,1
   12700:	00000a13          	li	s4,0
   12704:	d01ff06f          	j	12404 <_malloc_r+0x3ec>
   12708:	8151bc23          	sd	s5,-2024(gp)
   1270c:	ca9ff06f          	j	123b4 <_malloc_r+0x39c>
   12710:	01040593          	addi	a1,s0,16
   12714:	00098513          	mv	a0,s3
   12718:	cbdfe0ef          	jal	ra,113d4 <_free_r>
   1271c:	000c2783          	lw	a5,0(s8)
   12720:	d31ff06f          	j	12450 <_malloc_r+0x438>
   12724:	15400613          	li	a2,340
   12728:	00e66e63          	bltu	a2,a4,12744 <_malloc_r+0x72c>
   1272c:	00f7d713          	srli	a4,a5,0xf
   12730:	0007071b          	sext.w	a4,a4
   12734:	0787059b          	addiw	a1,a4,120
   12738:	0777061b          	addiw	a2,a4,119
   1273c:	0015959b          	slliw	a1,a1,0x1
   12740:	dc9ff06f          	j	12508 <_malloc_r+0x4f0>
   12744:	55400513          	li	a0,1364
   12748:	0fe00593          	li	a1,254
   1274c:	07e00613          	li	a2,126
   12750:	dae56ce3          	bltu	a0,a4,12508 <_malloc_r+0x4f0>
   12754:	0127d713          	srli	a4,a5,0x12
   12758:	0007071b          	sext.w	a4,a4
   1275c:	07d7059b          	addiw	a1,a4,125
   12760:	07c7061b          	addiw	a2,a4,124
   12764:	0015959b          	slliw	a1,a1,0x1
   12768:	da1ff06f          	j	12508 <_malloc_r+0x4f0>
   1276c:	00893783          	ld	a5,8(s2)
   12770:	eadff06f          	j	1261c <_malloc_r+0x604>
   12774:	0034d693          	srli	a3,s1,0x3
   12778:	0006869b          	sext.w	a3,a3
   1277c:	0016879b          	addiw	a5,a3,1
   12780:	0017979b          	slliw	a5,a5,0x1
   12784:	ab9ff06f          	j	1223c <_malloc_r+0x224>

0000000000012788 <memchr>:
   12788:	00757793          	andi	a5,a0,7
   1278c:	0ff5f813          	andi	a6,a1,255
   12790:	0c078c63          	beqz	a5,12868 <memchr+0xe0>
   12794:	fff60793          	addi	a5,a2,-1
   12798:	06060463          	beqz	a2,12800 <memchr+0x78>
   1279c:	00054703          	lbu	a4,0(a0)
   127a0:	07070263          	beq	a4,a6,12804 <memchr+0x7c>
   127a4:	00080693          	mv	a3,a6
   127a8:	0140006f          	j	127bc <memchr+0x34>
   127ac:	04078a63          	beqz	a5,12800 <memchr+0x78>
   127b0:	00054703          	lbu	a4,0(a0)
   127b4:	fff78793          	addi	a5,a5,-1
   127b8:	04d70663          	beq	a4,a3,12804 <memchr+0x7c>
   127bc:	00150513          	addi	a0,a0,1
   127c0:	00757713          	andi	a4,a0,7
   127c4:	fe0714e3          	bnez	a4,127ac <memchr+0x24>
   127c8:	00700693          	li	a3,7
   127cc:	02f6ee63          	bltu	a3,a5,12808 <memchr+0x80>
   127d0:	02078863          	beqz	a5,12800 <memchr+0x78>
   127d4:	00054703          	lbu	a4,0(a0)
   127d8:	03070663          	beq	a4,a6,12804 <memchr+0x7c>
   127dc:	00150713          	addi	a4,a0,1
   127e0:	00f507b3          	add	a5,a0,a5
   127e4:	00080613          	mv	a2,a6
   127e8:	0100006f          	j	127f8 <memchr+0x70>
   127ec:	00170713          	addi	a4,a4,1
   127f0:	fff74683          	lbu	a3,-1(a4)
   127f4:	00c68863          	beq	a3,a2,12804 <memchr+0x7c>
   127f8:	00070513          	mv	a0,a4
   127fc:	fee798e3          	bne	a5,a4,127ec <memchr+0x64>
   12800:	00000513          	li	a0,0
   12804:	00008067          	ret
   12808:	0ff5f593          	andi	a1,a1,255
   1280c:	0085971b          	slliw	a4,a1,0x8
   12810:	00b765b3          	or	a1,a4,a1
   12814:	00058713          	mv	a4,a1
   12818:	01071613          	slli	a2,a4,0x10
   1281c:	00c76733          	or	a4,a4,a2
   12820:	0001d637          	lui	a2,0x1d
   12824:	f1063303          	ld	t1,-240(a2) # 1cf10 <__wctomb+0x8>
   12828:	0001d637          	lui	a2,0x1d
   1282c:	f1863883          	ld	a7,-232(a2) # 1cf18 <__wctomb+0x10>
   12830:	02071613          	slli	a2,a4,0x20
   12834:	00e66633          	or	a2,a2,a4
   12838:	00068593          	mv	a1,a3
   1283c:	00053703          	ld	a4,0(a0)
   12840:	00e64733          	xor	a4,a2,a4
   12844:	006706b3          	add	a3,a4,t1
   12848:	fff74713          	not	a4,a4
   1284c:	00e6f733          	and	a4,a3,a4
   12850:	01177733          	and	a4,a4,a7
   12854:	f80710e3          	bnez	a4,127d4 <memchr+0x4c>
   12858:	ff878793          	addi	a5,a5,-8
   1285c:	00850513          	addi	a0,a0,8
   12860:	fcf5eee3          	bltu	a1,a5,1283c <memchr+0xb4>
   12864:	f6dff06f          	j	127d0 <memchr+0x48>
   12868:	00060793          	mv	a5,a2
   1286c:	f5dff06f          	j	127c8 <memchr+0x40>

0000000000012870 <memcpy>:
   12870:	00a5c7b3          	xor	a5,a1,a0
   12874:	0077f793          	andi	a5,a5,7
   12878:	00c508b3          	add	a7,a0,a2
   1287c:	0e079263          	bnez	a5,12960 <memcpy+0xf0>
   12880:	00700793          	li	a5,7
   12884:	0ec7fe63          	bleu	a2,a5,12980 <memcpy+0x110>
   12888:	00757793          	andi	a5,a0,7
   1288c:	04079a63          	bnez	a5,128e0 <memcpy+0x70>
   12890:	ff88f813          	andi	a6,a7,-8
   12894:	fc080793          	addi	a5,a6,-64
   12898:	00050713          	mv	a4,a0
   1289c:	06f56663          	bltu	a0,a5,12908 <memcpy+0x98>
   128a0:	00058693          	mv	a3,a1
   128a4:	00070793          	mv	a5,a4
   128a8:	03077863          	bleu	a6,a4,128d8 <memcpy+0x68>
   128ac:	0006b603          	ld	a2,0(a3)
   128b0:	00878793          	addi	a5,a5,8
   128b4:	00868693          	addi	a3,a3,8
   128b8:	fec7bc23          	sd	a2,-8(a5)
   128bc:	ff07e8e3          	bltu	a5,a6,128ac <memcpy+0x3c>
   128c0:	fff74793          	not	a5,a4
   128c4:	01078833          	add	a6,a5,a6
   128c8:	ff887813          	andi	a6,a6,-8
   128cc:	00880813          	addi	a6,a6,8
   128d0:	01070733          	add	a4,a4,a6
   128d4:	010585b3          	add	a1,a1,a6
   128d8:	09176863          	bltu	a4,a7,12968 <memcpy+0xf8>
   128dc:	00008067          	ret
   128e0:	00050713          	mv	a4,a0
   128e4:	0005c683          	lbu	a3,0(a1)
   128e8:	00170713          	addi	a4,a4,1
   128ec:	00777793          	andi	a5,a4,7
   128f0:	fed70fa3          	sb	a3,-1(a4)
   128f4:	00158593          	addi	a1,a1,1
   128f8:	fe0796e3          	bnez	a5,128e4 <memcpy+0x74>
   128fc:	ff88f813          	andi	a6,a7,-8
   12900:	fc080793          	addi	a5,a6,-64
   12904:	f8f77ee3          	bleu	a5,a4,128a0 <memcpy+0x30>
   12908:	0005b383          	ld	t2,0(a1)
   1290c:	0085b283          	ld	t0,8(a1)
   12910:	0105bf83          	ld	t6,16(a1)
   12914:	0185bf03          	ld	t5,24(a1)
   12918:	0205be83          	ld	t4,32(a1)
   1291c:	0285be03          	ld	t3,40(a1)
   12920:	0305b303          	ld	t1,48(a1)
   12924:	0385b603          	ld	a2,56(a1)
   12928:	04858593          	addi	a1,a1,72
   1292c:	04870713          	addi	a4,a4,72
   12930:	ff85b683          	ld	a3,-8(a1)
   12934:	fa773c23          	sd	t2,-72(a4)
   12938:	fc573023          	sd	t0,-64(a4)
   1293c:	fdf73423          	sd	t6,-56(a4)
   12940:	fde73823          	sd	t5,-48(a4)
   12944:	fdd73c23          	sd	t4,-40(a4)
   12948:	ffc73023          	sd	t3,-32(a4)
   1294c:	fe673423          	sd	t1,-24(a4)
   12950:	fec73823          	sd	a2,-16(a4)
   12954:	fed73c23          	sd	a3,-8(a4)
   12958:	faf768e3          	bltu	a4,a5,12908 <memcpy+0x98>
   1295c:	f45ff06f          	j	128a0 <memcpy+0x30>
   12960:	00050713          	mv	a4,a0
   12964:	03157463          	bleu	a7,a0,1298c <memcpy+0x11c>
   12968:	0005c783          	lbu	a5,0(a1)
   1296c:	00170713          	addi	a4,a4,1
   12970:	00158593          	addi	a1,a1,1
   12974:	fef70fa3          	sb	a5,-1(a4)
   12978:	ff1768e3          	bltu	a4,a7,12968 <memcpy+0xf8>
   1297c:	00008067          	ret
   12980:	00050713          	mv	a4,a0
   12984:	ff1562e3          	bltu	a0,a7,12968 <memcpy+0xf8>
   12988:	f55ff06f          	j	128dc <memcpy+0x6c>
   1298c:	00008067          	ret

0000000000012990 <memset>:
   12990:	00f00813          	li	a6,15
   12994:	00050713          	mv	a4,a0
   12998:	02c87a63          	bleu	a2,a6,129cc <memset+0x3c>
   1299c:	00f77793          	andi	a5,a4,15
   129a0:	0a079063          	bnez	a5,12a40 <memset+0xb0>
   129a4:	06059e63          	bnez	a1,12a20 <memset+0x90>
   129a8:	ff067693          	andi	a3,a2,-16
   129ac:	00f67613          	andi	a2,a2,15
   129b0:	00e686b3          	add	a3,a3,a4
   129b4:	00b73023          	sd	a1,0(a4)
   129b8:	00b73423          	sd	a1,8(a4)
   129bc:	01070713          	addi	a4,a4,16
   129c0:	fed76ae3          	bltu	a4,a3,129b4 <memset+0x24>
   129c4:	00061463          	bnez	a2,129cc <memset+0x3c>
   129c8:	00008067          	ret
   129cc:	40c806b3          	sub	a3,a6,a2
   129d0:	00269693          	slli	a3,a3,0x2
   129d4:	00000297          	auipc	t0,0x0
   129d8:	005686b3          	add	a3,a3,t0
   129dc:	00c68067          	jr	12(a3)
   129e0:	00b70723          	sb	a1,14(a4)
   129e4:	00b706a3          	sb	a1,13(a4)
   129e8:	00b70623          	sb	a1,12(a4)
   129ec:	00b705a3          	sb	a1,11(a4)
   129f0:	00b70523          	sb	a1,10(a4)
   129f4:	00b704a3          	sb	a1,9(a4)
   129f8:	00b70423          	sb	a1,8(a4)
   129fc:	00b703a3          	sb	a1,7(a4)
   12a00:	00b70323          	sb	a1,6(a4)
   12a04:	00b702a3          	sb	a1,5(a4)
   12a08:	00b70223          	sb	a1,4(a4)
   12a0c:	00b701a3          	sb	a1,3(a4)
   12a10:	00b70123          	sb	a1,2(a4)
   12a14:	00b700a3          	sb	a1,1(a4)
   12a18:	00b70023          	sb	a1,0(a4)
   12a1c:	00008067          	ret
   12a20:	0ff5f593          	andi	a1,a1,255
   12a24:	00859693          	slli	a3,a1,0x8
   12a28:	00d5e5b3          	or	a1,a1,a3
   12a2c:	01059693          	slli	a3,a1,0x10
   12a30:	00d5e5b3          	or	a1,a1,a3
   12a34:	02059693          	slli	a3,a1,0x20
   12a38:	00d5e5b3          	or	a1,a1,a3
   12a3c:	f6dff06f          	j	129a8 <memset+0x18>
   12a40:	00279693          	slli	a3,a5,0x2
   12a44:	00000297          	auipc	t0,0x0
   12a48:	005686b3          	add	a3,a3,t0
   12a4c:	00008293          	mv	t0,ra
   12a50:	f98680e7          	jalr	-104(a3)
   12a54:	00028093          	mv	ra,t0
   12a58:	ff078793          	addi	a5,a5,-16
   12a5c:	40f70733          	sub	a4,a4,a5
   12a60:	00f60633          	add	a2,a2,a5
   12a64:	f6c874e3          	bleu	a2,a6,129cc <memset+0x3c>
   12a68:	f3dff06f          	j	129a4 <memset+0x14>

0000000000012a6c <__malloc_lock>:
   12a6c:	00008067          	ret

0000000000012a70 <__malloc_unlock>:
   12a70:	00008067          	ret

0000000000012a74 <_printf_r>:
   12a74:	fb010113          	addi	sp,sp,-80
   12a78:	02c13023          	sd	a2,32(sp)
   12a7c:	02d13423          	sd	a3,40(sp)
   12a80:	02f13c23          	sd	a5,56(sp)
   12a84:	02e13823          	sd	a4,48(sp)
   12a88:	05013023          	sd	a6,64(sp)
   12a8c:	05113423          	sd	a7,72(sp)
   12a90:	00058613          	mv	a2,a1
   12a94:	01053583          	ld	a1,16(a0)
   12a98:	02010793          	addi	a5,sp,32
   12a9c:	00078693          	mv	a3,a5
   12aa0:	00113c23          	sd	ra,24(sp)
   12aa4:	00f13423          	sd	a5,8(sp)
   12aa8:	1f5000ef          	jal	ra,1349c <_vfprintf_r>
   12aac:	01813083          	ld	ra,24(sp)
   12ab0:	05010113          	addi	sp,sp,80
   12ab4:	00008067          	ret

0000000000012ab8 <printf>:
   12ab8:	8101b303          	ld	t1,-2032(gp)
   12abc:	fa010113          	addi	sp,sp,-96
   12ac0:	02c13823          	sd	a2,48(sp)
   12ac4:	02d13c23          	sd	a3,56(sp)
   12ac8:	04f13423          	sd	a5,72(sp)
   12acc:	02b13423          	sd	a1,40(sp)
   12ad0:	04e13023          	sd	a4,64(sp)
   12ad4:	05013823          	sd	a6,80(sp)
   12ad8:	05113c23          	sd	a7,88(sp)
   12adc:	01033583          	ld	a1,16(t1)
   12ae0:	02810793          	addi	a5,sp,40
   12ae4:	00050613          	mv	a2,a0
   12ae8:	00078693          	mv	a3,a5
   12aec:	00030513          	mv	a0,t1
   12af0:	00113c23          	sd	ra,24(sp)
   12af4:	00f13423          	sd	a5,8(sp)
   12af8:	1a5000ef          	jal	ra,1349c <_vfprintf_r>
   12afc:	01813083          	ld	ra,24(sp)
   12b00:	06010113          	addi	sp,sp,96
   12b04:	00008067          	ret

0000000000012b08 <_puts_r>:
   12b08:	fa010113          	addi	sp,sp,-96
   12b0c:	04813823          	sd	s0,80(sp)
   12b10:	00050413          	mv	s0,a0
   12b14:	00058513          	mv	a0,a1
   12b18:	04913423          	sd	s1,72(sp)
   12b1c:	04113c23          	sd	ra,88(sp)
   12b20:	00058493          	mv	s1,a1
   12b24:	6b8000ef          	jal	ra,131dc <strlen>
   12b28:	01043583          	ld	a1,16(s0)
   12b2c:	0001b737          	lui	a4,0x1b
   12b30:	ad870713          	addi	a4,a4,-1320 # 1aad8 <zeroes.4137+0x18>
   12b34:	01059683          	lh	a3,16(a1)
   12b38:	02e13823          	sd	a4,48(sp)
   12b3c:	00100713          	li	a4,1
   12b40:	02e13c23          	sd	a4,56(sp)
   12b44:	02010713          	addi	a4,sp,32
   12b48:	00150613          	addi	a2,a0,1
   12b4c:	00e13423          	sd	a4,8(sp)
   12b50:	00200713          	li	a4,2
   12b54:	02913023          	sd	s1,32(sp)
   12b58:	02a13423          	sd	a0,40(sp)
   12b5c:	00c13c23          	sd	a2,24(sp)
   12b60:	00e12823          	sw	a4,16(sp)
   12b64:	03269793          	slli	a5,a3,0x32
   12b68:	0207c263          	bltz	a5,12b8c <_puts_r+0x84>
   12b6c:	0ac5a783          	lw	a5,172(a1)
   12b70:	ffffe737          	lui	a4,0xffffe
   12b74:	00002637          	lui	a2,0x2
   12b78:	fff7071b          	addiw	a4,a4,-1
   12b7c:	00c6e6b3          	or	a3,a3,a2
   12b80:	00e7f733          	and	a4,a5,a4
   12b84:	00d59823          	sh	a3,16(a1)
   12b88:	0ae5a623          	sw	a4,172(a1)
   12b8c:	00810613          	addi	a2,sp,8
   12b90:	00040513          	mv	a0,s0
   12b94:	5f5030ef          	jal	ra,16988 <__sfvwrite_r>
   12b98:	05813083          	ld	ra,88(sp)
   12b9c:	00a03533          	snez	a0,a0
   12ba0:	40a0053b          	negw	a0,a0
   12ba4:	00a56513          	ori	a0,a0,10
   12ba8:	05013403          	ld	s0,80(sp)
   12bac:	04813483          	ld	s1,72(sp)
   12bb0:	06010113          	addi	sp,sp,96
   12bb4:	00008067          	ret

0000000000012bb8 <puts>:
   12bb8:	00050593          	mv	a1,a0
   12bbc:	8101b503          	ld	a0,-2032(gp)
   12bc0:	f49ff06f          	j	12b08 <_puts_r>

0000000000012bc4 <lflush>:
   12bc4:	01055783          	lhu	a5,16(a0)
   12bc8:	00900713          	li	a4,9
   12bcc:	0097f793          	andi	a5,a5,9
   12bd0:	00e78663          	beq	a5,a4,12bdc <lflush+0x18>
   12bd4:	00000513          	li	a0,0
   12bd8:	00008067          	ret
   12bdc:	f6dfd06f          	j	10b48 <fflush>

0000000000012be0 <__srefill_r>:
   12be0:	fd010113          	addi	sp,sp,-48
   12be4:	02813023          	sd	s0,32(sp)
   12be8:	00913c23          	sd	s1,24(sp)
   12bec:	02113423          	sd	ra,40(sp)
   12bf0:	01213823          	sd	s2,16(sp)
   12bf4:	01313423          	sd	s3,8(sp)
   12bf8:	00050493          	mv	s1,a0
   12bfc:	00058413          	mv	s0,a1
   12c00:	00050663          	beqz	a0,12c0c <__srefill_r+0x2c>
   12c04:	05052783          	lw	a5,80(a0)
   12c08:	12078a63          	beqz	a5,12d3c <__srefill_r+0x15c>
   12c0c:	01041783          	lh	a5,16(s0)
   12c10:	03079713          	slli	a4,a5,0x30
   12c14:	03075713          	srli	a4,a4,0x30
   12c18:	03271693          	slli	a3,a4,0x32
   12c1c:	0206ca63          	bltz	a3,12c50 <__srefill_r+0x70>
   12c20:	0ac42683          	lw	a3,172(s0)
   12c24:	00002737          	lui	a4,0x2
   12c28:	00e7e7b3          	or	a5,a5,a4
   12c2c:	ffffe737          	lui	a4,0xffffe
   12c30:	0107979b          	slliw	a5,a5,0x10
   12c34:	fff7071b          	addiw	a4,a4,-1
   12c38:	4107d79b          	sraiw	a5,a5,0x10
   12c3c:	00e6f733          	and	a4,a3,a4
   12c40:	0ae42623          	sw	a4,172(s0)
   12c44:	03079713          	slli	a4,a5,0x30
   12c48:	00f41823          	sh	a5,16(s0)
   12c4c:	03075713          	srli	a4,a4,0x30
   12c50:	00042423          	sw	zero,8(s0)
   12c54:	02077693          	andi	a3,a4,32
   12c58:	1a069c63          	bnez	a3,12e10 <__srefill_r+0x230>
   12c5c:	00477693          	andi	a3,a4,4
   12c60:	08068863          	beqz	a3,12cf0 <__srefill_r+0x110>
   12c64:	05843583          	ld	a1,88(s0)
   12c68:	02058263          	beqz	a1,12c8c <__srefill_r+0xac>
   12c6c:	07440793          	addi	a5,s0,116
   12c70:	00f58663          	beq	a1,a5,12c7c <__srefill_r+0x9c>
   12c74:	00048513          	mv	a0,s1
   12c78:	f5cfe0ef          	jal	ra,113d4 <_free_r>
   12c7c:	07042783          	lw	a5,112(s0)
   12c80:	04043c23          	sd	zero,88(s0)
   12c84:	00f42423          	sw	a5,8(s0)
   12c88:	12079263          	bnez	a5,12dac <__srefill_r+0x1cc>
   12c8c:	01843783          	ld	a5,24(s0)
   12c90:	18078463          	beqz	a5,12e18 <__srefill_r+0x238>
   12c94:	01041983          	lh	s3,16(s0)
   12c98:	03099913          	slli	s2,s3,0x30
   12c9c:	03095913          	srli	s2,s2,0x30
   12ca0:	00397793          	andi	a5,s2,3
   12ca4:	0a079063          	bnez	a5,12d44 <__srefill_r+0x164>
   12ca8:	01843603          	ld	a2,24(s0)
   12cac:	03843783          	ld	a5,56(s0)
   12cb0:	02042683          	lw	a3,32(s0)
   12cb4:	03043583          	ld	a1,48(s0)
   12cb8:	00c43023          	sd	a2,0(s0)
   12cbc:	00048513          	mv	a0,s1
   12cc0:	000780e7          	jalr	a5
   12cc4:	0005079b          	sext.w	a5,a0
   12cc8:	00f42423          	sw	a5,8(s0)
   12ccc:	00000513          	li	a0,0
   12cd0:	02f05e63          	blez	a5,12d0c <__srefill_r+0x12c>
   12cd4:	02813083          	ld	ra,40(sp)
   12cd8:	02013403          	ld	s0,32(sp)
   12cdc:	01813483          	ld	s1,24(sp)
   12ce0:	01013903          	ld	s2,16(sp)
   12ce4:	00813983          	ld	s3,8(sp)
   12ce8:	03010113          	addi	sp,sp,48
   12cec:	00008067          	ret
   12cf0:	01077693          	andi	a3,a4,16
   12cf4:	10068663          	beqz	a3,12e00 <__srefill_r+0x220>
   12cf8:	00877713          	andi	a4,a4,8
   12cfc:	0c071c63          	bnez	a4,12dd4 <__srefill_r+0x1f4>
   12d00:	0047e793          	ori	a5,a5,4
   12d04:	00f41823          	sh	a5,16(s0)
   12d08:	f85ff06f          	j	12c8c <__srefill_r+0xac>
   12d0c:	06079863          	bnez	a5,12d7c <__srefill_r+0x19c>
   12d10:	01045783          	lhu	a5,16(s0)
   12d14:	02813083          	ld	ra,40(sp)
   12d18:	fff00513          	li	a0,-1
   12d1c:	0207e793          	ori	a5,a5,32
   12d20:	00f41823          	sh	a5,16(s0)
   12d24:	01813483          	ld	s1,24(sp)
   12d28:	02013403          	ld	s0,32(sp)
   12d2c:	01013903          	ld	s2,16(sp)
   12d30:	00813983          	ld	s3,8(sp)
   12d34:	03010113          	addi	sp,sp,48
   12d38:	00008067          	ret
   12d3c:	bb0fe0ef          	jal	ra,110ec <__sinit>
   12d40:	ecdff06f          	j	12c0c <__srefill_r+0x2c>
   12d44:	8081b503          	ld	a0,-2040(gp)
   12d48:	000135b7          	lui	a1,0x13
   12d4c:	00100793          	li	a5,1
   12d50:	00f41823          	sh	a5,16(s0)
   12d54:	bc458593          	addi	a1,a1,-1084 # 12bc4 <lflush>
   12d58:	e21fe0ef          	jal	ra,11b78 <_fwalk>
   12d5c:	00997913          	andi	s2,s2,9
   12d60:	01341823          	sh	s3,16(s0)
   12d64:	00900793          	li	a5,9
   12d68:	f4f910e3          	bne	s2,a5,12ca8 <__srefill_r+0xc8>
   12d6c:	00040593          	mv	a1,s0
   12d70:	00048513          	mv	a0,s1
   12d74:	b0dfd0ef          	jal	ra,10880 <__sflush_r>
   12d78:	f31ff06f          	j	12ca8 <__srefill_r+0xc8>
   12d7c:	01045783          	lhu	a5,16(s0)
   12d80:	02813083          	ld	ra,40(sp)
   12d84:	00042423          	sw	zero,8(s0)
   12d88:	0407e793          	ori	a5,a5,64
   12d8c:	fff00513          	li	a0,-1
   12d90:	00f41823          	sh	a5,16(s0)
   12d94:	01813483          	ld	s1,24(sp)
   12d98:	02013403          	ld	s0,32(sp)
   12d9c:	01013903          	ld	s2,16(sp)
   12da0:	00813983          	ld	s3,8(sp)
   12da4:	03010113          	addi	sp,sp,48
   12da8:	00008067          	ret
   12dac:	06843783          	ld	a5,104(s0)
   12db0:	02813083          	ld	ra,40(sp)
   12db4:	00000513          	li	a0,0
   12db8:	00f43023          	sd	a5,0(s0)
   12dbc:	01813483          	ld	s1,24(sp)
   12dc0:	02013403          	ld	s0,32(sp)
   12dc4:	01013903          	ld	s2,16(sp)
   12dc8:	00813983          	ld	s3,8(sp)
   12dcc:	03010113          	addi	sp,sp,48
   12dd0:	00008067          	ret
   12dd4:	00040593          	mv	a1,s0
   12dd8:	00048513          	mv	a0,s1
   12ddc:	d11fd0ef          	jal	ra,10aec <_fflush_r>
   12de0:	02051863          	bnez	a0,12e10 <__srefill_r+0x230>
   12de4:	01045783          	lhu	a5,16(s0)
   12de8:	00042623          	sw	zero,12(s0)
   12dec:	02042423          	sw	zero,40(s0)
   12df0:	ff77f793          	andi	a5,a5,-9
   12df4:	0107979b          	slliw	a5,a5,0x10
   12df8:	4107d79b          	sraiw	a5,a5,0x10
   12dfc:	f05ff06f          	j	12d00 <__srefill_r+0x120>
   12e00:	00900713          	li	a4,9
   12e04:	00e4a023          	sw	a4,0(s1)
   12e08:	0407e793          	ori	a5,a5,64
   12e0c:	00f41823          	sh	a5,16(s0)
   12e10:	fff00513          	li	a0,-1
   12e14:	ec1ff06f          	j	12cd4 <__srefill_r+0xf4>
   12e18:	00040593          	mv	a1,s0
   12e1c:	00048513          	mv	a0,s1
   12e20:	84cff0ef          	jal	ra,11e6c <__smakebuf_r>
   12e24:	e71ff06f          	j	12c94 <__srefill_r+0xb4>

0000000000012e28 <__srget_r>:
   12e28:	fe010113          	addi	sp,sp,-32
   12e2c:	00813823          	sd	s0,16(sp)
   12e30:	00913423          	sd	s1,8(sp)
   12e34:	00113c23          	sd	ra,24(sp)
   12e38:	00050493          	mv	s1,a0
   12e3c:	00058413          	mv	s0,a1
   12e40:	00050663          	beqz	a0,12e4c <__srget_r+0x24>
   12e44:	05052783          	lw	a5,80(a0)
   12e48:	04078663          	beqz	a5,12e94 <__srget_r+0x6c>
   12e4c:	00040593          	mv	a1,s0
   12e50:	00048513          	mv	a0,s1
   12e54:	d8dff0ef          	jal	ra,12be0 <__srefill_r>
   12e58:	fff00793          	li	a5,-1
   12e5c:	02051063          	bnez	a0,12e7c <__srget_r+0x54>
   12e60:	00043703          	ld	a4,0(s0)
   12e64:	00842783          	lw	a5,8(s0)
   12e68:	00170693          	addi	a3,a4,1 # ffffffffffffe001 <_gp+0xfffffffffffe0931>
   12e6c:	fff7879b          	addiw	a5,a5,-1
   12e70:	00f42423          	sw	a5,8(s0)
   12e74:	00d43023          	sd	a3,0(s0)
   12e78:	00074783          	lbu	a5,0(a4)
   12e7c:	01813083          	ld	ra,24(sp)
   12e80:	00078513          	mv	a0,a5
   12e84:	01013403          	ld	s0,16(sp)
   12e88:	00813483          	ld	s1,8(sp)
   12e8c:	02010113          	addi	sp,sp,32
   12e90:	00008067          	ret
   12e94:	a58fe0ef          	jal	ra,110ec <__sinit>
   12e98:	fb5ff06f          	j	12e4c <__srget_r+0x24>

0000000000012e9c <__srget>:
   12e9c:	00050593          	mv	a1,a0
   12ea0:	8101b503          	ld	a0,-2032(gp)
   12ea4:	f85ff06f          	j	12e28 <__srget_r>

0000000000012ea8 <setvbuf>:
   12ea8:	fc010113          	addi	sp,sp,-64
   12eac:	02913423          	sd	s1,40(sp)
   12eb0:	8101b483          	ld	s1,-2032(gp)
   12eb4:	02813823          	sd	s0,48(sp)
   12eb8:	01413823          	sd	s4,16(sp)
   12ebc:	01513423          	sd	s5,8(sp)
   12ec0:	01613023          	sd	s6,0(sp)
   12ec4:	02113c23          	sd	ra,56(sp)
   12ec8:	03213023          	sd	s2,32(sp)
   12ecc:	01313c23          	sd	s3,24(sp)
   12ed0:	00050413          	mv	s0,a0
   12ed4:	00058a93          	mv	s5,a1
   12ed8:	00060a13          	mv	s4,a2
   12edc:	00068b13          	mv	s6,a3
   12ee0:	00048663          	beqz	s1,12eec <setvbuf+0x44>
   12ee4:	0504a783          	lw	a5,80(s1)
   12ee8:	12078663          	beqz	a5,13014 <setvbuf+0x16c>
   12eec:	00200793          	li	a5,2
   12ef0:	fff00513          	li	a0,-1
   12ef4:	0b47e463          	bltu	a5,s4,12f9c <setvbuf+0xf4>
   12ef8:	000b091b          	sext.w	s2,s6
   12efc:	00090993          	mv	s3,s2
   12f00:	08094e63          	bltz	s2,12f9c <setvbuf+0xf4>
   12f04:	00040593          	mv	a1,s0
   12f08:	00048513          	mv	a0,s1
   12f0c:	be1fd0ef          	jal	ra,10aec <_fflush_r>
   12f10:	01041783          	lh	a5,16(s0)
   12f14:	00042423          	sw	zero,8(s0)
   12f18:	02042423          	sw	zero,40(s0)
   12f1c:	0807f713          	andi	a4,a5,128
   12f20:	0a071263          	bnez	a4,12fc4 <setvbuf+0x11c>
   12f24:	f7c7f793          	andi	a5,a5,-132
   12f28:	0107979b          	slliw	a5,a5,0x10
   12f2c:	4107d79b          	sraiw	a5,a5,0x10
   12f30:	00f41823          	sh	a5,16(s0)
   12f34:	00200713          	li	a4,2
   12f38:	0aea0a63          	beq	s4,a4,12fec <setvbuf+0x144>
   12f3c:	0e0a8a63          	beqz	s5,13030 <setvbuf+0x188>
   12f40:	00100713          	li	a4,1
   12f44:	00ea1e63          	bne	s4,a4,12f60 <setvbuf+0xb8>
   12f48:	00e7e7b3          	or	a5,a5,a4
   12f4c:	0107979b          	slliw	a5,a5,0x10
   12f50:	4107d79b          	sraiw	a5,a5,0x10
   12f54:	4120073b          	negw	a4,s2
   12f58:	00f41823          	sh	a5,16(s0)
   12f5c:	02e42423          	sw	a4,40(s0)
   12f60:	00011737          	lui	a4,0x11
   12f64:	dc470713          	addi	a4,a4,-572 # 10dc4 <_cleanup_r>
   12f68:	03079793          	slli	a5,a5,0x30
   12f6c:	04e4bc23          	sd	a4,88(s1)
   12f70:	0307d793          	srli	a5,a5,0x30
   12f74:	01543023          	sd	s5,0(s0)
   12f78:	01543c23          	sd	s5,24(s0)
   12f7c:	03242023          	sw	s2,32(s0)
   12f80:	0087f713          	andi	a4,a5,8
   12f84:	00000513          	li	a0,0
   12f88:	00070a63          	beqz	a4,12f9c <setvbuf+0xf4>
   12f8c:	0037f793          	andi	a5,a5,3
   12f90:	08079863          	bnez	a5,13020 <setvbuf+0x178>
   12f94:	01342623          	sw	s3,12(s0)
   12f98:	00000513          	li	a0,0
   12f9c:	03813083          	ld	ra,56(sp)
   12fa0:	03013403          	ld	s0,48(sp)
   12fa4:	02813483          	ld	s1,40(sp)
   12fa8:	02013903          	ld	s2,32(sp)
   12fac:	01813983          	ld	s3,24(sp)
   12fb0:	01013a03          	ld	s4,16(sp)
   12fb4:	00813a83          	ld	s5,8(sp)
   12fb8:	00013b03          	ld	s6,0(sp)
   12fbc:	04010113          	addi	sp,sp,64
   12fc0:	00008067          	ret
   12fc4:	01843583          	ld	a1,24(s0)
   12fc8:	00048513          	mv	a0,s1
   12fcc:	c08fe0ef          	jal	ra,113d4 <_free_r>
   12fd0:	01041783          	lh	a5,16(s0)
   12fd4:	00200713          	li	a4,2
   12fd8:	f7c7f793          	andi	a5,a5,-132
   12fdc:	0107979b          	slliw	a5,a5,0x10
   12fe0:	4107d79b          	sraiw	a5,a5,0x10
   12fe4:	00f41823          	sh	a5,16(s0)
   12fe8:	f4ea1ae3          	bne	s4,a4,12f3c <setvbuf+0x94>
   12fec:	00000513          	li	a0,0
   12ff0:	0027e793          	ori	a5,a5,2
   12ff4:	07740713          	addi	a4,s0,119
   12ff8:	00f41823          	sh	a5,16(s0)
   12ffc:	00100793          	li	a5,1
   13000:	00042623          	sw	zero,12(s0)
   13004:	00e43023          	sd	a4,0(s0)
   13008:	00e43c23          	sd	a4,24(s0)
   1300c:	02f42023          	sw	a5,32(s0)
   13010:	f8dff06f          	j	12f9c <setvbuf+0xf4>
   13014:	00048513          	mv	a0,s1
   13018:	8d4fe0ef          	jal	ra,110ec <__sinit>
   1301c:	ed1ff06f          	j	12eec <setvbuf+0x44>
   13020:	00000993          	li	s3,0
   13024:	01342623          	sw	s3,12(s0)
   13028:	00000513          	li	a0,0
   1302c:	f71ff06f          	j	12f9c <setvbuf+0xf4>
   13030:	000b1463          	bnez	s6,13038 <setvbuf+0x190>
   13034:	40000b13          	li	s6,1024
   13038:	000b0513          	mv	a0,s6
   1303c:	6c9030ef          	jal	ra,16f04 <malloc>
   13040:	00050a93          	mv	s5,a0
   13044:	02050263          	beqz	a0,13068 <setvbuf+0x1c0>
   13048:	01045783          	lhu	a5,16(s0)
   1304c:	000b091b          	sext.w	s2,s6
   13050:	00090993          	mv	s3,s2
   13054:	0807e793          	ori	a5,a5,128
   13058:	0107979b          	slliw	a5,a5,0x10
   1305c:	4107d79b          	sraiw	a5,a5,0x10
   13060:	00f41823          	sh	a5,16(s0)
   13064:	eddff06f          	j	12f40 <setvbuf+0x98>
   13068:	40000513          	li	a0,1024
   1306c:	699030ef          	jal	ra,16f04 <malloc>
   13070:	00050a93          	mv	s5,a0
   13074:	00051863          	bnez	a0,13084 <setvbuf+0x1dc>
   13078:	01041783          	lh	a5,16(s0)
   1307c:	fff00513          	li	a0,-1
   13080:	f71ff06f          	j	12ff0 <setvbuf+0x148>
   13084:	40000b13          	li	s6,1024
   13088:	fc1ff06f          	j	13048 <setvbuf+0x1a0>

000000000001308c <__sread>:
   1308c:	01259503          	lh	a0,18(a1)
   13090:	ff010113          	addi	sp,sp,-16
   13094:	00813023          	sd	s0,0(sp)
   13098:	00058413          	mv	s0,a1
   1309c:	00060593          	mv	a1,a2
   130a0:	00068613          	mv	a2,a3
   130a4:	00113423          	sd	ra,8(sp)
   130a8:	054070ef          	jal	ra,1a0fc <read>
   130ac:	02054063          	bltz	a0,130cc <__sread+0x40>
   130b0:	09043783          	ld	a5,144(s0)
   130b4:	00813083          	ld	ra,8(sp)
   130b8:	00a787b3          	add	a5,a5,a0
   130bc:	08f43823          	sd	a5,144(s0)
   130c0:	00013403          	ld	s0,0(sp)
   130c4:	01010113          	addi	sp,sp,16
   130c8:	00008067          	ret
   130cc:	01045703          	lhu	a4,16(s0)
   130d0:	fffff7b7          	lui	a5,0xfffff
   130d4:	00813083          	ld	ra,8(sp)
   130d8:	fff7879b          	addiw	a5,a5,-1
   130dc:	00f777b3          	and	a5,a4,a5
   130e0:	00f41823          	sh	a5,16(s0)
   130e4:	00013403          	ld	s0,0(sp)
   130e8:	01010113          	addi	sp,sp,16
   130ec:	00008067          	ret

00000000000130f0 <__seofread>:
   130f0:	00000513          	li	a0,0
   130f4:	00008067          	ret

00000000000130f8 <__swrite>:
   130f8:	01059703          	lh	a4,16(a1)
   130fc:	fd010113          	addi	sp,sp,-48
   13100:	02813023          	sd	s0,32(sp)
   13104:	00913c23          	sd	s1,24(sp)
   13108:	02113423          	sd	ra,40(sp)
   1310c:	10077793          	andi	a5,a4,256
   13110:	00058413          	mv	s0,a1
   13114:	00060493          	mv	s1,a2
   13118:	02078063          	beqz	a5,13138 <__swrite+0x40>
   1311c:	01259503          	lh	a0,18(a1)
   13120:	00200613          	li	a2,2
   13124:	00000593          	li	a1,0
   13128:	00d13423          	sd	a3,8(sp)
   1312c:	7bd060ef          	jal	ra,1a0e8 <lseek>
   13130:	01041703          	lh	a4,16(s0)
   13134:	00813683          	ld	a3,8(sp)
   13138:	fffff7b7          	lui	a5,0xfffff
   1313c:	fff7879b          	addiw	a5,a5,-1
   13140:	00f777b3          	and	a5,a4,a5
   13144:	01241503          	lh	a0,18(s0)
   13148:	00f41823          	sh	a5,16(s0)
   1314c:	00048593          	mv	a1,s1
   13150:	02813083          	ld	ra,40(sp)
   13154:	02013403          	ld	s0,32(sp)
   13158:	01813483          	ld	s1,24(sp)
   1315c:	00068613          	mv	a2,a3
   13160:	03010113          	addi	sp,sp,48
   13164:	7ad0606f          	j	1a110 <write>

0000000000013168 <__sseek>:
   13168:	01259503          	lh	a0,18(a1)
   1316c:	ff010113          	addi	sp,sp,-16
   13170:	00813023          	sd	s0,0(sp)
   13174:	00058413          	mv	s0,a1
   13178:	00060593          	mv	a1,a2
   1317c:	00068613          	mv	a2,a3
   13180:	00113423          	sd	ra,8(sp)
   13184:	765060ef          	jal	ra,1a0e8 <lseek>
   13188:	fff00793          	li	a5,-1
   1318c:	01045703          	lhu	a4,16(s0)
   13190:	02f50263          	beq	a0,a5,131b4 <__sseek+0x4c>
   13194:	00813083          	ld	ra,8(sp)
   13198:	000017b7          	lui	a5,0x1
   1319c:	00f767b3          	or	a5,a4,a5
   131a0:	08a43823          	sd	a0,144(s0)
   131a4:	00f41823          	sh	a5,16(s0)
   131a8:	00013403          	ld	s0,0(sp)
   131ac:	01010113          	addi	sp,sp,16
   131b0:	00008067          	ret
   131b4:	fffff7b7          	lui	a5,0xfffff
   131b8:	00813083          	ld	ra,8(sp)
   131bc:	fff7879b          	addiw	a5,a5,-1
   131c0:	00f777b3          	and	a5,a4,a5
   131c4:	00f41823          	sh	a5,16(s0)
   131c8:	00013403          	ld	s0,0(sp)
   131cc:	01010113          	addi	sp,sp,16
   131d0:	00008067          	ret

00000000000131d4 <__sclose>:
   131d4:	01259503          	lh	a0,18(a1)
   131d8:	7e50606f          	j	1a1bc <close>

00000000000131dc <strlen>:
   131dc:	00757793          	andi	a5,a0,7
   131e0:	00050593          	mv	a1,a0
   131e4:	06079a63          	bnez	a5,13258 <strlen+0x7c>
   131e8:	0001d7b7          	lui	a5,0x1d
   131ec:	f207b683          	ld	a3,-224(a5) # 1cf20 <mask>
   131f0:	fff00613          	li	a2,-1
   131f4:	00850513          	addi	a0,a0,8
   131f8:	ff853783          	ld	a5,-8(a0)
   131fc:	00d7f733          	and	a4,a5,a3
   13200:	00d70733          	add	a4,a4,a3
   13204:	00d7e7b3          	or	a5,a5,a3
   13208:	00f767b3          	or	a5,a4,a5
   1320c:	fec784e3          	beq	a5,a2,131f4 <strlen+0x18>
   13210:	ff854783          	lbu	a5,-8(a0)
   13214:	40b505b3          	sub	a1,a0,a1
   13218:	06078263          	beqz	a5,1327c <strlen+0xa0>
   1321c:	ff954783          	lbu	a5,-7(a0)
   13220:	04078a63          	beqz	a5,13274 <strlen+0x98>
   13224:	ffa54783          	lbu	a5,-6(a0)
   13228:	06078263          	beqz	a5,1328c <strlen+0xb0>
   1322c:	ffb54783          	lbu	a5,-5(a0)
   13230:	04078a63          	beqz	a5,13284 <strlen+0xa8>
   13234:	ffc54783          	lbu	a5,-4(a0)
   13238:	ffd54703          	lbu	a4,-3(a0)
   1323c:	ffe54683          	lbu	a3,-2(a0)
   13240:	04078a63          	beqz	a5,13294 <strlen+0xb8>
   13244:	04070c63          	beqz	a4,1329c <strlen+0xc0>
   13248:	fff58513          	addi	a0,a1,-1
   1324c:	04068c63          	beqz	a3,132a4 <strlen+0xc8>
   13250:	00008067          	ret
   13254:	f8070ae3          	beqz	a4,131e8 <strlen+0xc>
   13258:	00054783          	lbu	a5,0(a0)
   1325c:	00150513          	addi	a0,a0,1
   13260:	00757713          	andi	a4,a0,7
   13264:	fe0798e3          	bnez	a5,13254 <strlen+0x78>
   13268:	40b50533          	sub	a0,a0,a1
   1326c:	fff50513          	addi	a0,a0,-1
   13270:	00008067          	ret
   13274:	ff958513          	addi	a0,a1,-7
   13278:	00008067          	ret
   1327c:	ff858513          	addi	a0,a1,-8
   13280:	00008067          	ret
   13284:	ffb58513          	addi	a0,a1,-5
   13288:	00008067          	ret
   1328c:	ffa58513          	addi	a0,a1,-6
   13290:	00008067          	ret
   13294:	ffc58513          	addi	a0,a1,-4
   13298:	00008067          	ret
   1329c:	ffd58513          	addi	a0,a1,-3
   132a0:	00008067          	ret
   132a4:	ffe58513          	addi	a0,a1,-2
   132a8:	00008067          	ret

00000000000132ac <_strtol_r>:
   132ac:	8281be83          	ld	t4,-2008(gp)
   132b0:	00058313          	mv	t1,a1
   132b4:	0080006f          	j	132bc <_strtol_r+0x10>
   132b8:	00080313          	mv	t1,a6
   132bc:	00130813          	addi	a6,t1,1
   132c0:	fff84783          	lbu	a5,-1(a6)
   132c4:	00fe8733          	add	a4,t4,a5
   132c8:	00174703          	lbu	a4,1(a4)
   132cc:	00877713          	andi	a4,a4,8
   132d0:	fe0714e3          	bnez	a4,132b8 <_strtol_r+0xc>
   132d4:	ff010113          	addi	sp,sp,-16
   132d8:	00078893          	mv	a7,a5
   132dc:	00813423          	sd	s0,8(sp)
   132e0:	00913023          	sd	s1,0(sp)
   132e4:	02d00793          	li	a5,45
   132e8:	14f88063          	beq	a7,a5,13428 <_strtol_r+0x17c>
   132ec:	02b00793          	li	a5,43
   132f0:	00000393          	li	t2,0
   132f4:	12f88463          	beq	a7,a5,1341c <_strtol_r+0x170>
   132f8:	0e068263          	beqz	a3,133dc <_strtol_r+0x130>
   132fc:	01000793          	li	a5,16
   13300:	00068413          	mv	s0,a3
   13304:	14f68863          	beq	a3,a5,13454 <_strtol_r+0x1a8>
   13308:	fff00793          	li	a5,-1
   1330c:	0017df13          	srli	t5,a5,0x1
   13310:	00038463          	beqz	t2,13318 <_strtol_r+0x6c>
   13314:	03f79f13          	slli	t5,a5,0x3f
   13318:	028f74b3          	remu	s1,t5,s0
   1331c:	011e8733          	add	a4,t4,a7
   13320:	00174783          	lbu	a5,1(a4)
   13324:	00000e13          	li	t3,0
   13328:	00000313          	li	t1,0
   1332c:	0047f713          	andi	a4,a5,4
   13330:	00100293          	li	t0,1
   13334:	fff00f93          	li	t6,-1
   13338:	028f5f33          	divu	t5,t5,s0
   1333c:	0004849b          	sext.w	s1,s1
   13340:	04070063          	beqz	a4,13380 <_strtol_r+0xd4>
   13344:	fd08879b          	addiw	a5,a7,-48
   13348:	04d7de63          	ble	a3,a5,133a4 <_strtol_r+0xf8>
   1334c:	01fe0e63          	beq	t3,t6,13368 <_strtol_r+0xbc>
   13350:	fff00e13          	li	t3,-1
   13354:	006f6a63          	bltu	t5,t1,13368 <_strtol_r+0xbc>
   13358:	07e30e63          	beq	t1,t5,133d4 <_strtol_r+0x128>
   1335c:	00100e13          	li	t3,1
   13360:	02830333          	mul	t1,t1,s0
   13364:	00678333          	add	t1,a5,t1
   13368:	00180813          	addi	a6,a6,1
   1336c:	fff84883          	lbu	a7,-1(a6)
   13370:	011e8733          	add	a4,t4,a7
   13374:	00174783          	lbu	a5,1(a4)
   13378:	0047f713          	andi	a4,a5,4
   1337c:	fc0714e3          	bnez	a4,13344 <_strtol_r+0x98>
   13380:	0037f713          	andi	a4,a5,3
   13384:	02070063          	beqz	a4,133a4 <_strtol_r+0xf8>
   13388:	40e2873b          	subw	a4,t0,a4
   1338c:	00e03733          	snez	a4,a4
   13390:	40e0073b          	negw	a4,a4
   13394:	02077713          	andi	a4,a4,32
   13398:	0377071b          	addiw	a4,a4,55
   1339c:	40e887bb          	subw	a5,a7,a4
   133a0:	fad7c6e3          	blt	a5,a3,1334c <_strtol_r+0xa0>
   133a4:	fff00793          	li	a5,-1
   133a8:	04fe0863          	beq	t3,a5,133f8 <_strtol_r+0x14c>
   133ac:	04039263          	bnez	t2,133f0 <_strtol_r+0x144>
   133b0:	00030793          	mv	a5,t1
   133b4:	00060663          	beqz	a2,133c0 <_strtol_r+0x114>
   133b8:	040e1e63          	bnez	t3,13414 <_strtol_r+0x168>
   133bc:	00b63023          	sd	a1,0(a2) # 2000 <_ftext-0xe000>
   133c0:	00078513          	mv	a0,a5
   133c4:	00813403          	ld	s0,8(sp)
   133c8:	00013483          	ld	s1,0(sp)
   133cc:	01010113          	addi	sp,sp,16
   133d0:	00008067          	ret
   133d4:	f8f4cae3          	blt	s1,a5,13368 <_strtol_r+0xbc>
   133d8:	f85ff06f          	j	1335c <_strtol_r+0xb0>
   133dc:	03000793          	li	a5,48
   133e0:	04f88c63          	beq	a7,a5,13438 <_strtol_r+0x18c>
   133e4:	00a00413          	li	s0,10
   133e8:	00040693          	mv	a3,s0
   133ec:	f1dff06f          	j	13308 <_strtol_r+0x5c>
   133f0:	40600333          	neg	t1,t1
   133f4:	fbdff06f          	j	133b0 <_strtol_r+0x104>
   133f8:	fff00713          	li	a4,-1
   133fc:	00175793          	srli	a5,a4,0x1
   13400:	00038463          	beqz	t2,13408 <_strtol_r+0x15c>
   13404:	03f71793          	slli	a5,a4,0x3f
   13408:	02200713          	li	a4,34
   1340c:	00e52023          	sw	a4,0(a0)
   13410:	fa0608e3          	beqz	a2,133c0 <_strtol_r+0x114>
   13414:	fff80593          	addi	a1,a6,-1
   13418:	fa5ff06f          	j	133bc <_strtol_r+0x110>
   1341c:	00134883          	lbu	a7,1(t1)
   13420:	00230813          	addi	a6,t1,2
   13424:	ed5ff06f          	j	132f8 <_strtol_r+0x4c>
   13428:	00230813          	addi	a6,t1,2
   1342c:	00134883          	lbu	a7,1(t1)
   13430:	00100393          	li	t2,1
   13434:	ec5ff06f          	j	132f8 <_strtol_r+0x4c>
   13438:	00084783          	lbu	a5,0(a6)
   1343c:	05800713          	li	a4,88
   13440:	0df7f793          	andi	a5,a5,223
   13444:	02e78463          	beq	a5,a4,1346c <_strtol_r+0x1c0>
   13448:	00800413          	li	s0,8
   1344c:	00040693          	mv	a3,s0
   13450:	eb9ff06f          	j	13308 <_strtol_r+0x5c>
   13454:	03000793          	li	a5,48
   13458:	02f89463          	bne	a7,a5,13480 <_strtol_r+0x1d4>
   1345c:	00084783          	lbu	a5,0(a6)
   13460:	05800713          	li	a4,88
   13464:	0df7f793          	andi	a5,a5,223
   13468:	00e79c63          	bne	a5,a4,13480 <_strtol_r+0x1d4>
   1346c:	01000413          	li	s0,16
   13470:	00184883          	lbu	a7,1(a6)
   13474:	00040693          	mv	a3,s0
   13478:	00280813          	addi	a6,a6,2
   1347c:	e8dff06f          	j	13308 <_strtol_r+0x5c>
   13480:	01000413          	li	s0,16
   13484:	e85ff06f          	j	13308 <_strtol_r+0x5c>

0000000000013488 <strtol>:
   13488:	00060693          	mv	a3,a2
   1348c:	00058613          	mv	a2,a1
   13490:	00050593          	mv	a1,a0
   13494:	8101b503          	ld	a0,-2032(gp)
   13498:	e15ff06f          	j	132ac <_strtol_r>

000000000001349c <_vfprintf_r>:
   1349c:	e1010113          	addi	sp,sp,-496
   134a0:	1e113423          	sd	ra,488(sp)
   134a4:	1d313423          	sd	s3,456(sp)
   134a8:	1d413023          	sd	s4,448(sp)
   134ac:	1b713423          	sd	s7,424(sp)
   134b0:	00058a13          	mv	s4,a1
   134b4:	00060993          	mv	s3,a2
   134b8:	02d13423          	sd	a3,40(sp)
   134bc:	1e813023          	sd	s0,480(sp)
   134c0:	1c913c23          	sd	s1,472(sp)
   134c4:	1d213823          	sd	s2,464(sp)
   134c8:	1b513c23          	sd	s5,440(sp)
   134cc:	1b613823          	sd	s6,432(sp)
   134d0:	1b813023          	sd	s8,416(sp)
   134d4:	19913c23          	sd	s9,408(sp)
   134d8:	19a13823          	sd	s10,400(sp)
   134dc:	19b13423          	sd	s11,392(sp)
   134e0:	16813c27          	fsd	fs0,376(sp)
   134e4:	00050b93          	mv	s7,a0
   134e8:	1f5030ef          	jal	ra,16edc <_localeconv_r>
   134ec:	00053783          	ld	a5,0(a0)
   134f0:	00078513          	mv	a0,a5
   134f4:	06f13023          	sd	a5,96(sp)
   134f8:	ce5ff0ef          	jal	ra,131dc <strlen>
   134fc:	06a13423          	sd	a0,104(sp)
   13500:	000b8663          	beqz	s7,1350c <_vfprintf_r+0x70>
   13504:	050ba783          	lw	a5,80(s7)
   13508:	2e078c63          	beqz	a5,13800 <_vfprintf_r+0x364>
   1350c:	010a1683          	lh	a3,16(s4)
   13510:	03069793          	slli	a5,a3,0x30
   13514:	0307d793          	srli	a5,a5,0x30
   13518:	03279713          	slli	a4,a5,0x32
   1351c:	02074a63          	bltz	a4,13550 <_vfprintf_r+0xb4>
   13520:	000027b7          	lui	a5,0x2
   13524:	0aca2603          	lw	a2,172(s4)
   13528:	00f6e7b3          	or	a5,a3,a5
   1352c:	0107979b          	slliw	a5,a5,0x10
   13530:	ffffe737          	lui	a4,0xffffe
   13534:	4107d79b          	sraiw	a5,a5,0x10
   13538:	fff7071b          	addiw	a4,a4,-1
   1353c:	00e67733          	and	a4,a2,a4
   13540:	00fa1823          	sh	a5,16(s4)
   13544:	03079793          	slli	a5,a5,0x30
   13548:	0aea2623          	sw	a4,172(s4)
   1354c:	0307d793          	srli	a5,a5,0x30
   13550:	0087f713          	andi	a4,a5,8
   13554:	1e070063          	beqz	a4,13734 <_vfprintf_r+0x298>
   13558:	018a3703          	ld	a4,24(s4)
   1355c:	1c070c63          	beqz	a4,13734 <_vfprintf_r+0x298>
   13560:	01a7f793          	andi	a5,a5,26
   13564:	00a00713          	li	a4,10
   13568:	1ee78863          	beq	a5,a4,13758 <_vfprintf_r+0x2bc>
   1356c:	0001a7b7          	lui	a5,0x1a
   13570:	59078793          	addi	a5,a5,1424 # 1a590 <__errno+0x134>
   13574:	0f010b13          	addi	s6,sp,240
   13578:	02f13823          	sd	a5,48(sp)
   1357c:	0ef10793          	addi	a5,sp,239
   13580:	0001aab7          	lui	s5,0x1a
   13584:	0001a4b7          	lui	s1,0x1a
   13588:	40fb07b3          	sub	a5,s6,a5
   1358c:	04013c23          	sd	zero,88(sp)
   13590:	0b613823          	sd	s6,176(sp)
   13594:	0c013023          	sd	zero,192(sp)
   13598:	0a012c23          	sw	zero,184(sp)
   1359c:	06012823          	sw	zero,112(sp)
   135a0:	000b0893          	mv	a7,s6
   135a4:	02013c23          	sd	zero,56(sp)
   135a8:	06012a23          	sw	zero,116(sp)
   135ac:	00012e23          	sw	zero,28(sp)
   135b0:	6f8a8a93          	addi	s5,s5,1784 # 1a6f8 <blanks.4193>
   135b4:	70848493          	addi	s1,s1,1800 # 1a708 <zeroes.4194>
   135b8:	06f13c23          	sd	a5,120(sp)
   135bc:	0009c783          	lbu	a5,0(s3)
   135c0:	0e0782e3          	beqz	a5,13ea4 <_vfprintf_r+0xa08>
   135c4:	02500713          	li	a4,37
   135c8:	00098413          	mv	s0,s3
   135cc:	00e79663          	bne	a5,a4,135d8 <_vfprintf_r+0x13c>
   135d0:	0580006f          	j	13628 <_vfprintf_r+0x18c>
   135d4:	00e78863          	beq	a5,a4,135e4 <_vfprintf_r+0x148>
   135d8:	00140413          	addi	s0,s0,1
   135dc:	00044783          	lbu	a5,0(s0)
   135e0:	fe079ae3          	bnez	a5,135d4 <_vfprintf_r+0x138>
   135e4:	4134093b          	subw	s2,s0,s3
   135e8:	04090063          	beqz	s2,13628 <_vfprintf_r+0x18c>
   135ec:	0c013703          	ld	a4,192(sp)
   135f0:	0b812783          	lw	a5,184(sp)
   135f4:	00090693          	mv	a3,s2
   135f8:	00d70733          	add	a4,a4,a3
   135fc:	0017879b          	addiw	a5,a5,1
   13600:	0138b023          	sd	s3,0(a7)
   13604:	00d8b423          	sd	a3,8(a7)
   13608:	0ce13023          	sd	a4,192(sp)
   1360c:	0af12c23          	sw	a5,184(sp)
   13610:	00700713          	li	a4,7
   13614:	01088893          	addi	a7,a7,16
   13618:	16f74063          	blt	a4,a5,13778 <_vfprintf_r+0x2dc>
   1361c:	01c12783          	lw	a5,28(sp)
   13620:	012787bb          	addw	a5,a5,s2
   13624:	00f12e23          	sw	a5,28(sp)
   13628:	00044783          	lbu	a5,0(s0)
   1362c:	16078463          	beqz	a5,13794 <_vfprintf_r+0x2f8>
   13630:	00140993          	addi	s3,s0,1
   13634:	080107a3          	sb	zero,143(sp)
   13638:	00000613          	li	a2,0
   1363c:	00000593          	li	a1,0
   13640:	fff00413          	li	s0,-1
   13644:	00012c23          	sw	zero,24(sp)
   13648:	00000c13          	li	s8,0
   1364c:	05800713          	li	a4,88
   13650:	00900693          	li	a3,9
   13654:	02a00513          	li	a0,42
   13658:	0009cd03          	lbu	s10,0(s3)
   1365c:	00198993          	addi	s3,s3,1
   13660:	fe0d079b          	addiw	a5,s10,-32
   13664:	1cf762e3          	bltu	a4,a5,14028 <_vfprintf_r+0xb8c>
   13668:	03013803          	ld	a6,48(sp)
   1366c:	02079793          	slli	a5,a5,0x20
   13670:	01e7d793          	srli	a5,a5,0x1e
   13674:	010787b3          	add	a5,a5,a6
   13678:	0007a783          	lw	a5,0(a5)
   1367c:	00078067          	jr	a5
   13680:	010c6c13          	ori	s8,s8,16
   13684:	fd5ff06f          	j	13658 <_vfprintf_r+0x1bc>
   13688:	02813783          	ld	a5,40(sp)
   1368c:	0007a803          	lw	a6,0(a5)
   13690:	00878793          	addi	a5,a5,8
   13694:	02f13423          	sd	a5,40(sp)
   13698:	01012c23          	sw	a6,24(sp)
   1369c:	fa085ee3          	bgez	a6,13658 <_vfprintf_r+0x1bc>
   136a0:	410007bb          	negw	a5,a6
   136a4:	00f12c23          	sw	a5,24(sp)
   136a8:	004c6c13          	ori	s8,s8,4
   136ac:	fadff06f          	j	13658 <_vfprintf_r+0x1bc>
   136b0:	03000793          	li	a5,48
   136b4:	08f10823          	sb	a5,144(sp)
   136b8:	07800793          	li	a5,120
   136bc:	08f108a3          	sb	a5,145(sp)
   136c0:	02813783          	ld	a5,40(sp)
   136c4:	080107a3          	sb	zero,143(sp)
   136c8:	002c6693          	ori	a3,s8,2
   136cc:	00878713          	addi	a4,a5,8
   136d0:	0007b783          	ld	a5,0(a5)
   136d4:	180444e3          	bltz	s0,1405c <_vfprintf_r+0xbc0>
   136d8:	f7fc7c13          	andi	s8,s8,-129
   136dc:	02e13423          	sd	a4,40(sp)
   136e0:	002c6c13          	ori	s8,s8,2
   136e4:	120796e3          	bnez	a5,14010 <_vfprintf_r+0xb74>
   136e8:	0001b7b7          	lui	a5,0x1b
   136ec:	b1878793          	addi	a5,a5,-1256 # 1ab18 <zeroes.4137+0x58>
   136f0:	02f13c23          	sd	a5,56(sp)
   136f4:	07800d13          	li	s10,120
   136f8:	00000613          	li	a2,0
   136fc:	7e040463          	beqz	s0,13ee4 <_vfprintf_r+0xa48>
   13700:	00000793          	li	a5,0
   13704:	000b0913          	mv	s2,s6
   13708:	03813683          	ld	a3,56(sp)
   1370c:	00f7f713          	andi	a4,a5,15
   13710:	fff90913          	addi	s2,s2,-1
   13714:	00e68733          	add	a4,a3,a4
   13718:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_gp+0xfffffffffffe0930>
   1371c:	0047d793          	srli	a5,a5,0x4
   13720:	00e90023          	sb	a4,0(s2)
   13724:	fe0792e3          	bnez	a5,13708 <_vfprintf_r+0x26c>
   13728:	412b07b3          	sub	a5,s6,s2
   1372c:	02f12023          	sw	a5,32(sp)
   13730:	1680006f          	j	13898 <_vfprintf_r+0x3fc>
   13734:	000a0593          	mv	a1,s4
   13738:	000b8513          	mv	a0,s7
   1373c:	2bd010ef          	jal	ra,151f8 <__swsetup_r>
   13740:	00050463          	beqz	a0,13748 <_vfprintf_r+0x2ac>
   13744:	3940106f          	j	14ad8 <_vfprintf_r+0x163c>
   13748:	010a5783          	lhu	a5,16(s4)
   1374c:	00a00713          	li	a4,10
   13750:	01a7f793          	andi	a5,a5,26
   13754:	e0e79ce3          	bne	a5,a4,1356c <_vfprintf_r+0xd0>
   13758:	012a1783          	lh	a5,18(s4)
   1375c:	e007c8e3          	bltz	a5,1356c <_vfprintf_r+0xd0>
   13760:	02813683          	ld	a3,40(sp)
   13764:	00098613          	mv	a2,s3
   13768:	000a0593          	mv	a1,s4
   1376c:	000b8513          	mv	a0,s7
   13770:	1c9010ef          	jal	ra,15138 <__sbprintf>
   13774:	04c0006f          	j	137c0 <_vfprintf_r+0x324>
   13778:	0b010613          	addi	a2,sp,176
   1377c:	000a0593          	mv	a1,s4
   13780:	000b8513          	mv	a0,s7
   13784:	128050ef          	jal	ra,188ac <__sprint_r>
   13788:	02051263          	bnez	a0,137ac <_vfprintf_r+0x310>
   1378c:	000b0893          	mv	a7,s6
   13790:	e8dff06f          	j	1361c <_vfprintf_r+0x180>
   13794:	0c013783          	ld	a5,192(sp)
   13798:	00078a63          	beqz	a5,137ac <_vfprintf_r+0x310>
   1379c:	0b010613          	addi	a2,sp,176
   137a0:	000a0593          	mv	a1,s4
   137a4:	000b8513          	mv	a0,s7
   137a8:	104050ef          	jal	ra,188ac <__sprint_r>
   137ac:	010a5783          	lhu	a5,16(s4)
   137b0:	0407f793          	andi	a5,a5,64
   137b4:	00078463          	beqz	a5,137bc <_vfprintf_r+0x320>
   137b8:	3200106f          	j	14ad8 <_vfprintf_r+0x163c>
   137bc:	01c12503          	lw	a0,28(sp)
   137c0:	1e813083          	ld	ra,488(sp)
   137c4:	1e013403          	ld	s0,480(sp)
   137c8:	1d813483          	ld	s1,472(sp)
   137cc:	1d013903          	ld	s2,464(sp)
   137d0:	1c813983          	ld	s3,456(sp)
   137d4:	1c013a03          	ld	s4,448(sp)
   137d8:	1b813a83          	ld	s5,440(sp)
   137dc:	1b013b03          	ld	s6,432(sp)
   137e0:	1a813b83          	ld	s7,424(sp)
   137e4:	1a013c03          	ld	s8,416(sp)
   137e8:	19813c83          	ld	s9,408(sp)
   137ec:	19013d03          	ld	s10,400(sp)
   137f0:	18813d83          	ld	s11,392(sp)
   137f4:	17813407          	fld	fs0,376(sp)
   137f8:	1f010113          	addi	sp,sp,496
   137fc:	00008067          	ret
   13800:	000b8513          	mv	a0,s7
   13804:	8e9fd0ef          	jal	ra,110ec <__sinit>
   13808:	d05ff06f          	j	1350c <_vfprintf_r+0x70>
   1380c:	00100613          	li	a2,1
   13810:	02b00593          	li	a1,43
   13814:	e45ff06f          	j	13658 <_vfprintf_r+0x1bc>
   13818:	00060463          	beqz	a2,13820 <_vfprintf_r+0x384>
   1381c:	0d90106f          	j	150f4 <_vfprintf_r+0x1c58>
   13820:	010c7793          	andi	a5,s8,16
   13824:	22078263          	beqz	a5,13a48 <_vfprintf_r+0x5ac>
   13828:	02813783          	ld	a5,40(sp)
   1382c:	080107a3          	sb	zero,143(sp)
   13830:	00878713          	addi	a4,a5,8
   13834:	0007b783          	ld	a5,0(a5)
   13838:	22044663          	bltz	s0,13a64 <_vfprintf_r+0x5c8>
   1383c:	02e13423          	sd	a4,40(sp)
   13840:	f7fc7c13          	andi	s8,s8,-129
   13844:	22079663          	bnez	a5,13a70 <_vfprintf_r+0x5d4>
   13848:	00000613          	li	a2,0
   1384c:	00000793          	li	a5,0
   13850:	00041463          	bnez	s0,13858 <_vfprintf_r+0x3bc>
   13854:	3680106f          	j	14bbc <_vfprintf_r+0x1720>
   13858:	000b0913          	mv	s2,s6
   1385c:	0077f713          	andi	a4,a5,7
   13860:	fff90913          	addi	s2,s2,-1
   13864:	0307071b          	addiw	a4,a4,48
   13868:	00e90023          	sb	a4,0(s2)
   1386c:	0037d793          	srli	a5,a5,0x3
   13870:	fe0796e3          	bnez	a5,1385c <_vfprintf_r+0x3c0>
   13874:	001c7793          	andi	a5,s8,1
   13878:	ea0788e3          	beqz	a5,13728 <_vfprintf_r+0x28c>
   1387c:	03000793          	li	a5,48
   13880:	eaf704e3          	beq	a4,a5,13728 <_vfprintf_r+0x28c>
   13884:	fff90713          	addi	a4,s2,-1
   13888:	40eb06b3          	sub	a3,s6,a4
   1388c:	fef90fa3          	sb	a5,-1(s2)
   13890:	02d12023          	sw	a3,32(sp)
   13894:	00070913          	mv	s2,a4
   13898:	02012783          	lw	a5,32(sp)
   1389c:	00078d93          	mv	s11,a5
   138a0:	0087d463          	ble	s0,a5,138a8 <_vfprintf_r+0x40c>
   138a4:	00040d93          	mv	s11,s0
   138a8:	01b12423          	sw	s11,8(sp)
   138ac:	04012623          	sw	zero,76(sp)
   138b0:	2a060263          	beqz	a2,13b54 <_vfprintf_r+0x6b8>
   138b4:	00812783          	lw	a5,8(sp)
   138b8:	0017879b          	addiw	a5,a5,1
   138bc:	00f12423          	sw	a5,8(sp)
   138c0:	2940006f          	j	13b54 <_vfprintf_r+0x6b8>
   138c4:	0009cd03          	lbu	s10,0(s3)
   138c8:	00198993          	addi	s3,s3,1
   138cc:	00ad1463          	bne	s10,a0,138d4 <_vfprintf_r+0x438>
   138d0:	75c0106f          	j	1502c <_vfprintf_r+0x1b90>
   138d4:	fd0d079b          	addiw	a5,s10,-48
   138d8:	00000413          	li	s0,0
   138dc:	d8f6e2e3          	bltu	a3,a5,13660 <_vfprintf_r+0x1c4>
   138e0:	00198993          	addi	s3,s3,1
   138e4:	fff9cd03          	lbu	s10,-1(s3)
   138e8:	0014181b          	slliw	a6,s0,0x1
   138ec:	0034141b          	slliw	s0,s0,0x3
   138f0:	0088043b          	addw	s0,a6,s0
   138f4:	00f4043b          	addw	s0,s0,a5
   138f8:	fd0d079b          	addiw	a5,s10,-48
   138fc:	fef6f2e3          	bleu	a5,a3,138e0 <_vfprintf_r+0x444>
   13900:	d60450e3          	bgez	s0,13660 <_vfprintf_r+0x1c4>
   13904:	fff00413          	li	s0,-1
   13908:	d59ff06f          	j	13660 <_vfprintf_r+0x1c4>
   1390c:	080c6c13          	ori	s8,s8,128
   13910:	d49ff06f          	j	13658 <_vfprintf_r+0x1bc>
   13914:	d40592e3          	bnez	a1,13658 <_vfprintf_r+0x1bc>
   13918:	00100613          	li	a2,1
   1391c:	02000593          	li	a1,32
   13920:	d39ff06f          	j	13658 <_vfprintf_r+0x1bc>
   13924:	001c6c13          	ori	s8,s8,1
   13928:	d31ff06f          	j	13658 <_vfprintf_r+0x1bc>
   1392c:	02813783          	ld	a5,40(sp)
   13930:	080107a3          	sb	zero,143(sp)
   13934:	0007b903          	ld	s2,0(a5)
   13938:	00878c93          	addi	s9,a5,8
   1393c:	00091463          	bnez	s2,13944 <_vfprintf_r+0x4a8>
   13940:	39c0106f          	j	14cdc <_vfprintf_r+0x1840>
   13944:	01113023          	sd	a7,0(sp)
   13948:	00045463          	bgez	s0,13950 <_vfprintf_r+0x4b4>
   1394c:	3240106f          	j	14c70 <_vfprintf_r+0x17d4>
   13950:	00040613          	mv	a2,s0
   13954:	00000593          	li	a1,0
   13958:	00090513          	mv	a0,s2
   1395c:	e2dfe0ef          	jal	ra,12788 <memchr>
   13960:	00013883          	ld	a7,0(sp)
   13964:	00051463          	bnez	a0,1396c <_vfprintf_r+0x4d0>
   13968:	4c00106f          	j	14e28 <_vfprintf_r+0x198c>
   1396c:	412507bb          	subw	a5,a0,s2
   13970:	02f12023          	sw	a5,32(sp)
   13974:	00078d93          	mv	s11,a5
   13978:	0007d463          	bgez	a5,13980 <_vfprintf_r+0x4e4>
   1397c:	3140106f          	j	14c90 <_vfprintf_r+0x17f4>
   13980:	08f14603          	lbu	a2,143(sp)
   13984:	01b12423          	sw	s11,8(sp)
   13988:	03913423          	sd	s9,40(sp)
   1398c:	00000413          	li	s0,0
   13990:	04012623          	sw	zero,76(sp)
   13994:	f1dff06f          	j	138b0 <_vfprintf_r+0x414>
   13998:	00060463          	beqz	a2,139a0 <_vfprintf_r+0x504>
   1399c:	7800106f          	j	1511c <_vfprintf_r+0x1c80>
   139a0:	010c7793          	andi	a5,s8,16
   139a4:	0e078463          	beqz	a5,13a8c <_vfprintf_r+0x5f0>
   139a8:	02813783          	ld	a5,40(sp)
   139ac:	080107a3          	sb	zero,143(sp)
   139b0:	00878713          	addi	a4,a5,8
   139b4:	0007b783          	ld	a5,0(a5)
   139b8:	0e044863          	bltz	s0,13aa8 <_vfprintf_r+0x60c>
   139bc:	02e13423          	sd	a4,40(sp)
   139c0:	f7fc7c13          	andi	s8,s8,-129
   139c4:	00000613          	li	a2,0
   139c8:	50078c63          	beqz	a5,13ee0 <_vfprintf_r+0xa44>
   139cc:	00900713          	li	a4,9
   139d0:	000b0913          	mv	s2,s6
   139d4:	00a00693          	li	a3,10
   139d8:	40f770e3          	bleu	a5,a4,145d8 <_vfprintf_r+0x113c>
   139dc:	02d7f733          	remu	a4,a5,a3
   139e0:	fff90913          	addi	s2,s2,-1
   139e4:	02d7d7b3          	divu	a5,a5,a3
   139e8:	0307071b          	addiw	a4,a4,48
   139ec:	00e90023          	sb	a4,0(s2)
   139f0:	fe0796e3          	bnez	a5,139dc <_vfprintf_r+0x540>
   139f4:	412b07b3          	sub	a5,s6,s2
   139f8:	02f12023          	sw	a5,32(sp)
   139fc:	e9dff06f          	j	13898 <_vfprintf_r+0x3fc>
   13a00:	00012c23          	sw	zero,24(sp)
   13a04:	fd0d079b          	addiw	a5,s10,-48
   13a08:	01812303          	lw	t1,24(sp)
   13a0c:	00198993          	addi	s3,s3,1
   13a10:	fff9cd03          	lbu	s10,-1(s3)
   13a14:	0013181b          	slliw	a6,t1,0x1
   13a18:	00331c9b          	slliw	s9,t1,0x3
   13a1c:	01980cbb          	addw	s9,a6,s9
   13a20:	019787bb          	addw	a5,a5,s9
   13a24:	00f12c23          	sw	a5,24(sp)
   13a28:	fd0d079b          	addiw	a5,s10,-48
   13a2c:	fcf6fee3          	bleu	a5,a3,13a08 <_vfprintf_r+0x56c>
   13a30:	c31ff06f          	j	13660 <_vfprintf_r+0x1c4>
   13a34:	00060463          	beqz	a2,13a3c <_vfprintf_r+0x5a0>
   13a38:	6d80106f          	j	15110 <_vfprintf_r+0x1c74>
   13a3c:	010c6c13          	ori	s8,s8,16
   13a40:	010c7793          	andi	a5,s8,16
   13a44:	de0792e3          	bnez	a5,13828 <_vfprintf_r+0x38c>
   13a48:	040c7793          	andi	a5,s8,64
   13a4c:	080107a3          	sb	zero,143(sp)
   13a50:	580780e3          	beqz	a5,147d0 <_vfprintf_r+0x1334>
   13a54:	02813783          	ld	a5,40(sp)
   13a58:	00878713          	addi	a4,a5,8
   13a5c:	0007d783          	lhu	a5,0(a5)
   13a60:	dc045ee3          	bgez	s0,1383c <_vfprintf_r+0x3a0>
   13a64:	02e13423          	sd	a4,40(sp)
   13a68:	00000613          	li	a2,0
   13a6c:	60078a63          	beqz	a5,14080 <_vfprintf_r+0xbe4>
   13a70:	00000613          	li	a2,0
   13a74:	de5ff06f          	j	13858 <_vfprintf_r+0x3bc>
   13a78:	00060463          	beqz	a2,13a80 <_vfprintf_r+0x5e4>
   13a7c:	6880106f          	j	15104 <_vfprintf_r+0x1c68>
   13a80:	010c6c13          	ori	s8,s8,16
   13a84:	010c7793          	andi	a5,s8,16
   13a88:	f20790e3          	bnez	a5,139a8 <_vfprintf_r+0x50c>
   13a8c:	040c7793          	andi	a5,s8,64
   13a90:	080107a3          	sb	zero,143(sp)
   13a94:	500780e3          	beqz	a5,14794 <_vfprintf_r+0x12f8>
   13a98:	02813783          	ld	a5,40(sp)
   13a9c:	00878713          	addi	a4,a5,8
   13aa0:	0007d783          	lhu	a5,0(a5)
   13aa4:	f0045ce3          	bgez	s0,139bc <_vfprintf_r+0x520>
   13aa8:	02e13423          	sd	a4,40(sp)
   13aac:	00000613          	li	a2,0
   13ab0:	f0079ee3          	bnez	a5,139cc <_vfprintf_r+0x530>
   13ab4:	00100793          	li	a5,1
   13ab8:	5c80006f          	j	14080 <_vfprintf_r+0xbe4>
   13abc:	00060463          	beqz	a2,13ac4 <_vfprintf_r+0x628>
   13ac0:	63c0106f          	j	150fc <_vfprintf_r+0x1c60>
   13ac4:	0001b7b7          	lui	a5,0x1b
   13ac8:	b0078793          	addi	a5,a5,-1280 # 1ab00 <zeroes.4137+0x40>
   13acc:	02f13c23          	sd	a5,56(sp)
   13ad0:	010c7793          	andi	a5,s8,16
   13ad4:	4c078263          	beqz	a5,13f98 <_vfprintf_r+0xafc>
   13ad8:	02813703          	ld	a4,40(sp)
   13adc:	00073783          	ld	a5,0(a4)
   13ae0:	00870713          	addi	a4,a4,8
   13ae4:	02e13423          	sd	a4,40(sp)
   13ae8:	001c7713          	andi	a4,s8,1
   13aec:	120706e3          	beqz	a4,14418 <_vfprintf_r+0xf7c>
   13af0:	6a078ee3          	beqz	a5,149ac <_vfprintf_r+0x1510>
   13af4:	03000713          	li	a4,48
   13af8:	08e10823          	sb	a4,144(sp)
   13afc:	09a108a3          	sb	s10,145(sp)
   13b00:	080107a3          	sb	zero,143(sp)
   13b04:	002c6713          	ori	a4,s8,2
   13b08:	00045463          	bgez	s0,13b10 <_vfprintf_r+0x674>
   13b0c:	2140106f          	j	14d20 <_vfprintf_r+0x1884>
   13b10:	f7fc7c13          	andi	s8,s8,-129
   13b14:	002c6c13          	ori	s8,s8,2
   13b18:	00000613          	li	a2,0
   13b1c:	be9ff06f          	j	13704 <_vfprintf_r+0x268>
   13b20:	02813703          	ld	a4,40(sp)
   13b24:	00100693          	li	a3,1
   13b28:	00d12423          	sw	a3,8(sp)
   13b2c:	00072783          	lw	a5,0(a4)
   13b30:	080107a3          	sb	zero,143(sp)
   13b34:	00000613          	li	a2,0
   13b38:	0cf10423          	sb	a5,200(sp)
   13b3c:	00870793          	addi	a5,a4,8
   13b40:	02f13423          	sd	a5,40(sp)
   13b44:	02d12023          	sw	a3,32(sp)
   13b48:	00000413          	li	s0,0
   13b4c:	04012623          	sw	zero,76(sp)
   13b50:	0c810913          	addi	s2,sp,200
   13b54:	002c7793          	andi	a5,s8,2
   13b58:	04f12023          	sw	a5,64(sp)
   13b5c:	00078863          	beqz	a5,13b6c <_vfprintf_r+0x6d0>
   13b60:	00812783          	lw	a5,8(sp)
   13b64:	0027879b          	addiw	a5,a5,2
   13b68:	00f12423          	sw	a5,8(sp)
   13b6c:	084c7793          	andi	a5,s8,132
   13b70:	04f12423          	sw	a5,72(sp)
   13b74:	52079263          	bnez	a5,14098 <_vfprintf_r+0xbfc>
   13b78:	01812783          	lw	a5,24(sp)
   13b7c:	00812703          	lw	a4,8(sp)
   13b80:	40e78cbb          	subw	s9,a5,a4
   13b84:	51905a63          	blez	s9,14098 <_vfprintf_r+0xbfc>
   13b88:	01000793          	li	a5,16
   13b8c:	0197c463          	blt	a5,s9,13b94 <_vfprintf_r+0x6f8>
   13b90:	1080106f          	j	14c98 <_vfprintf_r+0x17fc>
   13b94:	01000813          	li	a6,16
   13b98:	0c013783          	ld	a5,192(sp)
   13b9c:	0b812703          	lw	a4,184(sp)
   13ba0:	05513823          	sd	s5,80(sp)
   13ba4:	00700313          	li	t1,7
   13ba8:	00080d93          	mv	s11,a6
   13bac:	00c0006f          	j	13bb8 <_vfprintf_r+0x71c>
   13bb0:	ff0c8c9b          	addiw	s9,s9,-16
   13bb4:	059dde63          	ble	s9,s11,13c10 <_vfprintf_r+0x774>
   13bb8:	01078793          	addi	a5,a5,16
   13bbc:	0017071b          	addiw	a4,a4,1
   13bc0:	0158b023          	sd	s5,0(a7)
   13bc4:	0108b423          	sd	a6,8(a7)
   13bc8:	0cf13023          	sd	a5,192(sp)
   13bcc:	0ae12c23          	sw	a4,184(sp)
   13bd0:	01088893          	addi	a7,a7,16
   13bd4:	fce35ee3          	ble	a4,t1,13bb0 <_vfprintf_r+0x714>
   13bd8:	0b010613          	addi	a2,sp,176
   13bdc:	000a0593          	mv	a1,s4
   13be0:	000b8513          	mv	a0,s7
   13be4:	00613823          	sd	t1,16(sp)
   13be8:	01013023          	sd	a6,0(sp)
   13bec:	4c1040ef          	jal	ra,188ac <__sprint_r>
   13bf0:	ba051ee3          	bnez	a0,137ac <_vfprintf_r+0x310>
   13bf4:	ff0c8c9b          	addiw	s9,s9,-16
   13bf8:	0c013783          	ld	a5,192(sp)
   13bfc:	0b812703          	lw	a4,184(sp)
   13c00:	000b0893          	mv	a7,s6
   13c04:	01013303          	ld	t1,16(sp)
   13c08:	00013803          	ld	a6,0(sp)
   13c0c:	fb9dc6e3          	blt	s11,s9,13bb8 <_vfprintf_r+0x71c>
   13c10:	05013603          	ld	a2,80(sp)
   13c14:	00fc87b3          	add	a5,s9,a5
   13c18:	0017071b          	addiw	a4,a4,1
   13c1c:	00c8b023          	sd	a2,0(a7)
   13c20:	0198b423          	sd	s9,8(a7)
   13c24:	0cf13023          	sd	a5,192(sp)
   13c28:	0ae12c23          	sw	a4,184(sp)
   13c2c:	00700693          	li	a3,7
   13c30:	0ce6cae3          	blt	a3,a4,14504 <_vfprintf_r+0x1068>
   13c34:	08f14603          	lbu	a2,143(sp)
   13c38:	01088893          	addi	a7,a7,16
   13c3c:	02060a63          	beqz	a2,13c70 <_vfprintf_r+0x7d4>
   13c40:	0b812703          	lw	a4,184(sp)
   13c44:	08f10693          	addi	a3,sp,143
   13c48:	00d8b023          	sd	a3,0(a7)
   13c4c:	00178793          	addi	a5,a5,1
   13c50:	00100693          	li	a3,1
   13c54:	0017071b          	addiw	a4,a4,1
   13c58:	00d8b423          	sd	a3,8(a7)
   13c5c:	0cf13023          	sd	a5,192(sp)
   13c60:	0ae12c23          	sw	a4,184(sp)
   13c64:	00700693          	li	a3,7
   13c68:	01088893          	addi	a7,a7,16
   13c6c:	76e6c663          	blt	a3,a4,143d8 <_vfprintf_r+0xf3c>
   13c70:	04012703          	lw	a4,64(sp)
   13c74:	02070a63          	beqz	a4,13ca8 <_vfprintf_r+0x80c>
   13c78:	0b812703          	lw	a4,184(sp)
   13c7c:	09010693          	addi	a3,sp,144
   13c80:	00d8b023          	sd	a3,0(a7)
   13c84:	00278793          	addi	a5,a5,2
   13c88:	00200693          	li	a3,2
   13c8c:	0017071b          	addiw	a4,a4,1
   13c90:	00d8b423          	sd	a3,8(a7)
   13c94:	0cf13023          	sd	a5,192(sp)
   13c98:	0ae12c23          	sw	a4,184(sp)
   13c9c:	00700693          	li	a3,7
   13ca0:	01088893          	addi	a7,a7,16
   13ca4:	74e6ca63          	blt	a3,a4,143f8 <_vfprintf_r+0xf5c>
   13ca8:	04812683          	lw	a3,72(sp)
   13cac:	08000713          	li	a4,128
   13cb0:	5ee68663          	beq	a3,a4,1429c <_vfprintf_r+0xe00>
   13cb4:	02012703          	lw	a4,32(sp)
   13cb8:	40e4043b          	subw	s0,s0,a4
   13cbc:	0c805063          	blez	s0,13d7c <_vfprintf_r+0x8e0>
   13cc0:	01000713          	li	a4,16
   13cc4:	4e875ce3          	ble	s0,a4,149bc <_vfprintf_r+0x1520>
   13cc8:	01000c93          	li	s9,16
   13ccc:	0b812703          	lw	a4,184(sp)
   13cd0:	00913823          	sd	s1,16(sp)
   13cd4:	00700813          	li	a6,7
   13cd8:	000c8d93          	mv	s11,s9
   13cdc:	00c0006f          	j	13ce8 <_vfprintf_r+0x84c>
   13ce0:	ff04041b          	addiw	s0,s0,-16
   13ce4:	048dda63          	ble	s0,s11,13d38 <_vfprintf_r+0x89c>
   13ce8:	01078793          	addi	a5,a5,16
   13cec:	0017071b          	addiw	a4,a4,1
   13cf0:	0098b023          	sd	s1,0(a7)
   13cf4:	0198b423          	sd	s9,8(a7)
   13cf8:	0cf13023          	sd	a5,192(sp)
   13cfc:	0ae12c23          	sw	a4,184(sp)
   13d00:	01088893          	addi	a7,a7,16
   13d04:	fce85ee3          	ble	a4,a6,13ce0 <_vfprintf_r+0x844>
   13d08:	0b010613          	addi	a2,sp,176
   13d0c:	000a0593          	mv	a1,s4
   13d10:	000b8513          	mv	a0,s7
   13d14:	01013023          	sd	a6,0(sp)
   13d18:	395040ef          	jal	ra,188ac <__sprint_r>
   13d1c:	a80518e3          	bnez	a0,137ac <_vfprintf_r+0x310>
   13d20:	ff04041b          	addiw	s0,s0,-16
   13d24:	0c013783          	ld	a5,192(sp)
   13d28:	0b812703          	lw	a4,184(sp)
   13d2c:	000b0893          	mv	a7,s6
   13d30:	00013803          	ld	a6,0(sp)
   13d34:	fa8dcae3          	blt	s11,s0,13ce8 <_vfprintf_r+0x84c>
   13d38:	01013683          	ld	a3,16(sp)
   13d3c:	008787b3          	add	a5,a5,s0
   13d40:	0017071b          	addiw	a4,a4,1
   13d44:	00d8b023          	sd	a3,0(a7)
   13d48:	0088b423          	sd	s0,8(a7)
   13d4c:	0cf13023          	sd	a5,192(sp)
   13d50:	0ae12c23          	sw	a4,184(sp)
   13d54:	00700693          	li	a3,7
   13d58:	01088893          	addi	a7,a7,16
   13d5c:	02e6d063          	ble	a4,a3,13d7c <_vfprintf_r+0x8e0>
   13d60:	0b010613          	addi	a2,sp,176
   13d64:	000a0593          	mv	a1,s4
   13d68:	000b8513          	mv	a0,s7
   13d6c:	341040ef          	jal	ra,188ac <__sprint_r>
   13d70:	a2051ee3          	bnez	a0,137ac <_vfprintf_r+0x310>
   13d74:	0c013783          	ld	a5,192(sp)
   13d78:	000b0893          	mv	a7,s6
   13d7c:	100c7713          	andi	a4,s8,256
   13d80:	40071663          	bnez	a4,1418c <_vfprintf_r+0xcf0>
   13d84:	02012703          	lw	a4,32(sp)
   13d88:	0b812683          	lw	a3,184(sp)
   13d8c:	0128b023          	sd	s2,0(a7)
   13d90:	00e787b3          	add	a5,a5,a4
   13d94:	0016869b          	addiw	a3,a3,1
   13d98:	00e8b423          	sd	a4,8(a7)
   13d9c:	0cf13023          	sd	a5,192(sp)
   13da0:	0ad12c23          	sw	a3,184(sp)
   13da4:	00700713          	li	a4,7
   13da8:	3cd74263          	blt	a4,a3,1416c <_vfprintf_r+0xcd0>
   13dac:	01088893          	addi	a7,a7,16
   13db0:	004c7c13          	andi	s8,s8,4
   13db4:	0c0c0063          	beqz	s8,13e74 <_vfprintf_r+0x9d8>
   13db8:	01812703          	lw	a4,24(sp)
   13dbc:	00812683          	lw	a3,8(sp)
   13dc0:	40d7043b          	subw	s0,a4,a3
   13dc4:	0a805863          	blez	s0,13e74 <_vfprintf_r+0x9d8>
   13dc8:	01000713          	li	a4,16
   13dcc:	748754e3          	ble	s0,a4,14d14 <_vfprintf_r+0x1878>
   13dd0:	01000913          	li	s2,16
   13dd4:	0b812703          	lw	a4,184(sp)
   13dd8:	05513823          	sd	s5,80(sp)
   13ddc:	00700c13          	li	s8,7
   13de0:	00090d13          	mv	s10,s2
   13de4:	00c0006f          	j	13df0 <_vfprintf_r+0x954>
   13de8:	ff04041b          	addiw	s0,s0,-16
   13dec:	048d5663          	ble	s0,s10,13e38 <_vfprintf_r+0x99c>
   13df0:	01078793          	addi	a5,a5,16
   13df4:	0017071b          	addiw	a4,a4,1
   13df8:	0158b023          	sd	s5,0(a7)
   13dfc:	0128b423          	sd	s2,8(a7)
   13e00:	0cf13023          	sd	a5,192(sp)
   13e04:	0ae12c23          	sw	a4,184(sp)
   13e08:	01088893          	addi	a7,a7,16
   13e0c:	fcec5ee3          	ble	a4,s8,13de8 <_vfprintf_r+0x94c>
   13e10:	0b010613          	addi	a2,sp,176
   13e14:	000a0593          	mv	a1,s4
   13e18:	000b8513          	mv	a0,s7
   13e1c:	291040ef          	jal	ra,188ac <__sprint_r>
   13e20:	980516e3          	bnez	a0,137ac <_vfprintf_r+0x310>
   13e24:	ff04041b          	addiw	s0,s0,-16
   13e28:	0c013783          	ld	a5,192(sp)
   13e2c:	0b812703          	lw	a4,184(sp)
   13e30:	000b0893          	mv	a7,s6
   13e34:	fa8d4ee3          	blt	s10,s0,13df0 <_vfprintf_r+0x954>
   13e38:	05013683          	ld	a3,80(sp)
   13e3c:	008787b3          	add	a5,a5,s0
   13e40:	0017071b          	addiw	a4,a4,1
   13e44:	00d8b023          	sd	a3,0(a7)
   13e48:	0088b423          	sd	s0,8(a7)
   13e4c:	0cf13023          	sd	a5,192(sp)
   13e50:	0ae12c23          	sw	a4,184(sp)
   13e54:	00700693          	li	a3,7
   13e58:	00e6de63          	ble	a4,a3,13e74 <_vfprintf_r+0x9d8>
   13e5c:	0b010613          	addi	a2,sp,176
   13e60:	000a0593          	mv	a1,s4
   13e64:	000b8513          	mv	a0,s7
   13e68:	245040ef          	jal	ra,188ac <__sprint_r>
   13e6c:	940510e3          	bnez	a0,137ac <_vfprintf_r+0x310>
   13e70:	0c013783          	ld	a5,192(sp)
   13e74:	01812c83          	lw	s9,24(sp)
   13e78:	00812703          	lw	a4,8(sp)
   13e7c:	00ecd463          	ble	a4,s9,13e84 <_vfprintf_r+0x9e8>
   13e80:	00070c93          	mv	s9,a4
   13e84:	01c12703          	lw	a4,28(sp)
   13e88:	0197073b          	addw	a4,a4,s9
   13e8c:	00e12e23          	sw	a4,28(sp)
   13e90:	52079863          	bnez	a5,143c0 <_vfprintf_r+0xf24>
   13e94:	0009c783          	lbu	a5,0(s3)
   13e98:	0a012c23          	sw	zero,184(sp)
   13e9c:	000b0893          	mv	a7,s6
   13ea0:	f2079263          	bnez	a5,135c4 <_vfprintf_r+0x128>
   13ea4:	00098413          	mv	s0,s3
   13ea8:	f80ff06f          	j	13628 <_vfprintf_r+0x18c>
   13eac:	00060463          	beqz	a2,13eb4 <_vfprintf_r+0xa18>
   13eb0:	22c0106f          	j	150dc <_vfprintf_r+0x1c40>
   13eb4:	010c7793          	andi	a5,s8,16
   13eb8:	12078e63          	beqz	a5,13ff4 <_vfprintf_r+0xb58>
   13ebc:	02813703          	ld	a4,40(sp)
   13ec0:	00073783          	ld	a5,0(a4)
   13ec4:	00870713          	addi	a4,a4,8
   13ec8:	02e13423          	sd	a4,40(sp)
   13ecc:	1407c0e3          	bltz	a5,1480c <_vfprintf_r+0x1370>
   13ed0:	08f14603          	lbu	a2,143(sp)
   13ed4:	bc044ee3          	bltz	s0,13ab0 <_vfprintf_r+0x614>
   13ed8:	f7fc7c13          	andi	s8,s8,-129
   13edc:	ae0798e3          	bnez	a5,139cc <_vfprintf_r+0x530>
   13ee0:	6e041a63          	bnez	s0,145d4 <_vfprintf_r+0x1138>
   13ee4:	00000413          	li	s0,0
   13ee8:	02012023          	sw	zero,32(sp)
   13eec:	000b0913          	mv	s2,s6
   13ef0:	9a9ff06f          	j	13898 <_vfprintf_r+0x3fc>
   13ef4:	040c6c13          	ori	s8,s8,64
   13ef8:	f60ff06f          	j	13658 <_vfprintf_r+0x1bc>
   13efc:	00060463          	beqz	a2,13f04 <_vfprintf_r+0xa68>
   13f00:	1d40106f          	j	150d4 <_vfprintf_r+0x1c38>
   13f04:	02813783          	ld	a5,40(sp)
   13f08:	00100913          	li	s2,1
   13f0c:	0007b787          	fld	fa5,0(a5)
   13f10:	00878793          	addi	a5,a5,8
   13f14:	01113023          	sd	a7,0(sp)
   13f18:	04f13c27          	fsd	fa5,88(sp)
   13f1c:	05813c83          	ld	s9,88(sp)
   13f20:	02f13423          	sd	a5,40(sp)
   13f24:	f20c8553          	fmv.d.x	fa0,s9
   13f28:	6f4040ef          	jal	ra,1861c <__fpclassifyd>
   13f2c:	00013883          	ld	a7,0(sp)
   13f30:	0f251ce3          	bne	a0,s2,14828 <_vfprintf_r+0x138c>
   13f34:	f20007d3          	fmv.d.x	fa5,zero
   13f38:	f20c8753          	fmv.d.x	fa4,s9
   13f3c:	a2f717d3          	flt.d	a5,fa4,fa5
   13f40:	600792e3          	bnez	a5,14d44 <_vfprintf_r+0x18a8>
   13f44:	08f14603          	lbu	a2,143(sp)
   13f48:	04700793          	li	a5,71
   13f4c:	3da7d8e3          	ble	s10,a5,14b1c <_vfprintf_r+0x1680>
   13f50:	0001b937          	lui	s2,0x1b
   13f54:	ae890913          	addi	s2,s2,-1304 # 1aae8 <zeroes.4137+0x28>
   13f58:	00300793          	li	a5,3
   13f5c:	00f12423          	sw	a5,8(sp)
   13f60:	f7fc7c13          	andi	s8,s8,-129
   13f64:	02f12023          	sw	a5,32(sp)
   13f68:	00000413          	li	s0,0
   13f6c:	04012623          	sw	zero,76(sp)
   13f70:	941ff06f          	j	138b0 <_vfprintf_r+0x414>
   13f74:	008c6c13          	ori	s8,s8,8
   13f78:	ee0ff06f          	j	13658 <_vfprintf_r+0x1bc>
   13f7c:	00060463          	beqz	a2,13f84 <_vfprintf_r+0xae8>
   13f80:	1280106f          	j	150a8 <_vfprintf_r+0x1c0c>
   13f84:	0001b7b7          	lui	a5,0x1b
   13f88:	b1878793          	addi	a5,a5,-1256 # 1ab18 <zeroes.4137+0x58>
   13f8c:	02f13c23          	sd	a5,56(sp)
   13f90:	010c7793          	andi	a5,s8,16
   13f94:	b40792e3          	bnez	a5,13ad8 <_vfprintf_r+0x63c>
   13f98:	040c7793          	andi	a5,s8,64
   13f9c:	02813703          	ld	a4,40(sp)
   13fa0:	1c0784e3          	beqz	a5,14968 <_vfprintf_r+0x14cc>
   13fa4:	00075783          	lhu	a5,0(a4)
   13fa8:	00870713          	addi	a4,a4,8
   13fac:	02e13423          	sd	a4,40(sp)
   13fb0:	b39ff06f          	j	13ae8 <_vfprintf_r+0x64c>
   13fb4:	00060463          	beqz	a2,13fbc <_vfprintf_r+0xb20>
   13fb8:	10c0106f          	j	150c4 <_vfprintf_r+0x1c28>
   13fbc:	010c7793          	andi	a5,s8,16
   13fc0:	1a078ce3          	beqz	a5,14978 <_vfprintf_r+0x14dc>
   13fc4:	02813683          	ld	a3,40(sp)
   13fc8:	01c12703          	lw	a4,28(sp)
   13fcc:	0006b783          	ld	a5,0(a3)
   13fd0:	00868693          	addi	a3,a3,8
   13fd4:	02d13423          	sd	a3,40(sp)
   13fd8:	00e7b023          	sd	a4,0(a5)
   13fdc:	de0ff06f          	j	135bc <_vfprintf_r+0x120>
   13fe0:	00060463          	beqz	a2,13fe8 <_vfprintf_r+0xb4c>
   13fe4:	0d40106f          	j	150b8 <_vfprintf_r+0x1c1c>
   13fe8:	010c6c13          	ori	s8,s8,16
   13fec:	010c7793          	andi	a5,s8,16
   13ff0:	ec0796e3          	bnez	a5,13ebc <_vfprintf_r+0xa20>
   13ff4:	040c7793          	andi	a5,s8,64
   13ff8:	02813703          	ld	a4,40(sp)
   13ffc:	1a0780e3          	beqz	a5,1499c <_vfprintf_r+0x1500>
   14000:	00071783          	lh	a5,0(a4)
   14004:	00870713          	addi	a4,a4,8
   14008:	02e13423          	sd	a4,40(sp)
   1400c:	ec1ff06f          	j	13ecc <_vfprintf_r+0xa30>
   14010:	0001b737          	lui	a4,0x1b
   14014:	b1870713          	addi	a4,a4,-1256 # 1ab18 <zeroes.4137+0x58>
   14018:	00000613          	li	a2,0
   1401c:	02e13c23          	sd	a4,56(sp)
   14020:	07800d13          	li	s10,120
   14024:	ee0ff06f          	j	13704 <_vfprintf_r+0x268>
   14028:	00060463          	beqz	a2,14030 <_vfprintf_r+0xb94>
   1402c:	0c00106f          	j	150ec <_vfprintf_r+0x1c50>
   14030:	f60d0263          	beqz	s10,13794 <_vfprintf_r+0x2f8>
   14034:	00100793          	li	a5,1
   14038:	00f12423          	sw	a5,8(sp)
   1403c:	0da10423          	sb	s10,200(sp)
   14040:	080107a3          	sb	zero,143(sp)
   14044:	00000613          	li	a2,0
   14048:	02f12023          	sw	a5,32(sp)
   1404c:	00000413          	li	s0,0
   14050:	04012623          	sw	zero,76(sp)
   14054:	0c810913          	addi	s2,sp,200
   14058:	afdff06f          	j	13b54 <_vfprintf_r+0x6b8>
   1405c:	02e13423          	sd	a4,40(sp)
   14060:	0001b737          	lui	a4,0x1b
   14064:	b1870713          	addi	a4,a4,-1256 # 1ab18 <zeroes.4137+0x58>
   14068:	00068c13          	mv	s8,a3
   1406c:	02e13c23          	sd	a4,56(sp)
   14070:	07800d13          	li	s10,120
   14074:	3a079a63          	bnez	a5,14428 <_vfprintf_r+0xf8c>
   14078:	00000613          	li	a2,0
   1407c:	00200793          	li	a5,2
   14080:	00100713          	li	a4,1
   14084:	54e78863          	beq	a5,a4,145d4 <_vfprintf_r+0x1138>
   14088:	00200713          	li	a4,2
   1408c:	e6e78a63          	beq	a5,a4,13700 <_vfprintf_r+0x264>
   14090:	00000793          	li	a5,0
   14094:	fc4ff06f          	j	13858 <_vfprintf_r+0x3bc>
   14098:	0c013783          	ld	a5,192(sp)
   1409c:	ba1ff06f          	j	13c3c <_vfprintf_r+0x7a0>
   140a0:	07012683          	lw	a3,112(sp)
   140a4:	00100713          	li	a4,1
   140a8:	00178793          	addi	a5,a5,1
   140ac:	6cd75663          	ble	a3,a4,14778 <_vfprintf_r+0x12dc>
   140b0:	0b812703          	lw	a4,184(sp)
   140b4:	00100693          	li	a3,1
   140b8:	00d8b423          	sd	a3,8(a7)
   140bc:	0017071b          	addiw	a4,a4,1
   140c0:	0128b023          	sd	s2,0(a7)
   140c4:	0cf13023          	sd	a5,192(sp)
   140c8:	0ae12c23          	sw	a4,184(sp)
   140cc:	00700693          	li	a3,7
   140d0:	01088893          	addi	a7,a7,16
   140d4:	6ce6ca63          	blt	a3,a4,147a8 <_vfprintf_r+0x130c>
   140d8:	06813683          	ld	a3,104(sp)
   140dc:	06013603          	ld	a2,96(sp)
   140e0:	0017071b          	addiw	a4,a4,1
   140e4:	00f687b3          	add	a5,a3,a5
   140e8:	00d8b423          	sd	a3,8(a7)
   140ec:	00c8b023          	sd	a2,0(a7)
   140f0:	0cf13023          	sd	a5,192(sp)
   140f4:	0ae12c23          	sw	a4,184(sp)
   140f8:	00700693          	li	a3,7
   140fc:	01088893          	addi	a7,a7,16
   14100:	6ee6c263          	blt	a3,a4,147e4 <_vfprintf_r+0x1348>
   14104:	f20007d3          	fmv.d.x	fa5,zero
   14108:	05813707          	fld	fa4,88(sp)
   1410c:	a2f726d3          	feq.d	a3,fa4,fa5
   14110:	40069c63          	bnez	a3,14528 <_vfprintf_r+0x108c>
   14114:	07012683          	lw	a3,112(sp)
   14118:	00190913          	addi	s2,s2,1
   1411c:	0017071b          	addiw	a4,a4,1
   14120:	fff6869b          	addiw	a3,a3,-1
   14124:	00d787b3          	add	a5,a5,a3
   14128:	0128b023          	sd	s2,0(a7)
   1412c:	00d8b423          	sd	a3,8(a7)
   14130:	0cf13023          	sd	a5,192(sp)
   14134:	0ae12c23          	sw	a4,184(sp)
   14138:	00700693          	li	a3,7
   1413c:	26e6c063          	blt	a3,a4,1439c <_vfprintf_r+0xf00>
   14140:	01088893          	addi	a7,a7,16
   14144:	07412683          	lw	a3,116(sp)
   14148:	0a010613          	addi	a2,sp,160
   1414c:	0017071b          	addiw	a4,a4,1
   14150:	00f687b3          	add	a5,a3,a5
   14154:	00c8b023          	sd	a2,0(a7)
   14158:	00d8b423          	sd	a3,8(a7)
   1415c:	0cf13023          	sd	a5,192(sp)
   14160:	0ae12c23          	sw	a4,184(sp)
   14164:	00700693          	li	a3,7
   14168:	c4e6d2e3          	ble	a4,a3,13dac <_vfprintf_r+0x910>
   1416c:	0b010613          	addi	a2,sp,176
   14170:	000a0593          	mv	a1,s4
   14174:	000b8513          	mv	a0,s7
   14178:	734040ef          	jal	ra,188ac <__sprint_r>
   1417c:	e2051863          	bnez	a0,137ac <_vfprintf_r+0x310>
   14180:	0c013783          	ld	a5,192(sp)
   14184:	000b0893          	mv	a7,s6
   14188:	c29ff06f          	j	13db0 <_vfprintf_r+0x914>
   1418c:	06500713          	li	a4,101
   14190:	f1a758e3          	ble	s10,a4,140a0 <_vfprintf_r+0xc04>
   14194:	f20007d3          	fmv.d.x	fa5,zero
   14198:	05813707          	fld	fa4,88(sp)
   1419c:	a2f72753          	feq.d	a4,fa4,fa5
   141a0:	28070863          	beqz	a4,14430 <_vfprintf_r+0xf94>
   141a4:	0b812703          	lw	a4,184(sp)
   141a8:	0001b6b7          	lui	a3,0x1b
   141ac:	b3868693          	addi	a3,a3,-1224 # 1ab38 <zeroes.4137+0x78>
   141b0:	00d8b023          	sd	a3,0(a7)
   141b4:	00178793          	addi	a5,a5,1
   141b8:	00100693          	li	a3,1
   141bc:	0017071b          	addiw	a4,a4,1
   141c0:	00d8b423          	sd	a3,8(a7)
   141c4:	0cf13023          	sd	a5,192(sp)
   141c8:	0ae12c23          	sw	a4,184(sp)
   141cc:	00700693          	li	a3,7
   141d0:	01088893          	addi	a7,a7,16
   141d4:	7ee6ca63          	blt	a3,a4,149c8 <_vfprintf_r+0x152c>
   141d8:	09812703          	lw	a4,152(sp)
   141dc:	07012683          	lw	a3,112(sp)
   141e0:	00d74663          	blt	a4,a3,141ec <_vfprintf_r+0xd50>
   141e4:	001c7713          	andi	a4,s8,1
   141e8:	bc0704e3          	beqz	a4,13db0 <_vfprintf_r+0x914>
   141ec:	06013703          	ld	a4,96(sp)
   141f0:	06813683          	ld	a3,104(sp)
   141f4:	01088893          	addi	a7,a7,16
   141f8:	fee8b823          	sd	a4,-16(a7)
   141fc:	0b812703          	lw	a4,184(sp)
   14200:	00d787b3          	add	a5,a5,a3
   14204:	fed8bc23          	sd	a3,-8(a7)
   14208:	0017071b          	addiw	a4,a4,1
   1420c:	0cf13023          	sd	a5,192(sp)
   14210:	0ae12c23          	sw	a4,184(sp)
   14214:	00700693          	li	a3,7
   14218:	1ce6c8e3          	blt	a3,a4,14be8 <_vfprintf_r+0x174c>
   1421c:	07012703          	lw	a4,112(sp)
   14220:	fff7041b          	addiw	s0,a4,-1
   14224:	b88056e3          	blez	s0,13db0 <_vfprintf_r+0x914>
   14228:	01000713          	li	a4,16
   1422c:	36875c63          	ble	s0,a4,145a4 <_vfprintf_r+0x1108>
   14230:	01000913          	li	s2,16
   14234:	0b812703          	lw	a4,184(sp)
   14238:	00913823          	sd	s1,16(sp)
   1423c:	00700d13          	li	s10,7
   14240:	00090693          	mv	a3,s2
   14244:	00c0006f          	j	14250 <_vfprintf_r+0xdb4>
   14248:	ff04041b          	addiw	s0,s0,-16
   1424c:	3686d063          	ble	s0,a3,145ac <_vfprintf_r+0x1110>
   14250:	01078793          	addi	a5,a5,16
   14254:	0017071b          	addiw	a4,a4,1
   14258:	0098b023          	sd	s1,0(a7)
   1425c:	0128b423          	sd	s2,8(a7)
   14260:	0cf13023          	sd	a5,192(sp)
   14264:	0ae12c23          	sw	a4,184(sp)
   14268:	01088893          	addi	a7,a7,16
   1426c:	fced5ee3          	ble	a4,s10,14248 <_vfprintf_r+0xdac>
   14270:	0b010613          	addi	a2,sp,176
   14274:	000a0593          	mv	a1,s4
   14278:	000b8513          	mv	a0,s7
   1427c:	00d13023          	sd	a3,0(sp)
   14280:	62c040ef          	jal	ra,188ac <__sprint_r>
   14284:	d2051463          	bnez	a0,137ac <_vfprintf_r+0x310>
   14288:	0c013783          	ld	a5,192(sp)
   1428c:	0b812703          	lw	a4,184(sp)
   14290:	000b0893          	mv	a7,s6
   14294:	00013683          	ld	a3,0(sp)
   14298:	fb1ff06f          	j	14248 <_vfprintf_r+0xdac>
   1429c:	01812703          	lw	a4,24(sp)
   142a0:	00812683          	lw	a3,8(sp)
   142a4:	40d70cbb          	subw	s9,a4,a3
   142a8:	a19056e3          	blez	s9,13cb4 <_vfprintf_r+0x818>
   142ac:	01000713          	li	a4,16
   142b0:	2f975ee3          	ble	s9,a4,14dac <_vfprintf_r+0x1910>
   142b4:	01000813          	li	a6,16
   142b8:	0b812703          	lw	a4,184(sp)
   142bc:	00913823          	sd	s1,16(sp)
   142c0:	00700313          	li	t1,7
   142c4:	00080d93          	mv	s11,a6
   142c8:	00c0006f          	j	142d4 <_vfprintf_r+0xe38>
   142cc:	ff0c8c9b          	addiw	s9,s9,-16
   142d0:	059dde63          	ble	s9,s11,1432c <_vfprintf_r+0xe90>
   142d4:	01078793          	addi	a5,a5,16
   142d8:	0017071b          	addiw	a4,a4,1
   142dc:	0098b023          	sd	s1,0(a7)
   142e0:	0108b423          	sd	a6,8(a7)
   142e4:	0cf13023          	sd	a5,192(sp)
   142e8:	0ae12c23          	sw	a4,184(sp)
   142ec:	01088893          	addi	a7,a7,16
   142f0:	fce35ee3          	ble	a4,t1,142cc <_vfprintf_r+0xe30>
   142f4:	0b010613          	addi	a2,sp,176
   142f8:	000a0593          	mv	a1,s4
   142fc:	000b8513          	mv	a0,s7
   14300:	04613023          	sd	t1,64(sp)
   14304:	01013023          	sd	a6,0(sp)
   14308:	5a4040ef          	jal	ra,188ac <__sprint_r>
   1430c:	ca051063          	bnez	a0,137ac <_vfprintf_r+0x310>
   14310:	ff0c8c9b          	addiw	s9,s9,-16
   14314:	0c013783          	ld	a5,192(sp)
   14318:	0b812703          	lw	a4,184(sp)
   1431c:	000b0893          	mv	a7,s6
   14320:	04013303          	ld	t1,64(sp)
   14324:	00013803          	ld	a6,0(sp)
   14328:	fb9dc6e3          	blt	s11,s9,142d4 <_vfprintf_r+0xe38>
   1432c:	01013603          	ld	a2,16(sp)
   14330:	019787b3          	add	a5,a5,s9
   14334:	0017071b          	addiw	a4,a4,1
   14338:	00c8b023          	sd	a2,0(a7)
   1433c:	0198b423          	sd	s9,8(a7)
   14340:	0cf13023          	sd	a5,192(sp)
   14344:	0ae12c23          	sw	a4,184(sp)
   14348:	00700693          	li	a3,7
   1434c:	01088893          	addi	a7,a7,16
   14350:	96e6d2e3          	ble	a4,a3,13cb4 <_vfprintf_r+0x818>
   14354:	0b010613          	addi	a2,sp,176
   14358:	000a0593          	mv	a1,s4
   1435c:	000b8513          	mv	a0,s7
   14360:	54c040ef          	jal	ra,188ac <__sprint_r>
   14364:	c4051463          	bnez	a0,137ac <_vfprintf_r+0x310>
   14368:	0c013783          	ld	a5,192(sp)
   1436c:	000b0893          	mv	a7,s6
   14370:	945ff06f          	j	13cb4 <_vfprintf_r+0x818>
   14374:	00913823          	sd	s1,16(sp)
   14378:	01013683          	ld	a3,16(sp)
   1437c:	008787b3          	add	a5,a5,s0
   14380:	0017071b          	addiw	a4,a4,1
   14384:	00d8b023          	sd	a3,0(a7)
   14388:	0088b423          	sd	s0,8(a7)
   1438c:	0cf13023          	sd	a5,192(sp)
   14390:	0ae12c23          	sw	a4,184(sp)
   14394:	00700693          	li	a3,7
   14398:	dae6d4e3          	ble	a4,a3,14140 <_vfprintf_r+0xca4>
   1439c:	0b010613          	addi	a2,sp,176
   143a0:	000a0593          	mv	a1,s4
   143a4:	000b8513          	mv	a0,s7
   143a8:	504040ef          	jal	ra,188ac <__sprint_r>
   143ac:	c0051063          	bnez	a0,137ac <_vfprintf_r+0x310>
   143b0:	0c013783          	ld	a5,192(sp)
   143b4:	0b812703          	lw	a4,184(sp)
   143b8:	000b0893          	mv	a7,s6
   143bc:	d89ff06f          	j	14144 <_vfprintf_r+0xca8>
   143c0:	0b010613          	addi	a2,sp,176
   143c4:	000a0593          	mv	a1,s4
   143c8:	000b8513          	mv	a0,s7
   143cc:	4e0040ef          	jal	ra,188ac <__sprint_r>
   143d0:	ac0502e3          	beqz	a0,13e94 <_vfprintf_r+0x9f8>
   143d4:	bd8ff06f          	j	137ac <_vfprintf_r+0x310>
   143d8:	0b010613          	addi	a2,sp,176
   143dc:	000a0593          	mv	a1,s4
   143e0:	000b8513          	mv	a0,s7
   143e4:	4c8040ef          	jal	ra,188ac <__sprint_r>
   143e8:	bc051263          	bnez	a0,137ac <_vfprintf_r+0x310>
   143ec:	0c013783          	ld	a5,192(sp)
   143f0:	000b0893          	mv	a7,s6
   143f4:	87dff06f          	j	13c70 <_vfprintf_r+0x7d4>
   143f8:	0b010613          	addi	a2,sp,176
   143fc:	000a0593          	mv	a1,s4
   14400:	000b8513          	mv	a0,s7
   14404:	4a8040ef          	jal	ra,188ac <__sprint_r>
   14408:	ba051263          	bnez	a0,137ac <_vfprintf_r+0x310>
   1440c:	0c013783          	ld	a5,192(sp)
   14410:	000b0893          	mv	a7,s6
   14414:	895ff06f          	j	13ca8 <_vfprintf_r+0x80c>
   14418:	080107a3          	sb	zero,143(sp)
   1441c:	c4044ce3          	bltz	s0,14074 <_vfprintf_r+0xbd8>
   14420:	f7fc7c13          	andi	s8,s8,-129
   14424:	ac078a63          	beqz	a5,136f8 <_vfprintf_r+0x25c>
   14428:	00000613          	li	a2,0
   1442c:	ad8ff06f          	j	13704 <_vfprintf_r+0x268>
   14430:	09812403          	lw	s0,152(sp)
   14434:	5a805c63          	blez	s0,149ec <_vfprintf_r+0x1550>
   14438:	04c12703          	lw	a4,76(sp)
   1443c:	07012683          	lw	a3,112(sp)
   14440:	00070413          	mv	s0,a4
   14444:	00e6d463          	ble	a4,a3,1444c <_vfprintf_r+0xfb0>
   14448:	00068413          	mv	s0,a3
   1444c:	02805663          	blez	s0,14478 <_vfprintf_r+0xfdc>
   14450:	0b812703          	lw	a4,184(sp)
   14454:	008787b3          	add	a5,a5,s0
   14458:	0128b023          	sd	s2,0(a7)
   1445c:	0017071b          	addiw	a4,a4,1
   14460:	0088b423          	sd	s0,8(a7)
   14464:	0cf13023          	sd	a5,192(sp)
   14468:	0ae12c23          	sw	a4,184(sp)
   1446c:	00700693          	li	a3,7
   14470:	01088893          	addi	a7,a7,16
   14474:	6ae6ca63          	blt	a3,a4,14b28 <_vfprintf_r+0x168c>
   14478:	020448e3          	bltz	s0,14ca8 <_vfprintf_r+0x180c>
   1447c:	04c12703          	lw	a4,76(sp)
   14480:	4087043b          	subw	s0,a4,s0
   14484:	1a805c63          	blez	s0,1463c <_vfprintf_r+0x11a0>
   14488:	01000713          	li	a4,16
   1448c:	16875263          	ble	s0,a4,145f0 <_vfprintf_r+0x1154>
   14490:	01000d13          	li	s10,16
   14494:	0b812703          	lw	a4,184(sp)
   14498:	00913823          	sd	s1,16(sp)
   1449c:	00700693          	li	a3,7
   144a0:	000d0813          	mv	a6,s10
   144a4:	00c0006f          	j	144b0 <_vfprintf_r+0x1014>
   144a8:	ff04041b          	addiw	s0,s0,-16
   144ac:	14885663          	ble	s0,a6,145f8 <_vfprintf_r+0x115c>
   144b0:	01078793          	addi	a5,a5,16
   144b4:	0017071b          	addiw	a4,a4,1
   144b8:	0098b023          	sd	s1,0(a7)
   144bc:	01a8b423          	sd	s10,8(a7)
   144c0:	0cf13023          	sd	a5,192(sp)
   144c4:	0ae12c23          	sw	a4,184(sp)
   144c8:	01088893          	addi	a7,a7,16
   144cc:	fce6dee3          	ble	a4,a3,144a8 <_vfprintf_r+0x100c>
   144d0:	0b010613          	addi	a2,sp,176
   144d4:	000a0593          	mv	a1,s4
   144d8:	000b8513          	mv	a0,s7
   144dc:	03013023          	sd	a6,32(sp)
   144e0:	00d13023          	sd	a3,0(sp)
   144e4:	3c8040ef          	jal	ra,188ac <__sprint_r>
   144e8:	ac051263          	bnez	a0,137ac <_vfprintf_r+0x310>
   144ec:	0c013783          	ld	a5,192(sp)
   144f0:	0b812703          	lw	a4,184(sp)
   144f4:	000b0893          	mv	a7,s6
   144f8:	02013803          	ld	a6,32(sp)
   144fc:	00013683          	ld	a3,0(sp)
   14500:	fa9ff06f          	j	144a8 <_vfprintf_r+0x100c>
   14504:	0b010613          	addi	a2,sp,176
   14508:	000a0593          	mv	a1,s4
   1450c:	000b8513          	mv	a0,s7
   14510:	39c040ef          	jal	ra,188ac <__sprint_r>
   14514:	a8051c63          	bnez	a0,137ac <_vfprintf_r+0x310>
   14518:	08f14603          	lbu	a2,143(sp)
   1451c:	0c013783          	ld	a5,192(sp)
   14520:	000b0893          	mv	a7,s6
   14524:	f18ff06f          	j	13c3c <_vfprintf_r+0x7a0>
   14528:	07012683          	lw	a3,112(sp)
   1452c:	fff6841b          	addiw	s0,a3,-1
   14530:	c0805ae3          	blez	s0,14144 <_vfprintf_r+0xca8>
   14534:	01000693          	li	a3,16
   14538:	e286dee3          	ble	s0,a3,14374 <_vfprintf_r+0xed8>
   1453c:	01000913          	li	s2,16
   14540:	00913823          	sd	s1,16(sp)
   14544:	00700d13          	li	s10,7
   14548:	00090693          	mv	a3,s2
   1454c:	00c0006f          	j	14558 <_vfprintf_r+0x10bc>
   14550:	ff04041b          	addiw	s0,s0,-16
   14554:	e286d2e3          	ble	s0,a3,14378 <_vfprintf_r+0xedc>
   14558:	01078793          	addi	a5,a5,16
   1455c:	0017071b          	addiw	a4,a4,1
   14560:	0098b023          	sd	s1,0(a7)
   14564:	0128b423          	sd	s2,8(a7)
   14568:	0cf13023          	sd	a5,192(sp)
   1456c:	0ae12c23          	sw	a4,184(sp)
   14570:	01088893          	addi	a7,a7,16
   14574:	fced5ee3          	ble	a4,s10,14550 <_vfprintf_r+0x10b4>
   14578:	0b010613          	addi	a2,sp,176
   1457c:	000a0593          	mv	a1,s4
   14580:	000b8513          	mv	a0,s7
   14584:	00d13023          	sd	a3,0(sp)
   14588:	324040ef          	jal	ra,188ac <__sprint_r>
   1458c:	a2051063          	bnez	a0,137ac <_vfprintf_r+0x310>
   14590:	0c013783          	ld	a5,192(sp)
   14594:	0b812703          	lw	a4,184(sp)
   14598:	000b0893          	mv	a7,s6
   1459c:	00013683          	ld	a3,0(sp)
   145a0:	fb1ff06f          	j	14550 <_vfprintf_r+0x10b4>
   145a4:	0b812703          	lw	a4,184(sp)
   145a8:	00913823          	sd	s1,16(sp)
   145ac:	01013683          	ld	a3,16(sp)
   145b0:	008787b3          	add	a5,a5,s0
   145b4:	0088b423          	sd	s0,8(a7)
   145b8:	00d8b023          	sd	a3,0(a7)
   145bc:	0017071b          	addiw	a4,a4,1
   145c0:	0cf13023          	sd	a5,192(sp)
   145c4:	0ae12c23          	sw	a4,184(sp)
   145c8:	00700693          	li	a3,7
   145cc:	fee6d063          	ble	a4,a3,13dac <_vfprintf_r+0x910>
   145d0:	b9dff06f          	j	1416c <_vfprintf_r+0xcd0>
   145d4:	00000793          	li	a5,0
   145d8:	0307879b          	addiw	a5,a5,48
   145dc:	0ef107a3          	sb	a5,239(sp)
   145e0:	07813783          	ld	a5,120(sp)
   145e4:	0ef10913          	addi	s2,sp,239
   145e8:	02f12023          	sw	a5,32(sp)
   145ec:	aacff06f          	j	13898 <_vfprintf_r+0x3fc>
   145f0:	0b812703          	lw	a4,184(sp)
   145f4:	00913823          	sd	s1,16(sp)
   145f8:	01013683          	ld	a3,16(sp)
   145fc:	008787b3          	add	a5,a5,s0
   14600:	0017071b          	addiw	a4,a4,1
   14604:	00d8b023          	sd	a3,0(a7)
   14608:	0088b423          	sd	s0,8(a7)
   1460c:	0cf13023          	sd	a5,192(sp)
   14610:	0ae12c23          	sw	a4,184(sp)
   14614:	00700693          	li	a3,7
   14618:	01088893          	addi	a7,a7,16
   1461c:	02e6d063          	ble	a4,a3,1463c <_vfprintf_r+0x11a0>
   14620:	0b010613          	addi	a2,sp,176
   14624:	000a0593          	mv	a1,s4
   14628:	000b8513          	mv	a0,s7
   1462c:	280040ef          	jal	ra,188ac <__sprint_r>
   14630:	96051e63          	bnez	a0,137ac <_vfprintf_r+0x310>
   14634:	0c013783          	ld	a5,192(sp)
   14638:	000b0893          	mv	a7,s6
   1463c:	04c12d03          	lw	s10,76(sp)
   14640:	09812703          	lw	a4,152(sp)
   14644:	07012683          	lw	a3,112(sp)
   14648:	01a90d33          	add	s10,s2,s10
   1464c:	0cd74a63          	blt	a4,a3,14720 <_vfprintf_r+0x1284>
   14650:	001c7693          	andi	a3,s8,1
   14654:	0c069663          	bnez	a3,14720 <_vfprintf_r+0x1284>
   14658:	07012683          	lw	a3,112(sp)
   1465c:	00d90433          	add	s0,s2,a3
   14660:	41a40433          	sub	s0,s0,s10
   14664:	40e6873b          	subw	a4,a3,a4
   14668:	0004041b          	sext.w	s0,s0
   1466c:	00875463          	ble	s0,a4,14674 <_vfprintf_r+0x11d8>
   14670:	00070413          	mv	s0,a4
   14674:	02805663          	blez	s0,146a0 <_vfprintf_r+0x1204>
   14678:	0b812683          	lw	a3,184(sp)
   1467c:	008787b3          	add	a5,a5,s0
   14680:	01a8b023          	sd	s10,0(a7)
   14684:	0016869b          	addiw	a3,a3,1
   14688:	0088b423          	sd	s0,8(a7)
   1468c:	0cf13023          	sd	a5,192(sp)
   14690:	0ad12c23          	sw	a3,184(sp)
   14694:	00700613          	li	a2,7
   14698:	01088893          	addi	a7,a7,16
   1469c:	4cd64263          	blt	a2,a3,14b60 <_vfprintf_r+0x16c4>
   146a0:	60044863          	bltz	s0,14cb0 <_vfprintf_r+0x1814>
   146a4:	4087043b          	subw	s0,a4,s0
   146a8:	f0805463          	blez	s0,13db0 <_vfprintf_r+0x914>
   146ac:	01000713          	li	a4,16
   146b0:	ee875ae3          	ble	s0,a4,145a4 <_vfprintf_r+0x1108>
   146b4:	01000913          	li	s2,16
   146b8:	0b812703          	lw	a4,184(sp)
   146bc:	00913823          	sd	s1,16(sp)
   146c0:	00700d13          	li	s10,7
   146c4:	00090693          	mv	a3,s2
   146c8:	00c0006f          	j	146d4 <_vfprintf_r+0x1238>
   146cc:	ff04041b          	addiw	s0,s0,-16
   146d0:	ec86dee3          	ble	s0,a3,145ac <_vfprintf_r+0x1110>
   146d4:	01078793          	addi	a5,a5,16
   146d8:	0017071b          	addiw	a4,a4,1
   146dc:	0098b023          	sd	s1,0(a7)
   146e0:	0128b423          	sd	s2,8(a7)
   146e4:	0cf13023          	sd	a5,192(sp)
   146e8:	0ae12c23          	sw	a4,184(sp)
   146ec:	01088893          	addi	a7,a7,16
   146f0:	fced5ee3          	ble	a4,s10,146cc <_vfprintf_r+0x1230>
   146f4:	0b010613          	addi	a2,sp,176
   146f8:	000a0593          	mv	a1,s4
   146fc:	000b8513          	mv	a0,s7
   14700:	00d13023          	sd	a3,0(sp)
   14704:	1a8040ef          	jal	ra,188ac <__sprint_r>
   14708:	8a051263          	bnez	a0,137ac <_vfprintf_r+0x310>
   1470c:	0c013783          	ld	a5,192(sp)
   14710:	0b812703          	lw	a4,184(sp)
   14714:	000b0893          	mv	a7,s6
   14718:	00013683          	ld	a3,0(sp)
   1471c:	fb1ff06f          	j	146cc <_vfprintf_r+0x1230>
   14720:	06013683          	ld	a3,96(sp)
   14724:	06813603          	ld	a2,104(sp)
   14728:	01088893          	addi	a7,a7,16
   1472c:	fed8b823          	sd	a3,-16(a7)
   14730:	0b812683          	lw	a3,184(sp)
   14734:	00c787b3          	add	a5,a5,a2
   14738:	fec8bc23          	sd	a2,-8(a7)
   1473c:	0016869b          	addiw	a3,a3,1
   14740:	0cf13023          	sd	a5,192(sp)
   14744:	0ad12c23          	sw	a3,184(sp)
   14748:	00700613          	li	a2,7
   1474c:	f0d656e3          	ble	a3,a2,14658 <_vfprintf_r+0x11bc>
   14750:	0b010613          	addi	a2,sp,176
   14754:	000a0593          	mv	a1,s4
   14758:	000b8513          	mv	a0,s7
   1475c:	150040ef          	jal	ra,188ac <__sprint_r>
   14760:	00050463          	beqz	a0,14768 <_vfprintf_r+0x12cc>
   14764:	848ff06f          	j	137ac <_vfprintf_r+0x310>
   14768:	09812703          	lw	a4,152(sp)
   1476c:	0c013783          	ld	a5,192(sp)
   14770:	000b0893          	mv	a7,s6
   14774:	ee5ff06f          	j	14658 <_vfprintf_r+0x11bc>
   14778:	00ec7733          	and	a4,s8,a4
   1477c:	92071ae3          	bnez	a4,140b0 <_vfprintf_r+0xc14>
   14780:	0b812703          	lw	a4,184(sp)
   14784:	0128b023          	sd	s2,0(a7)
   14788:	00100693          	li	a3,1
   1478c:	0017071b          	addiw	a4,a4,1
   14790:	99dff06f          	j	1412c <_vfprintf_r+0xc90>
   14794:	02813783          	ld	a5,40(sp)
   14798:	00878713          	addi	a4,a5,8
   1479c:	0007e783          	lwu	a5,0(a5)
   147a0:	a0045e63          	bgez	s0,139bc <_vfprintf_r+0x520>
   147a4:	b04ff06f          	j	13aa8 <_vfprintf_r+0x60c>
   147a8:	0b010613          	addi	a2,sp,176
   147ac:	000a0593          	mv	a1,s4
   147b0:	000b8513          	mv	a0,s7
   147b4:	0f8040ef          	jal	ra,188ac <__sprint_r>
   147b8:	00050463          	beqz	a0,147c0 <_vfprintf_r+0x1324>
   147bc:	ff1fe06f          	j	137ac <_vfprintf_r+0x310>
   147c0:	0c013783          	ld	a5,192(sp)
   147c4:	0b812703          	lw	a4,184(sp)
   147c8:	000b0893          	mv	a7,s6
   147cc:	90dff06f          	j	140d8 <_vfprintf_r+0xc3c>
   147d0:	02813783          	ld	a5,40(sp)
   147d4:	00878713          	addi	a4,a5,8
   147d8:	0007e783          	lwu	a5,0(a5)
   147dc:	86045063          	bgez	s0,1383c <_vfprintf_r+0x3a0>
   147e0:	a84ff06f          	j	13a64 <_vfprintf_r+0x5c8>
   147e4:	0b010613          	addi	a2,sp,176
   147e8:	000a0593          	mv	a1,s4
   147ec:	000b8513          	mv	a0,s7
   147f0:	0bc040ef          	jal	ra,188ac <__sprint_r>
   147f4:	00050463          	beqz	a0,147fc <_vfprintf_r+0x1360>
   147f8:	fb5fe06f          	j	137ac <_vfprintf_r+0x310>
   147fc:	0c013783          	ld	a5,192(sp)
   14800:	0b812703          	lw	a4,184(sp)
   14804:	000b0893          	mv	a7,s6
   14808:	8fdff06f          	j	14104 <_vfprintf_r+0xc68>
   1480c:	02d00713          	li	a4,45
   14810:	08e107a3          	sb	a4,143(sp)
   14814:	40f007b3          	neg	a5,a5
   14818:	4a044063          	bltz	s0,14cb8 <_vfprintf_r+0x181c>
   1481c:	f7fc7c13          	andi	s8,s8,-129
   14820:	02d00613          	li	a2,45
   14824:	9a8ff06f          	j	139cc <_vfprintf_r+0x530>
   14828:	05813507          	fld	fa0,88(sp)
   1482c:	01113023          	sd	a7,0(sp)
   14830:	5ed030ef          	jal	ra,1861c <__fpclassifyd>
   14834:	00013883          	ld	a7,0(sp)
   14838:	2a050463          	beqz	a0,14ae0 <_vfprintf_r+0x1644>
   1483c:	fff00793          	li	a5,-1
   14840:	fdfd7d93          	andi	s11,s10,-33
   14844:	62f40c63          	beq	s0,a5,14e7c <_vfprintf_r+0x19e0>
   14848:	04700793          	li	a5,71
   1484c:	62fd8263          	beq	s11,a5,14e70 <_vfprintf_r+0x19d4>
   14850:	05813703          	ld	a4,88(sp)
   14854:	100c6693          	ori	a3,s8,256
   14858:	00d12023          	sw	a3,0(sp)
   1485c:	42075793          	srai	a5,a4,0x20
   14860:	f2070453          	fmv.d.x	fs0,a4
   14864:	00000c93          	li	s9,0
   14868:	6607c663          	bltz	a5,14ed4 <_vfprintf_r+0x1a38>
   1486c:	06600793          	li	a5,102
   14870:	60fd0a63          	beq	s10,a5,14e84 <_vfprintf_r+0x19e8>
   14874:	04600793          	li	a5,70
   14878:	72fd0863          	beq	s10,a5,14fa8 <_vfprintf_r+0x1b0c>
   1487c:	fbbd859b          	addiw	a1,s11,-69
   14880:	0015b593          	seqz	a1,a1
   14884:	228405d3          	fmv.d	fa1,fs0
   14888:	00b405bb          	addw	a1,s0,a1
   1488c:	09c10793          	addi	a5,sp,156
   14890:	00058693          	mv	a3,a1
   14894:	0a810813          	addi	a6,sp,168
   14898:	09810713          	addi	a4,sp,152
   1489c:	00200613          	li	a2,2
   148a0:	000b8513          	mv	a0,s7
   148a4:	01113823          	sd	a7,16(sp)
   148a8:	00b13423          	sd	a1,8(sp)
   148ac:	73d000ef          	jal	ra,157e8 <_dtoa_r>
   148b0:	06700793          	li	a5,103
   148b4:	00050913          	mv	s2,a0
   148b8:	00813583          	ld	a1,8(sp)
   148bc:	01013883          	ld	a7,16(sp)
   148c0:	46fd0863          	beq	s10,a5,14d30 <_vfprintf_r+0x1894>
   148c4:	04700793          	li	a5,71
   148c8:	00b50733          	add	a4,a0,a1
   148cc:	48fd0a63          	beq	s10,a5,14d60 <_vfprintf_r+0x18c4>
   148d0:	f20007d3          	fmv.d.x	fa5,zero
   148d4:	00070793          	mv	a5,a4
   148d8:	a2f426d3          	feq.d	a3,fs0,fa5
   148dc:	02069263          	bnez	a3,14900 <_vfprintf_r+0x1464>
   148e0:	0a813783          	ld	a5,168(sp)
   148e4:	00e7fe63          	bleu	a4,a5,14900 <_vfprintf_r+0x1464>
   148e8:	03000613          	li	a2,48
   148ec:	00178693          	addi	a3,a5,1
   148f0:	0ad13423          	sd	a3,168(sp)
   148f4:	00c78023          	sb	a2,0(a5)
   148f8:	0a813783          	ld	a5,168(sp)
   148fc:	fee7e8e3          	bltu	a5,a4,148ec <_vfprintf_r+0x1450>
   14900:	412787b3          	sub	a5,a5,s2
   14904:	06f12823          	sw	a5,112(sp)
   14908:	04700793          	li	a5,71
   1490c:	46fd8663          	beq	s11,a5,14d78 <_vfprintf_r+0x18dc>
   14910:	06500793          	li	a5,101
   14914:	7ba7dc63          	ble	s10,a5,150cc <_vfprintf_r+0x1c30>
   14918:	06600793          	li	a5,102
   1491c:	60fd0263          	beq	s10,a5,14f20 <_vfprintf_r+0x1a84>
   14920:	09812783          	lw	a5,152(sp)
   14924:	04f12623          	sw	a5,76(sp)
   14928:	04c12703          	lw	a4,76(sp)
   1492c:	07012683          	lw	a3,112(sp)
   14930:	00070793          	mv	a5,a4
   14934:	5ad74663          	blt	a4,a3,14ee0 <_vfprintf_r+0x1a44>
   14938:	001c7c13          	andi	s8,s8,1
   1493c:	5c0c1463          	bnez	s8,14f04 <_vfprintf_r+0x1a68>
   14940:	76074863          	bltz	a4,150b0 <_vfprintf_r+0x1c14>
   14944:	04c12703          	lw	a4,76(sp)
   14948:	06700d13          	li	s10,103
   1494c:	02e12023          	sw	a4,32(sp)
   14950:	440c9063          	bnez	s9,14d90 <_vfprintf_r+0x18f4>
   14954:	08f14603          	lbu	a2,143(sp)
   14958:	00f12423          	sw	a5,8(sp)
   1495c:	00012c03          	lw	s8,0(sp)
   14960:	00000413          	li	s0,0
   14964:	f4dfe06f          	j	138b0 <_vfprintf_r+0x414>
   14968:	00076783          	lwu	a5,0(a4)
   1496c:	00870713          	addi	a4,a4,8
   14970:	02e13423          	sd	a4,40(sp)
   14974:	974ff06f          	j	13ae8 <_vfprintf_r+0x64c>
   14978:	02813703          	ld	a4,40(sp)
   1497c:	040c7c13          	andi	s8,s8,64
   14980:	00073783          	ld	a5,0(a4)
   14984:	00870713          	addi	a4,a4,8
   14988:	02e13423          	sd	a4,40(sp)
   1498c:	180c0263          	beqz	s8,14b10 <_vfprintf_r+0x1674>
   14990:	01c15703          	lhu	a4,28(sp)
   14994:	00e79023          	sh	a4,0(a5)
   14998:	c25fe06f          	j	135bc <_vfprintf_r+0x120>
   1499c:	00072783          	lw	a5,0(a4)
   149a0:	00870713          	addi	a4,a4,8
   149a4:	02e13423          	sd	a4,40(sp)
   149a8:	d24ff06f          	j	13ecc <_vfprintf_r+0xa30>
   149ac:	080107a3          	sb	zero,143(sp)
   149b0:	ec044463          	bltz	s0,14078 <_vfprintf_r+0xbdc>
   149b4:	f7fc7c13          	andi	s8,s8,-129
   149b8:	d41fe06f          	j	136f8 <_vfprintf_r+0x25c>
   149bc:	0b812703          	lw	a4,184(sp)
   149c0:	00913823          	sd	s1,16(sp)
   149c4:	b74ff06f          	j	13d38 <_vfprintf_r+0x89c>
   149c8:	0b010613          	addi	a2,sp,176
   149cc:	000a0593          	mv	a1,s4
   149d0:	000b8513          	mv	a0,s7
   149d4:	6d9030ef          	jal	ra,188ac <__sprint_r>
   149d8:	00050463          	beqz	a0,149e0 <_vfprintf_r+0x1544>
   149dc:	dd1fe06f          	j	137ac <_vfprintf_r+0x310>
   149e0:	0c013783          	ld	a5,192(sp)
   149e4:	000b0893          	mv	a7,s6
   149e8:	ff0ff06f          	j	141d8 <_vfprintf_r+0xd3c>
   149ec:	0b812703          	lw	a4,184(sp)
   149f0:	0001b6b7          	lui	a3,0x1b
   149f4:	b3868693          	addi	a3,a3,-1224 # 1ab38 <zeroes.4137+0x78>
   149f8:	00d8b023          	sd	a3,0(a7)
   149fc:	00178793          	addi	a5,a5,1
   14a00:	00100693          	li	a3,1
   14a04:	0017071b          	addiw	a4,a4,1
   14a08:	00d8b423          	sd	a3,8(a7)
   14a0c:	0cf13023          	sd	a5,192(sp)
   14a10:	0ae12c23          	sw	a4,184(sp)
   14a14:	00700693          	li	a3,7
   14a18:	01088893          	addi	a7,a7,16
   14a1c:	16e6ca63          	blt	a3,a4,14b90 <_vfprintf_r+0x16f4>
   14a20:	12040663          	beqz	s0,14b4c <_vfprintf_r+0x16b0>
   14a24:	06013703          	ld	a4,96(sp)
   14a28:	06813683          	ld	a3,104(sp)
   14a2c:	01088893          	addi	a7,a7,16
   14a30:	fee8b823          	sd	a4,-16(a7)
   14a34:	0b812703          	lw	a4,184(sp)
   14a38:	00f687b3          	add	a5,a3,a5
   14a3c:	fed8bc23          	sd	a3,-8(a7)
   14a40:	0017071b          	addiw	a4,a4,1
   14a44:	0cf13023          	sd	a5,192(sp)
   14a48:	0ae12c23          	sw	a4,184(sp)
   14a4c:	00700693          	li	a3,7
   14a50:	3ee6ca63          	blt	a3,a4,14e44 <_vfprintf_r+0x19a8>
   14a54:	4080043b          	negw	s0,s0
   14a58:	20805263          	blez	s0,14c5c <_vfprintf_r+0x17c0>
   14a5c:	01000693          	li	a3,16
   14a60:	1a86d663          	ble	s0,a3,14c0c <_vfprintf_r+0x1770>
   14a64:	01000d13          	li	s10,16
   14a68:	00913823          	sd	s1,16(sp)
   14a6c:	00700813          	li	a6,7
   14a70:	000d0693          	mv	a3,s10
   14a74:	00c0006f          	j	14a80 <_vfprintf_r+0x15e4>
   14a78:	ff04041b          	addiw	s0,s0,-16
   14a7c:	1886da63          	ble	s0,a3,14c10 <_vfprintf_r+0x1774>
   14a80:	01078793          	addi	a5,a5,16
   14a84:	0017071b          	addiw	a4,a4,1
   14a88:	0098b023          	sd	s1,0(a7)
   14a8c:	01a8b423          	sd	s10,8(a7)
   14a90:	0cf13023          	sd	a5,192(sp)
   14a94:	0ae12c23          	sw	a4,184(sp)
   14a98:	01088893          	addi	a7,a7,16
   14a9c:	fce85ee3          	ble	a4,a6,14a78 <_vfprintf_r+0x15dc>
   14aa0:	0b010613          	addi	a2,sp,176
   14aa4:	000a0593          	mv	a1,s4
   14aa8:	000b8513          	mv	a0,s7
   14aac:	02d13023          	sd	a3,32(sp)
   14ab0:	01013023          	sd	a6,0(sp)
   14ab4:	5f9030ef          	jal	ra,188ac <__sprint_r>
   14ab8:	00050463          	beqz	a0,14ac0 <_vfprintf_r+0x1624>
   14abc:	cf1fe06f          	j	137ac <_vfprintf_r+0x310>
   14ac0:	0c013783          	ld	a5,192(sp)
   14ac4:	0b812703          	lw	a4,184(sp)
   14ac8:	000b0893          	mv	a7,s6
   14acc:	02013683          	ld	a3,32(sp)
   14ad0:	00013803          	ld	a6,0(sp)
   14ad4:	fa5ff06f          	j	14a78 <_vfprintf_r+0x15dc>
   14ad8:	fff00513          	li	a0,-1
   14adc:	ce5fe06f          	j	137c0 <_vfprintf_r+0x324>
   14ae0:	04700793          	li	a5,71
   14ae4:	27a7c863          	blt	a5,s10,14d54 <_vfprintf_r+0x18b8>
   14ae8:	0001b937          	lui	s2,0x1b
   14aec:	af090913          	addi	s2,s2,-1296 # 1aaf0 <zeroes.4137+0x30>
   14af0:	00300793          	li	a5,3
   14af4:	00f12423          	sw	a5,8(sp)
   14af8:	f7fc7c13          	andi	s8,s8,-129
   14afc:	08f14603          	lbu	a2,143(sp)
   14b00:	02f12023          	sw	a5,32(sp)
   14b04:	00000413          	li	s0,0
   14b08:	04012623          	sw	zero,76(sp)
   14b0c:	da5fe06f          	j	138b0 <_vfprintf_r+0x414>
   14b10:	01c12703          	lw	a4,28(sp)
   14b14:	00e7a023          	sw	a4,0(a5)
   14b18:	aa5fe06f          	j	135bc <_vfprintf_r+0x120>
   14b1c:	0001b937          	lui	s2,0x1b
   14b20:	ae090913          	addi	s2,s2,-1312 # 1aae0 <zeroes.4137+0x20>
   14b24:	c34ff06f          	j	13f58 <_vfprintf_r+0xabc>
   14b28:	0b010613          	addi	a2,sp,176
   14b2c:	000a0593          	mv	a1,s4
   14b30:	000b8513          	mv	a0,s7
   14b34:	579030ef          	jal	ra,188ac <__sprint_r>
   14b38:	00050463          	beqz	a0,14b40 <_vfprintf_r+0x16a4>
   14b3c:	c71fe06f          	j	137ac <_vfprintf_r+0x310>
   14b40:	0c013783          	ld	a5,192(sp)
   14b44:	000b0893          	mv	a7,s6
   14b48:	931ff06f          	j	14478 <_vfprintf_r+0xfdc>
   14b4c:	07012703          	lw	a4,112(sp)
   14b50:	ec071ae3          	bnez	a4,14a24 <_vfprintf_r+0x1588>
   14b54:	001c7713          	andi	a4,s8,1
   14b58:	a4070c63          	beqz	a4,13db0 <_vfprintf_r+0x914>
   14b5c:	ec9ff06f          	j	14a24 <_vfprintf_r+0x1588>
   14b60:	0b010613          	addi	a2,sp,176
   14b64:	000a0593          	mv	a1,s4
   14b68:	000b8513          	mv	a0,s7
   14b6c:	541030ef          	jal	ra,188ac <__sprint_r>
   14b70:	00050463          	beqz	a0,14b78 <_vfprintf_r+0x16dc>
   14b74:	c39fe06f          	j	137ac <_vfprintf_r+0x310>
   14b78:	09812703          	lw	a4,152(sp)
   14b7c:	07012683          	lw	a3,112(sp)
   14b80:	0c013783          	ld	a5,192(sp)
   14b84:	000b0893          	mv	a7,s6
   14b88:	40e6873b          	subw	a4,a3,a4
   14b8c:	b15ff06f          	j	146a0 <_vfprintf_r+0x1204>
   14b90:	0b010613          	addi	a2,sp,176
   14b94:	000a0593          	mv	a1,s4
   14b98:	000b8513          	mv	a0,s7
   14b9c:	511030ef          	jal	ra,188ac <__sprint_r>
   14ba0:	00050463          	beqz	a0,14ba8 <_vfprintf_r+0x170c>
   14ba4:	c09fe06f          	j	137ac <_vfprintf_r+0x310>
   14ba8:	09812403          	lw	s0,152(sp)
   14bac:	0c013783          	ld	a5,192(sp)
   14bb0:	000b0893          	mv	a7,s6
   14bb4:	e60418e3          	bnez	s0,14a24 <_vfprintf_r+0x1588>
   14bb8:	f95ff06f          	j	14b4c <_vfprintf_r+0x16b0>
   14bbc:	001c7793          	andi	a5,s8,1
   14bc0:	00078e63          	beqz	a5,14bdc <_vfprintf_r+0x1740>
   14bc4:	03000793          	li	a5,48
   14bc8:	0ef107a3          	sb	a5,239(sp)
   14bcc:	07813783          	ld	a5,120(sp)
   14bd0:	0ef10913          	addi	s2,sp,239
   14bd4:	02f12023          	sw	a5,32(sp)
   14bd8:	cc1fe06f          	j	13898 <_vfprintf_r+0x3fc>
   14bdc:	02012023          	sw	zero,32(sp)
   14be0:	000b0913          	mv	s2,s6
   14be4:	cb5fe06f          	j	13898 <_vfprintf_r+0x3fc>
   14be8:	0b010613          	addi	a2,sp,176
   14bec:	000a0593          	mv	a1,s4
   14bf0:	000b8513          	mv	a0,s7
   14bf4:	4b9030ef          	jal	ra,188ac <__sprint_r>
   14bf8:	00050463          	beqz	a0,14c00 <_vfprintf_r+0x1764>
   14bfc:	bb1fe06f          	j	137ac <_vfprintf_r+0x310>
   14c00:	0c013783          	ld	a5,192(sp)
   14c04:	000b0893          	mv	a7,s6
   14c08:	e14ff06f          	j	1421c <_vfprintf_r+0xd80>
   14c0c:	00913823          	sd	s1,16(sp)
   14c10:	01013683          	ld	a3,16(sp)
   14c14:	008787b3          	add	a5,a5,s0
   14c18:	0017071b          	addiw	a4,a4,1
   14c1c:	00d8b023          	sd	a3,0(a7)
   14c20:	0088b423          	sd	s0,8(a7)
   14c24:	0cf13023          	sd	a5,192(sp)
   14c28:	0ae12c23          	sw	a4,184(sp)
   14c2c:	00700693          	li	a3,7
   14c30:	01088893          	addi	a7,a7,16
   14c34:	02e6d463          	ble	a4,a3,14c5c <_vfprintf_r+0x17c0>
   14c38:	0b010613          	addi	a2,sp,176
   14c3c:	000a0593          	mv	a1,s4
   14c40:	000b8513          	mv	a0,s7
   14c44:	469030ef          	jal	ra,188ac <__sprint_r>
   14c48:	00050463          	beqz	a0,14c50 <_vfprintf_r+0x17b4>
   14c4c:	b61fe06f          	j	137ac <_vfprintf_r+0x310>
   14c50:	0c013783          	ld	a5,192(sp)
   14c54:	0b812703          	lw	a4,184(sp)
   14c58:	000b0893          	mv	a7,s6
   14c5c:	07012683          	lw	a3,112(sp)
   14c60:	0017071b          	addiw	a4,a4,1
   14c64:	0128b023          	sd	s2,0(a7)
   14c68:	00f687b3          	add	a5,a3,a5
   14c6c:	cecff06f          	j	14158 <_vfprintf_r+0xcbc>
   14c70:	00090513          	mv	a0,s2
   14c74:	d68fe0ef          	jal	ra,131dc <strlen>
   14c78:	0005079b          	sext.w	a5,a0
   14c7c:	02f12023          	sw	a5,32(sp)
   14c80:	00078d93          	mv	s11,a5
   14c84:	00013883          	ld	a7,0(sp)
   14c88:	0007c463          	bltz	a5,14c90 <_vfprintf_r+0x17f4>
   14c8c:	cf5fe06f          	j	13980 <_vfprintf_r+0x4e4>
   14c90:	00000d93          	li	s11,0
   14c94:	cedfe06f          	j	13980 <_vfprintf_r+0x4e4>
   14c98:	0c013783          	ld	a5,192(sp)
   14c9c:	0b812703          	lw	a4,184(sp)
   14ca0:	05513823          	sd	s5,80(sp)
   14ca4:	f6dfe06f          	j	13c10 <_vfprintf_r+0x774>
   14ca8:	00000413          	li	s0,0
   14cac:	fd0ff06f          	j	1447c <_vfprintf_r+0xfe0>
   14cb0:	00000413          	li	s0,0
   14cb4:	9f1ff06f          	j	146a4 <_vfprintf_r+0x1208>
   14cb8:	02d00613          	li	a2,45
   14cbc:	00100713          	li	a4,1
   14cc0:	00100693          	li	a3,1
   14cc4:	00d71463          	bne	a4,a3,14ccc <_vfprintf_r+0x1830>
   14cc8:	d05fe06f          	j	139cc <_vfprintf_r+0x530>
   14ccc:	00200693          	li	a3,2
   14cd0:	00d71463          	bne	a4,a3,14cd8 <_vfprintf_r+0x183c>
   14cd4:	a31fe06f          	j	13704 <_vfprintf_r+0x268>
   14cd8:	b81fe06f          	j	13858 <_vfprintf_r+0x3bc>
   14cdc:	00600713          	li	a4,6
   14ce0:	00877463          	bleu	s0,a4,14ce8 <_vfprintf_r+0x184c>
   14ce4:	00070413          	mv	s0,a4
   14ce8:	02812023          	sw	s0,32(sp)
   14cec:	00040d93          	mv	s11,s0
   14cf0:	32044a63          	bltz	s0,15024 <_vfprintf_r+0x1b88>
   14cf4:	0001b937          	lui	s2,0x1b
   14cf8:	01b12423          	sw	s11,8(sp)
   14cfc:	03913423          	sd	s9,40(sp)
   14d00:	00000613          	li	a2,0
   14d04:	00000413          	li	s0,0
   14d08:	04012623          	sw	zero,76(sp)
   14d0c:	b3090913          	addi	s2,s2,-1232 # 1ab30 <zeroes.4137+0x70>
   14d10:	e45fe06f          	j	13b54 <_vfprintf_r+0x6b8>
   14d14:	0b812703          	lw	a4,184(sp)
   14d18:	05513823          	sd	s5,80(sp)
   14d1c:	91cff06f          	j	13e38 <_vfprintf_r+0x99c>
   14d20:	00070c13          	mv	s8,a4
   14d24:	00000613          	li	a2,0
   14d28:	00200713          	li	a4,2
   14d2c:	f95ff06f          	j	14cc0 <_vfprintf_r+0x1824>
   14d30:	001c7793          	andi	a5,s8,1
   14d34:	00b50733          	add	a4,a0,a1
   14d38:	b8079ce3          	bnez	a5,148d0 <_vfprintf_r+0x1434>
   14d3c:	0a813783          	ld	a5,168(sp)
   14d40:	bc1ff06f          	j	14900 <_vfprintf_r+0x1464>
   14d44:	02d00793          	li	a5,45
   14d48:	08f107a3          	sb	a5,143(sp)
   14d4c:	02d00613          	li	a2,45
   14d50:	9f8ff06f          	j	13f48 <_vfprintf_r+0xaac>
   14d54:	0001b937          	lui	s2,0x1b
   14d58:	af890913          	addi	s2,s2,-1288 # 1aaf8 <zeroes.4137+0x38>
   14d5c:	d95ff06f          	j	14af0 <_vfprintf_r+0x1654>
   14d60:	001c7793          	andi	a5,s8,1
   14d64:	26079a63          	bnez	a5,14fd8 <_vfprintf_r+0x1b3c>
   14d68:	0a813783          	ld	a5,168(sp)
   14d6c:	412787b3          	sub	a5,a5,s2
   14d70:	06f12823          	sw	a5,112(sp)
   14d74:	35ad9c63          	bne	s11,s10,150cc <_vfprintf_r+0x1c30>
   14d78:	09812783          	lw	a5,152(sp)
   14d7c:	ffd00713          	li	a4,-3
   14d80:	02e7cc63          	blt	a5,a4,14db8 <_vfprintf_r+0x191c>
   14d84:	02f44a63          	blt	s0,a5,14db8 <_vfprintf_r+0x191c>
   14d88:	04f12623          	sw	a5,76(sp)
   14d8c:	b9dff06f          	j	14928 <_vfprintf_r+0x148c>
   14d90:	02d00713          	li	a4,45
   14d94:	08e107a3          	sb	a4,143(sp)
   14d98:	00f12423          	sw	a5,8(sp)
   14d9c:	00012c03          	lw	s8,0(sp)
   14da0:	02d00613          	li	a2,45
   14da4:	00000413          	li	s0,0
   14da8:	b0dfe06f          	j	138b4 <_vfprintf_r+0x418>
   14dac:	0b812703          	lw	a4,184(sp)
   14db0:	00913823          	sd	s1,16(sp)
   14db4:	d78ff06f          	j	1432c <_vfprintf_r+0xe90>
   14db8:	ffed0d1b          	addiw	s10,s10,-2
   14dbc:	fff7879b          	addiw	a5,a5,-1
   14dc0:	08f12c23          	sw	a5,152(sp)
   14dc4:	0ba10023          	sb	s10,160(sp)
   14dc8:	2c07c863          	bltz	a5,15098 <_vfprintf_r+0x1bfc>
   14dcc:	02b00713          	li	a4,43
   14dd0:	0ae100a3          	sb	a4,161(sp)
   14dd4:	00900613          	li	a2,9
   14dd8:	16f64463          	blt	a2,a5,14f40 <_vfprintf_r+0x1aa4>
   14ddc:	0307879b          	addiw	a5,a5,48
   14de0:	03000713          	li	a4,48
   14de4:	0af101a3          	sb	a5,163(sp)
   14de8:	0ae10123          	sb	a4,162(sp)
   14dec:	0a410793          	addi	a5,sp,164
   14df0:	0a010713          	addi	a4,sp,160
   14df4:	40e787bb          	subw	a5,a5,a4
   14df8:	07012703          	lw	a4,112(sp)
   14dfc:	06f12a23          	sw	a5,116(sp)
   14e00:	00e787bb          	addw	a5,a5,a4
   14e04:	02f12023          	sw	a5,32(sp)
   14e08:	00100793          	li	a5,1
   14e0c:	26e7d263          	ble	a4,a5,15070 <_vfprintf_r+0x1bd4>
   14e10:	02012783          	lw	a5,32(sp)
   14e14:	0017879b          	addiw	a5,a5,1
   14e18:	02f12023          	sw	a5,32(sp)
   14e1c:	2607c463          	bltz	a5,15084 <_vfprintf_r+0x1be8>
   14e20:	04012623          	sw	zero,76(sp)
   14e24:	b2dff06f          	j	14950 <_vfprintf_r+0x14b4>
   14e28:	00812423          	sw	s0,8(sp)
   14e2c:	02812023          	sw	s0,32(sp)
   14e30:	08f14603          	lbu	a2,143(sp)
   14e34:	03913423          	sd	s9,40(sp)
   14e38:	00000413          	li	s0,0
   14e3c:	04012623          	sw	zero,76(sp)
   14e40:	a71fe06f          	j	138b0 <_vfprintf_r+0x414>
   14e44:	0b010613          	addi	a2,sp,176
   14e48:	000a0593          	mv	a1,s4
   14e4c:	000b8513          	mv	a0,s7
   14e50:	25d030ef          	jal	ra,188ac <__sprint_r>
   14e54:	00050463          	beqz	a0,14e5c <_vfprintf_r+0x19c0>
   14e58:	955fe06f          	j	137ac <_vfprintf_r+0x310>
   14e5c:	09812403          	lw	s0,152(sp)
   14e60:	0c013783          	ld	a5,192(sp)
   14e64:	0b812703          	lw	a4,184(sp)
   14e68:	000b0893          	mv	a7,s6
   14e6c:	be9ff06f          	j	14a54 <_vfprintf_r+0x15b8>
   14e70:	9e0410e3          	bnez	s0,14850 <_vfprintf_r+0x13b4>
   14e74:	00090413          	mv	s0,s2
   14e78:	9d9ff06f          	j	14850 <_vfprintf_r+0x13b4>
   14e7c:	00600413          	li	s0,6
   14e80:	9d1ff06f          	j	14850 <_vfprintf_r+0x13b4>
   14e84:	228405d3          	fmv.d	fa1,fs0
   14e88:	09810713          	addi	a4,sp,152
   14e8c:	0a810813          	addi	a6,sp,168
   14e90:	09c10793          	addi	a5,sp,156
   14e94:	00040693          	mv	a3,s0
   14e98:	00300613          	li	a2,3
   14e9c:	000b8513          	mv	a0,s7
   14ea0:	01113423          	sd	a7,8(sp)
   14ea4:	145000ef          	jal	ra,157e8 <_dtoa_r>
   14ea8:	00813883          	ld	a7,8(sp)
   14eac:	00040713          	mv	a4,s0
   14eb0:	00050913          	mv	s2,a0
   14eb4:	00e50733          	add	a4,a0,a4
   14eb8:	00040593          	mv	a1,s0
   14ebc:	00094683          	lbu	a3,0(s2)
   14ec0:	03000793          	li	a5,48
   14ec4:	14f68063          	beq	a3,a5,15004 <_vfprintf_r+0x1b68>
   14ec8:	09812583          	lw	a1,152(sp)
   14ecc:	00b70733          	add	a4,a4,a1
   14ed0:	a01ff06f          	j	148d0 <_vfprintf_r+0x1434>
   14ed4:	22841453          	fneg.d	fs0,fs0
   14ed8:	02d00c93          	li	s9,45
   14edc:	991ff06f          	j	1486c <_vfprintf_r+0x13d0>
   14ee0:	04c12703          	lw	a4,76(sp)
   14ee4:	00100793          	li	a5,1
   14ee8:	1ae05263          	blez	a4,1508c <_vfprintf_r+0x1bf0>
   14eec:	07012703          	lw	a4,112(sp)
   14ef0:	00e787bb          	addw	a5,a5,a4
   14ef4:	02f12023          	sw	a5,32(sp)
   14ef8:	0007ce63          	bltz	a5,14f14 <_vfprintf_r+0x1a78>
   14efc:	06700d13          	li	s10,103
   14f00:	a51ff06f          	j	14950 <_vfprintf_r+0x14b4>
   14f04:	04c12783          	lw	a5,76(sp)
   14f08:	0017879b          	addiw	a5,a5,1
   14f0c:	02f12023          	sw	a5,32(sp)
   14f10:	fe07d6e3          	bgez	a5,14efc <_vfprintf_r+0x1a60>
   14f14:	00000793          	li	a5,0
   14f18:	06700d13          	li	s10,103
   14f1c:	a35ff06f          	j	14950 <_vfprintf_r+0x14b4>
   14f20:	09812783          	lw	a5,152(sp)
   14f24:	04f12623          	sw	a5,76(sp)
   14f28:	12f05263          	blez	a5,1504c <_vfprintf_r+0x1bb0>
   14f2c:	0a041e63          	bnez	s0,14fe8 <_vfprintf_r+0x1b4c>
   14f30:	001c7c13          	andi	s8,s8,1
   14f34:	0a0c1a63          	bnez	s8,14fe8 <_vfprintf_r+0x1b4c>
   14f38:	02f12023          	sw	a5,32(sp)
   14f3c:	a15ff06f          	j	14950 <_vfprintf_r+0x14b4>
   14f40:	0af10593          	addi	a1,sp,175
   14f44:	00058713          	mv	a4,a1
   14f48:	00a00513          	li	a0,10
   14f4c:	02a7e6bb          	remw	a3,a5,a0
   14f50:	fff70713          	addi	a4,a4,-1
   14f54:	02a7c7bb          	divw	a5,a5,a0
   14f58:	0306869b          	addiw	a3,a3,48
   14f5c:	00d70023          	sb	a3,0(a4)
   14f60:	fef646e3          	blt	a2,a5,14f4c <_vfprintf_r+0x1ab0>
   14f64:	0307879b          	addiw	a5,a5,48
   14f68:	0ff7f793          	andi	a5,a5,255
   14f6c:	fff70693          	addi	a3,a4,-1
   14f70:	fef70fa3          	sb	a5,-1(a4)
   14f74:	16b6f863          	bleu	a1,a3,150e4 <_vfprintf_r+0x1c48>
   14f78:	0a210613          	addi	a2,sp,162
   14f7c:	0080006f          	j	14f84 <_vfprintf_r+0x1ae8>
   14f80:	0006c783          	lbu	a5,0(a3)
   14f84:	00160613          	addi	a2,a2,1
   14f88:	00168693          	addi	a3,a3,1
   14f8c:	fef60fa3          	sb	a5,-1(a2)
   14f90:	feb698e3          	bne	a3,a1,14f80 <_vfprintf_r+0x1ae4>
   14f94:	0b010793          	addi	a5,sp,176
   14f98:	40e787b3          	sub	a5,a5,a4
   14f9c:	0a210713          	addi	a4,sp,162
   14fa0:	00f707b3          	add	a5,a4,a5
   14fa4:	e4dff06f          	j	14df0 <_vfprintf_r+0x1954>
   14fa8:	228405d3          	fmv.d	fa1,fs0
   14fac:	0a810813          	addi	a6,sp,168
   14fb0:	09c10793          	addi	a5,sp,156
   14fb4:	09810713          	addi	a4,sp,152
   14fb8:	00040693          	mv	a3,s0
   14fbc:	00300613          	li	a2,3
   14fc0:	000b8513          	mv	a0,s7
   14fc4:	01113423          	sd	a7,8(sp)
   14fc8:	021000ef          	jal	ra,157e8 <_dtoa_r>
   14fcc:	00813883          	ld	a7,8(sp)
   14fd0:	00050913          	mv	s2,a0
   14fd4:	00040593          	mv	a1,s0
   14fd8:	04600793          	li	a5,70
   14fdc:	00b90733          	add	a4,s2,a1
   14fe0:	ecfd0ee3          	beq	s10,a5,14ebc <_vfprintf_r+0x1a20>
   14fe4:	8edff06f          	j	148d0 <_vfprintf_r+0x1434>
   14fe8:	04c12783          	lw	a5,76(sp)
   14fec:	0014041b          	addiw	s0,s0,1
   14ff0:	008787bb          	addw	a5,a5,s0
   14ff4:	02f12023          	sw	a5,32(sp)
   14ff8:	9407dce3          	bgez	a5,14950 <_vfprintf_r+0x14b4>
   14ffc:	00000793          	li	a5,0
   15000:	951ff06f          	j	14950 <_vfprintf_r+0x14b4>
   15004:	f20007d3          	fmv.d.x	fa5,zero
   15008:	a2f427d3          	feq.d	a5,fs0,fa5
   1500c:	ea079ee3          	bnez	a5,14ec8 <_vfprintf_r+0x1a2c>
   15010:	00100793          	li	a5,1
   15014:	40b785bb          	subw	a1,a5,a1
   15018:	08b12c23          	sw	a1,152(sp)
   1501c:	00b70733          	add	a4,a4,a1
   15020:	8b1ff06f          	j	148d0 <_vfprintf_r+0x1434>
   15024:	00000d93          	li	s11,0
   15028:	ccdff06f          	j	14cf4 <_vfprintf_r+0x1858>
   1502c:	02813783          	ld	a5,40(sp)
   15030:	0007a403          	lw	s0,0(a5)
   15034:	00878793          	addi	a5,a5,8
   15038:	02f13423          	sd	a5,40(sp)
   1503c:	00044463          	bltz	s0,15044 <_vfprintf_r+0x1ba8>
   15040:	e18fe06f          	j	13658 <_vfprintf_r+0x1bc>
   15044:	fff00413          	li	s0,-1
   15048:	e10fe06f          	j	13658 <_vfprintf_r+0x1bc>
   1504c:	00041a63          	bnez	s0,15060 <_vfprintf_r+0x1bc4>
   15050:	00100793          	li	a5,1
   15054:	00fc7c33          	and	s8,s8,a5
   15058:	02f12023          	sw	a5,32(sp)
   1505c:	8e0c0ae3          	beqz	s8,14950 <_vfprintf_r+0x14b4>
   15060:	0024079b          	addiw	a5,s0,2
   15064:	02f12023          	sw	a5,32(sp)
   15068:	8e07d4e3          	bgez	a5,14950 <_vfprintf_r+0x14b4>
   1506c:	f91ff06f          	j	14ffc <_vfprintf_r+0x1b60>
   15070:	00fc7c33          	and	s8,s8,a5
   15074:	d80c1ee3          	bnez	s8,14e10 <_vfprintf_r+0x1974>
   15078:	02012703          	lw	a4,32(sp)
   1507c:	00070793          	mv	a5,a4
   15080:	da0750e3          	bgez	a4,14e20 <_vfprintf_r+0x1984>
   15084:	00000793          	li	a5,0
   15088:	d99ff06f          	j	14e20 <_vfprintf_r+0x1984>
   1508c:	00200793          	li	a5,2
   15090:	40e787bb          	subw	a5,a5,a4
   15094:	e59ff06f          	j	14eec <_vfprintf_r+0x1a50>
   15098:	02d00713          	li	a4,45
   1509c:	40f007bb          	negw	a5,a5
   150a0:	0ae100a3          	sb	a4,161(sp)
   150a4:	d31ff06f          	j	14dd4 <_vfprintf_r+0x1938>
   150a8:	08b107a3          	sb	a1,143(sp)
   150ac:	ed9fe06f          	j	13f84 <_vfprintf_r+0xae8>
   150b0:	00000793          	li	a5,0
   150b4:	891ff06f          	j	14944 <_vfprintf_r+0x14a8>
   150b8:	08b107a3          	sb	a1,143(sp)
   150bc:	010c6c13          	ori	s8,s8,16
   150c0:	f2dfe06f          	j	13fec <_vfprintf_r+0xb50>
   150c4:	08b107a3          	sb	a1,143(sp)
   150c8:	ef5fe06f          	j	13fbc <_vfprintf_r+0xb20>
   150cc:	09812783          	lw	a5,152(sp)
   150d0:	cedff06f          	j	14dbc <_vfprintf_r+0x1920>
   150d4:	08b107a3          	sb	a1,143(sp)
   150d8:	e2dfe06f          	j	13f04 <_vfprintf_r+0xa68>
   150dc:	08b107a3          	sb	a1,143(sp)
   150e0:	dd5fe06f          	j	13eb4 <_vfprintf_r+0xa18>
   150e4:	0a210793          	addi	a5,sp,162
   150e8:	d09ff06f          	j	14df0 <_vfprintf_r+0x1954>
   150ec:	08b107a3          	sb	a1,143(sp)
   150f0:	f41fe06f          	j	14030 <_vfprintf_r+0xb94>
   150f4:	08b107a3          	sb	a1,143(sp)
   150f8:	f28fe06f          	j	13820 <_vfprintf_r+0x384>
   150fc:	08b107a3          	sb	a1,143(sp)
   15100:	9c5fe06f          	j	13ac4 <_vfprintf_r+0x628>
   15104:	08b107a3          	sb	a1,143(sp)
   15108:	010c6c13          	ori	s8,s8,16
   1510c:	979fe06f          	j	13a84 <_vfprintf_r+0x5e8>
   15110:	08b107a3          	sb	a1,143(sp)
   15114:	010c6c13          	ori	s8,s8,16
   15118:	929fe06f          	j	13a40 <_vfprintf_r+0x5a4>
   1511c:	08b107a3          	sb	a1,143(sp)
   15120:	881fe06f          	j	139a0 <_vfprintf_r+0x504>

0000000000015124 <vfprintf>:
   15124:	00060693          	mv	a3,a2
   15128:	00058613          	mv	a2,a1
   1512c:	00050593          	mv	a1,a0
   15130:	8101b503          	ld	a0,-2032(gp)
   15134:	b68fe06f          	j	1349c <_vfprintf_r>

0000000000015138 <__sbprintf>:
   15138:	0105d783          	lhu	a5,16(a1)
   1513c:	0ac5ae03          	lw	t3,172(a1)
   15140:	0125d303          	lhu	t1,18(a1)
   15144:	0305b883          	ld	a7,48(a1)
   15148:	0405b803          	ld	a6,64(a1)
   1514c:	b3010113          	addi	sp,sp,-1232
   15150:	ffd7f793          	andi	a5,a5,-3
   15154:	40000713          	li	a4,1024
   15158:	4c813023          	sd	s0,1216(sp)
   1515c:	00f11823          	sh	a5,16(sp)
   15160:	00058413          	mv	s0,a1
   15164:	0b010793          	addi	a5,sp,176
   15168:	00010593          	mv	a1,sp
   1516c:	4a913c23          	sd	s1,1208(sp)
   15170:	4b213823          	sd	s2,1200(sp)
   15174:	4c113423          	sd	ra,1224(sp)
   15178:	00050913          	mv	s2,a0
   1517c:	0bc12623          	sw	t3,172(sp)
   15180:	00611923          	sh	t1,18(sp)
   15184:	03113823          	sd	a7,48(sp)
   15188:	05013023          	sd	a6,64(sp)
   1518c:	00f13023          	sd	a5,0(sp)
   15190:	00f13c23          	sd	a5,24(sp)
   15194:	00e12623          	sw	a4,12(sp)
   15198:	02e12023          	sw	a4,32(sp)
   1519c:	02012423          	sw	zero,40(sp)
   151a0:	afcfe0ef          	jal	ra,1349c <_vfprintf_r>
   151a4:	00050493          	mv	s1,a0
   151a8:	00054a63          	bltz	a0,151bc <__sbprintf+0x84>
   151ac:	00010593          	mv	a1,sp
   151b0:	00090513          	mv	a0,s2
   151b4:	939fb0ef          	jal	ra,10aec <_fflush_r>
   151b8:	02051c63          	bnez	a0,151f0 <__sbprintf+0xb8>
   151bc:	01015783          	lhu	a5,16(sp)
   151c0:	0407f793          	andi	a5,a5,64
   151c4:	00078863          	beqz	a5,151d4 <__sbprintf+0x9c>
   151c8:	01045783          	lhu	a5,16(s0)
   151cc:	0407e793          	ori	a5,a5,64
   151d0:	00f41823          	sh	a5,16(s0)
   151d4:	4c813083          	ld	ra,1224(sp)
   151d8:	00048513          	mv	a0,s1
   151dc:	4c013403          	ld	s0,1216(sp)
   151e0:	4b813483          	ld	s1,1208(sp)
   151e4:	4b013903          	ld	s2,1200(sp)
   151e8:	4d010113          	addi	sp,sp,1232
   151ec:	00008067          	ret
   151f0:	fff00493          	li	s1,-1
   151f4:	fc9ff06f          	j	151bc <__sbprintf+0x84>

00000000000151f8 <__swsetup_r>:
   151f8:	8101b783          	ld	a5,-2032(gp)
   151fc:	fe010113          	addi	sp,sp,-32
   15200:	00813823          	sd	s0,16(sp)
   15204:	00913423          	sd	s1,8(sp)
   15208:	00113c23          	sd	ra,24(sp)
   1520c:	00050493          	mv	s1,a0
   15210:	00058413          	mv	s0,a1
   15214:	00078663          	beqz	a5,15220 <__swsetup_r+0x28>
   15218:	0507a703          	lw	a4,80(a5)
   1521c:	0e070063          	beqz	a4,152fc <__swsetup_r+0x104>
   15220:	01041703          	lh	a4,16(s0)
   15224:	03071793          	slli	a5,a4,0x30
   15228:	0307d793          	srli	a5,a5,0x30
   1522c:	0087f693          	andi	a3,a5,8
   15230:	04068263          	beqz	a3,15274 <__swsetup_r+0x7c>
   15234:	01843683          	ld	a3,24(s0)
   15238:	06068663          	beqz	a3,152a4 <__swsetup_r+0xac>
   1523c:	0017f713          	andi	a4,a5,1
   15240:	08071463          	bnez	a4,152c8 <__swsetup_r+0xd0>
   15244:	0027f793          	andi	a5,a5,2
   15248:	00000713          	li	a4,0
   1524c:	00079463          	bnez	a5,15254 <__swsetup_r+0x5c>
   15250:	02042703          	lw	a4,32(s0)
   15254:	00e42623          	sw	a4,12(s0)
   15258:	00000513          	li	a0,0
   1525c:	08068263          	beqz	a3,152e0 <__swsetup_r+0xe8>
   15260:	01813083          	ld	ra,24(sp)
   15264:	01013403          	ld	s0,16(sp)
   15268:	00813483          	ld	s1,8(sp)
   1526c:	02010113          	addi	sp,sp,32
   15270:	00008067          	ret
   15274:	0107f693          	andi	a3,a5,16
   15278:	0c068663          	beqz	a3,15344 <__swsetup_r+0x14c>
   1527c:	0047f793          	andi	a5,a5,4
   15280:	08079463          	bnez	a5,15308 <__swsetup_r+0x110>
   15284:	01843683          	ld	a3,24(s0)
   15288:	00876793          	ori	a5,a4,8
   1528c:	0107979b          	slliw	a5,a5,0x10
   15290:	4107d79b          	sraiw	a5,a5,0x10
   15294:	00f41823          	sh	a5,16(s0)
   15298:	03079793          	slli	a5,a5,0x30
   1529c:	0307d793          	srli	a5,a5,0x30
   152a0:	f8069ee3          	bnez	a3,1523c <__swsetup_r+0x44>
   152a4:	2807f713          	andi	a4,a5,640
   152a8:	20000613          	li	a2,512
   152ac:	f8c708e3          	beq	a4,a2,1523c <__swsetup_r+0x44>
   152b0:	00040593          	mv	a1,s0
   152b4:	00048513          	mv	a0,s1
   152b8:	bb5fc0ef          	jal	ra,11e6c <__smakebuf_r>
   152bc:	01045783          	lhu	a5,16(s0)
   152c0:	01843683          	ld	a3,24(s0)
   152c4:	f79ff06f          	j	1523c <__swsetup_r+0x44>
   152c8:	02042783          	lw	a5,32(s0)
   152cc:	00042623          	sw	zero,12(s0)
   152d0:	00000513          	li	a0,0
   152d4:	40f007bb          	negw	a5,a5
   152d8:	02f42423          	sw	a5,40(s0)
   152dc:	f80692e3          	bnez	a3,15260 <__swsetup_r+0x68>
   152e0:	01041783          	lh	a5,16(s0)
   152e4:	0807f713          	andi	a4,a5,128
   152e8:	f6070ce3          	beqz	a4,15260 <__swsetup_r+0x68>
   152ec:	0407e793          	ori	a5,a5,64
   152f0:	00f41823          	sh	a5,16(s0)
   152f4:	fff00513          	li	a0,-1
   152f8:	f69ff06f          	j	15260 <__swsetup_r+0x68>
   152fc:	00078513          	mv	a0,a5
   15300:	dedfb0ef          	jal	ra,110ec <__sinit>
   15304:	f1dff06f          	j	15220 <__swsetup_r+0x28>
   15308:	05843583          	ld	a1,88(s0)
   1530c:	00058e63          	beqz	a1,15328 <__swsetup_r+0x130>
   15310:	07440793          	addi	a5,s0,116
   15314:	00f58863          	beq	a1,a5,15324 <__swsetup_r+0x12c>
   15318:	00048513          	mv	a0,s1
   1531c:	8b8fc0ef          	jal	ra,113d4 <_free_r>
   15320:	01041703          	lh	a4,16(s0)
   15324:	04043c23          	sd	zero,88(s0)
   15328:	01843683          	ld	a3,24(s0)
   1532c:	fdb77713          	andi	a4,a4,-37
   15330:	0107171b          	slliw	a4,a4,0x10
   15334:	4107571b          	sraiw	a4,a4,0x10
   15338:	00042423          	sw	zero,8(s0)
   1533c:	00d43023          	sd	a3,0(s0)
   15340:	f49ff06f          	j	15288 <__swsetup_r+0x90>
   15344:	00900793          	li	a5,9
   15348:	00f4a023          	sw	a5,0(s1)
   1534c:	04076713          	ori	a4,a4,64
   15350:	00e41823          	sh	a4,16(s0)
   15354:	fff00513          	li	a0,-1
   15358:	f09ff06f          	j	15260 <__swsetup_r+0x68>

000000000001535c <__register_exitproc>:
   1535c:	fd010113          	addi	sp,sp,-48
   15360:	02813023          	sd	s0,32(sp)
   15364:	8081b403          	ld	s0,-2040(gp)
   15368:	00913c23          	sd	s1,24(sp)
   1536c:	00050493          	mv	s1,a0
   15370:	1f843503          	ld	a0,504(s0)
   15374:	01213823          	sd	s2,16(sp)
   15378:	01313423          	sd	s3,8(sp)
   1537c:	01413023          	sd	s4,0(sp)
   15380:	02113423          	sd	ra,40(sp)
   15384:	00058913          	mv	s2,a1
   15388:	00060a13          	mv	s4,a2
   1538c:	00068993          	mv	s3,a3
   15390:	0c050463          	beqz	a0,15458 <__register_exitproc+0xfc>
   15394:	00852703          	lw	a4,8(a0)
   15398:	01f00793          	li	a5,31
   1539c:	0017059b          	addiw	a1,a4,1
   153a0:	02e7de63          	ble	a4,a5,153dc <__register_exitproc+0x80>
   153a4:	000177b7          	lui	a5,0x17
   153a8:	f0478793          	addi	a5,a5,-252 # 16f04 <malloc>
   153ac:	0a078c63          	beqz	a5,15464 <__register_exitproc+0x108>
   153b0:	31800513          	li	a0,792
   153b4:	351010ef          	jal	ra,16f04 <malloc>
   153b8:	0a050663          	beqz	a0,15464 <__register_exitproc+0x108>
   153bc:	1f843783          	ld	a5,504(s0)
   153c0:	00052423          	sw	zero,8(a0)
   153c4:	00100593          	li	a1,1
   153c8:	00f53023          	sd	a5,0(a0)
   153cc:	1ea43c23          	sd	a0,504(s0)
   153d0:	30052823          	sw	zero,784(a0)
   153d4:	30052a23          	sw	zero,788(a0)
   153d8:	00000713          	li	a4,0
   153dc:	00070793          	mv	a5,a4
   153e0:	02049e63          	bnez	s1,1541c <__register_exitproc+0xc0>
   153e4:	00278793          	addi	a5,a5,2
   153e8:	00379793          	slli	a5,a5,0x3
   153ec:	00b52423          	sw	a1,8(a0)
   153f0:	00f50533          	add	a0,a0,a5
   153f4:	01253023          	sd	s2,0(a0)
   153f8:	00000513          	li	a0,0
   153fc:	02813083          	ld	ra,40(sp)
   15400:	02013403          	ld	s0,32(sp)
   15404:	01813483          	ld	s1,24(sp)
   15408:	01013903          	ld	s2,16(sp)
   1540c:	00813983          	ld	s3,8(sp)
   15410:	00013a03          	ld	s4,0(sp)
   15414:	03010113          	addi	sp,sp,48
   15418:	00008067          	ret
   1541c:	00371813          	slli	a6,a4,0x3
   15420:	01050833          	add	a6,a0,a6
   15424:	11483823          	sd	s4,272(a6)
   15428:	31052883          	lw	a7,784(a0)
   1542c:	00100613          	li	a2,1
   15430:	00e6173b          	sllw	a4,a2,a4
   15434:	00e8e633          	or	a2,a7,a4
   15438:	30c52823          	sw	a2,784(a0)
   1543c:	21383823          	sd	s3,528(a6)
   15440:	00200693          	li	a3,2
   15444:	fad490e3          	bne	s1,a3,153e4 <__register_exitproc+0x88>
   15448:	31452683          	lw	a3,788(a0)
   1544c:	00e6e733          	or	a4,a3,a4
   15450:	30e52a23          	sw	a4,788(a0)
   15454:	f91ff06f          	j	153e4 <__register_exitproc+0x88>
   15458:	20040513          	addi	a0,s0,512
   1545c:	1ea43c23          	sd	a0,504(s0)
   15460:	f35ff06f          	j	15394 <__register_exitproc+0x38>
   15464:	fff00513          	li	a0,-1
   15468:	f95ff06f          	j	153fc <__register_exitproc+0xa0>

000000000001546c <__call_exitprocs>:
   1546c:	fa010113          	addi	sp,sp,-96
   15470:	03413823          	sd	s4,48(sp)
   15474:	8081ba03          	ld	s4,-2040(gp)
   15478:	03313c23          	sd	s3,56(sp)
   1547c:	000179b7          	lui	s3,0x17
   15480:	04913423          	sd	s1,72(sp)
   15484:	05213023          	sd	s2,64(sp)
   15488:	03513423          	sd	s5,40(sp)
   1548c:	01713c23          	sd	s7,24(sp)
   15490:	01813823          	sd	s8,16(sp)
   15494:	04113c23          	sd	ra,88(sp)
   15498:	04813823          	sd	s0,80(sp)
   1549c:	03613023          	sd	s6,32(sp)
   154a0:	01913423          	sd	s9,8(sp)
   154a4:	01a13023          	sd	s10,0(sp)
   154a8:	00050913          	mv	s2,a0
   154ac:	00058b93          	mv	s7,a1
   154b0:	1f8a0a93          	addi	s5,s4,504
   154b4:	00100493          	li	s1,1
   154b8:	fff00c13          	li	s8,-1
   154bc:	f1098993          	addi	s3,s3,-240 # 16f10 <free>
   154c0:	1f8a3b03          	ld	s6,504(s4)
   154c4:	0c0b0463          	beqz	s6,1558c <__call_exitprocs+0x120>
   154c8:	000a8d13          	mv	s10,s5
   154cc:	008b2403          	lw	s0,8(s6)
   154d0:	fff4041b          	addiw	s0,s0,-1
   154d4:	02045263          	bgez	s0,154f8 <__call_exitprocs+0x8c>
   154d8:	08c0006f          	j	15564 <__call_exitprocs+0xf8>
   154dc:	02040793          	addi	a5,s0,32
   154e0:	00379793          	slli	a5,a5,0x3
   154e4:	00fb07b3          	add	a5,s6,a5
   154e8:	1107b783          	ld	a5,272(a5)
   154ec:	00fb8a63          	beq	s7,a5,15500 <__call_exitprocs+0x94>
   154f0:	fff4041b          	addiw	s0,s0,-1
   154f4:	07840863          	beq	s0,s8,15564 <__call_exitprocs+0xf8>
   154f8:	00040713          	mv	a4,s0
   154fc:	fe0b90e3          	bnez	s7,154dc <__call_exitprocs+0x70>
   15500:	008b2783          	lw	a5,8(s6)
   15504:	00371713          	slli	a4,a4,0x3
   15508:	00eb0733          	add	a4,s6,a4
   1550c:	fff7879b          	addiw	a5,a5,-1
   15510:	01073683          	ld	a3,16(a4)
   15514:	0a878c63          	beq	a5,s0,155cc <__call_exitprocs+0x160>
   15518:	00073823          	sd	zero,16(a4)
   1551c:	fc068ae3          	beqz	a3,154f0 <__call_exitprocs+0x84>
   15520:	310b2783          	lw	a5,784(s6)
   15524:	0084963b          	sllw	a2,s1,s0
   15528:	008b2c83          	lw	s9,8(s6)
   1552c:	00f677b3          	and	a5,a2,a5
   15530:	08078a63          	beqz	a5,155c4 <__call_exitprocs+0x158>
   15534:	314b2783          	lw	a5,788(s6)
   15538:	00f67633          	and	a2,a2,a5
   1553c:	08061c63          	bnez	a2,155d4 <__call_exitprocs+0x168>
   15540:	11073583          	ld	a1,272(a4)
   15544:	00090513          	mv	a0,s2
   15548:	000680e7          	jalr	a3
   1554c:	008b2783          	lw	a5,8(s6)
   15550:	f79798e3          	bne	a5,s9,154c0 <__call_exitprocs+0x54>
   15554:	000d3783          	ld	a5,0(s10)
   15558:	f76794e3          	bne	a5,s6,154c0 <__call_exitprocs+0x54>
   1555c:	fff4041b          	addiw	s0,s0,-1
   15560:	f9841ce3          	bne	s0,s8,154f8 <__call_exitprocs+0x8c>
   15564:	02098463          	beqz	s3,1558c <__call_exitprocs+0x120>
   15568:	008b2783          	lw	a5,8(s6)
   1556c:	06079a63          	bnez	a5,155e0 <__call_exitprocs+0x174>
   15570:	000b3783          	ld	a5,0(s6)
   15574:	08078063          	beqz	a5,155f4 <__call_exitprocs+0x188>
   15578:	000b0513          	mv	a0,s6
   1557c:	00fd3023          	sd	a5,0(s10)
   15580:	191010ef          	jal	ra,16f10 <free>
   15584:	000d3b03          	ld	s6,0(s10)
   15588:	f40b12e3          	bnez	s6,154cc <__call_exitprocs+0x60>
   1558c:	05813083          	ld	ra,88(sp)
   15590:	05013403          	ld	s0,80(sp)
   15594:	04813483          	ld	s1,72(sp)
   15598:	04013903          	ld	s2,64(sp)
   1559c:	03813983          	ld	s3,56(sp)
   155a0:	03013a03          	ld	s4,48(sp)
   155a4:	02813a83          	ld	s5,40(sp)
   155a8:	02013b03          	ld	s6,32(sp)
   155ac:	01813b83          	ld	s7,24(sp)
   155b0:	01013c03          	ld	s8,16(sp)
   155b4:	00813c83          	ld	s9,8(sp)
   155b8:	00013d03          	ld	s10,0(sp)
   155bc:	06010113          	addi	sp,sp,96
   155c0:	00008067          	ret
   155c4:	000680e7          	jalr	a3
   155c8:	f85ff06f          	j	1554c <__call_exitprocs+0xe0>
   155cc:	008b2423          	sw	s0,8(s6)
   155d0:	f4dff06f          	j	1551c <__call_exitprocs+0xb0>
   155d4:	11073503          	ld	a0,272(a4)
   155d8:	000680e7          	jalr	a3
   155dc:	f71ff06f          	j	1554c <__call_exitprocs+0xe0>
   155e0:	000b3783          	ld	a5,0(s6)
   155e4:	000b0d13          	mv	s10,s6
   155e8:	00078b13          	mv	s6,a5
   155ec:	ee0b10e3          	bnez	s6,154cc <__call_exitprocs+0x60>
   155f0:	f9dff06f          	j	1558c <__call_exitprocs+0x120>
   155f4:	00000793          	li	a5,0
   155f8:	fedff06f          	j	155e4 <__call_exitprocs+0x178>

00000000000155fc <quorem>:
   155fc:	fc010113          	addi	sp,sp,-64
   15600:	03213023          	sd	s2,32(sp)
   15604:	01452783          	lw	a5,20(a0)
   15608:	0145a903          	lw	s2,20(a1)
   1560c:	02113c23          	sd	ra,56(sp)
   15610:	02813823          	sd	s0,48(sp)
   15614:	02913423          	sd	s1,40(sp)
   15618:	01313c23          	sd	s3,24(sp)
   1561c:	01413823          	sd	s4,16(sp)
   15620:	01513423          	sd	s5,8(sp)
   15624:	1b27ce63          	blt	a5,s2,157e0 <quorem+0x1e4>
   15628:	fff9091b          	addiw	s2,s2,-1
   1562c:	00090f13          	mv	t5,s2
   15630:	002f1f13          	slli	t5,t5,0x2
   15634:	01858413          	addi	s0,a1,24
   15638:	01e409b3          	add	s3,s0,t5
   1563c:	01850a13          	addi	s4,a0,24
   15640:	01ea0f33          	add	t5,s4,t5
   15644:	0009a783          	lw	a5,0(s3)
   15648:	000f2483          	lw	s1,0(t5)
   1564c:	0017879b          	addiw	a5,a5,1
   15650:	02f4d4bb          	divuw	s1,s1,a5
   15654:	0a048e63          	beqz	s1,15710 <quorem+0x114>
   15658:	00010337          	lui	t1,0x10
   1565c:	00040e93          	mv	t4,s0
   15660:	000a0e13          	mv	t3,s4
   15664:	00000613          	li	a2,0
   15668:	00000713          	li	a4,0
   1566c:	fff3031b          	addiw	t1,t1,-1
   15670:	004e8e93          	addi	t4,t4,4
   15674:	ffcea803          	lw	a6,-4(t4)
   15678:	000e2683          	lw	a3,0(t3)
   1567c:	004e0e13          	addi	t3,t3,4
   15680:	006878b3          	and	a7,a6,t1
   15684:	029888bb          	mulw	a7,a7,s1
   15688:	0108581b          	srliw	a6,a6,0x10
   1568c:	0066f7b3          	and	a5,a3,t1
   15690:	0106d69b          	srliw	a3,a3,0x10
   15694:	0298083b          	mulw	a6,a6,s1
   15698:	00c888bb          	addw	a7,a7,a2
   1569c:	0108d61b          	srliw	a2,a7,0x10
   156a0:	0068f8b3          	and	a7,a7,t1
   156a4:	4117073b          	subw	a4,a4,a7
   156a8:	00f707bb          	addw	a5,a4,a5
   156ac:	4107d71b          	sraiw	a4,a5,0x10
   156b0:	0067f7b3          	and	a5,a5,t1
   156b4:	00c8063b          	addw	a2,a6,a2
   156b8:	00667833          	and	a6,a2,t1
   156bc:	410686bb          	subw	a3,a3,a6
   156c0:	00e6873b          	addw	a4,a3,a4
   156c4:	0107169b          	slliw	a3,a4,0x10
   156c8:	00f6e6b3          	or	a3,a3,a5
   156cc:	fede2e23          	sw	a3,-4(t3)
   156d0:	0106561b          	srliw	a2,a2,0x10
   156d4:	4107571b          	sraiw	a4,a4,0x10
   156d8:	f9d9fce3          	bleu	t4,s3,15670 <quorem+0x74>
   156dc:	000f2783          	lw	a5,0(t5)
   156e0:	02079863          	bnez	a5,15710 <quorem+0x114>
   156e4:	ffcf0793          	addi	a5,t5,-4
   156e8:	02fa7263          	bleu	a5,s4,1570c <quorem+0x110>
   156ec:	ffcf2703          	lw	a4,-4(t5)
   156f0:	00070863          	beqz	a4,15700 <quorem+0x104>
   156f4:	0180006f          	j	1570c <quorem+0x110>
   156f8:	0007a703          	lw	a4,0(a5)
   156fc:	00071863          	bnez	a4,1570c <quorem+0x110>
   15700:	ffc78793          	addi	a5,a5,-4
   15704:	fff9091b          	addiw	s2,s2,-1
   15708:	fefa68e3          	bltu	s4,a5,156f8 <quorem+0xfc>
   1570c:	01252a23          	sw	s2,20(a0)
   15710:	00050a93          	mv	s5,a0
   15714:	220020ef          	jal	ra,17934 <__mcmp>
   15718:	0a054063          	bltz	a0,157b8 <quorem+0x1bc>
   1571c:	000105b7          	lui	a1,0x10
   15720:	0014849b          	addiw	s1,s1,1
   15724:	000a0613          	mv	a2,s4
   15728:	00000793          	li	a5,0
   1572c:	fff5859b          	addiw	a1,a1,-1
   15730:	00440413          	addi	s0,s0,4
   15734:	ffc42683          	lw	a3,-4(s0)
   15738:	00062703          	lw	a4,0(a2)
   1573c:	00460613          	addi	a2,a2,4
   15740:	00b6f833          	and	a6,a3,a1
   15744:	410787bb          	subw	a5,a5,a6
   15748:	00b77833          	and	a6,a4,a1
   1574c:	010787bb          	addw	a5,a5,a6
   15750:	0106d69b          	srliw	a3,a3,0x10
   15754:	0107571b          	srliw	a4,a4,0x10
   15758:	40d7073b          	subw	a4,a4,a3
   1575c:	4107d69b          	sraiw	a3,a5,0x10
   15760:	00d706bb          	addw	a3,a4,a3
   15764:	0106981b          	slliw	a6,a3,0x10
   15768:	00b7f733          	and	a4,a5,a1
   1576c:	00e86733          	or	a4,a6,a4
   15770:	fee62e23          	sw	a4,-4(a2)
   15774:	4106d79b          	sraiw	a5,a3,0x10
   15778:	fa89fce3          	bleu	s0,s3,15730 <quorem+0x134>
   1577c:	00291713          	slli	a4,s2,0x2
   15780:	00ea0733          	add	a4,s4,a4
   15784:	00072783          	lw	a5,0(a4)
   15788:	02079863          	bnez	a5,157b8 <quorem+0x1bc>
   1578c:	ffc70793          	addi	a5,a4,-4
   15790:	02fa7263          	bleu	a5,s4,157b4 <quorem+0x1b8>
   15794:	ffc72703          	lw	a4,-4(a4)
   15798:	00070863          	beqz	a4,157a8 <quorem+0x1ac>
   1579c:	0180006f          	j	157b4 <quorem+0x1b8>
   157a0:	0007a703          	lw	a4,0(a5)
   157a4:	00071863          	bnez	a4,157b4 <quorem+0x1b8>
   157a8:	ffc78793          	addi	a5,a5,-4
   157ac:	fff9091b          	addiw	s2,s2,-1
   157b0:	fefa68e3          	bltu	s4,a5,157a0 <quorem+0x1a4>
   157b4:	012aaa23          	sw	s2,20(s5)
   157b8:	00048513          	mv	a0,s1
   157bc:	03813083          	ld	ra,56(sp)
   157c0:	03013403          	ld	s0,48(sp)
   157c4:	02813483          	ld	s1,40(sp)
   157c8:	02013903          	ld	s2,32(sp)
   157cc:	01813983          	ld	s3,24(sp)
   157d0:	01013a03          	ld	s4,16(sp)
   157d4:	00813a83          	ld	s5,8(sp)
   157d8:	04010113          	addi	sp,sp,64
   157dc:	00008067          	ret
   157e0:	00000513          	li	a0,0
   157e4:	fd9ff06f          	j	157bc <quorem+0x1c0>

00000000000157e8 <_dtoa_r>:
   157e8:	e20585d3          	fmv.x.d	a1,fa1
   157ec:	06053883          	ld	a7,96(a0)
   157f0:	f3010113          	addi	sp,sp,-208
   157f4:	0c813023          	sd	s0,192(sp)
   157f8:	0a913c23          	sd	s1,184(sp)
   157fc:	0b313423          	sd	s3,168(sp)
   15800:	09613823          	sd	s6,144(sp)
   15804:	07913c23          	sd	s9,120(sp)
   15808:	07a13823          	sd	s10,112(sp)
   1580c:	0c113423          	sd	ra,200(sp)
   15810:	0b213823          	sd	s2,176(sp)
   15814:	0b413023          	sd	s4,160(sp)
   15818:	09513c23          	sd	s5,152(sp)
   1581c:	09713423          	sd	s7,136(sp)
   15820:	09813023          	sd	s8,128(sp)
   15824:	07b13423          	sd	s11,104(sp)
   15828:	00e13023          	sd	a4,0(sp)
   1582c:	00050413          	mv	s0,a0
   15830:	00060993          	mv	s3,a2
   15834:	00068c93          	mv	s9,a3
   15838:	00078493          	mv	s1,a5
   1583c:	00080b13          	mv	s6,a6
   15840:	00058d13          	mv	s10,a1
   15844:	02088263          	beqz	a7,15868 <_dtoa_r+0x80>
   15848:	06852603          	lw	a2,104(a0)
   1584c:	00100693          	li	a3,1
   15850:	00088593          	mv	a1,a7
   15854:	00c696bb          	sllw	a3,a3,a2
   15858:	00c8a423          	sw	a2,8(a7)
   1585c:	00d8a623          	sw	a3,12(a7)
   15860:	089010ef          	jal	ra,170e8 <_Bfree>
   15864:	06043023          	sd	zero,96(s0)
   15868:	420d5913          	srai	s2,s10,0x20
   1586c:	0c094063          	bltz	s2,1592c <_dtoa_r+0x144>
   15870:	0004a023          	sw	zero,0(s1)
   15874:	7ff007b7          	lui	a5,0x7ff00
   15878:	00f976b3          	and	a3,s2,a5
   1587c:	06f68a63          	beq	a3,a5,158f0 <_dtoa_r+0x108>
   15880:	f20007d3          	fmv.d.x	fa5,zero
   15884:	f20d0753          	fmv.d.x	fa4,s10
   15888:	a2f727d3          	feq.d	a5,fa4,fa5
   1588c:	0c078463          	beqz	a5,15954 <_dtoa_r+0x16c>
   15890:	00013703          	ld	a4,0(sp)
   15894:	00100793          	li	a5,1
   15898:	00f72023          	sw	a5,0(a4)
   1589c:	480b0a63          	beqz	s6,15d30 <_dtoa_r+0x548>
   158a0:	0001b7b7          	lui	a5,0x1b
   158a4:	b3978793          	addi	a5,a5,-1223 # 1ab39 <zeroes.4137+0x79>
   158a8:	0001b537          	lui	a0,0x1b
   158ac:	00fb3023          	sd	a5,0(s6)
   158b0:	b3850513          	addi	a0,a0,-1224 # 1ab38 <zeroes.4137+0x78>
   158b4:	0c813083          	ld	ra,200(sp)
   158b8:	0c013403          	ld	s0,192(sp)
   158bc:	0b813483          	ld	s1,184(sp)
   158c0:	0b013903          	ld	s2,176(sp)
   158c4:	0a813983          	ld	s3,168(sp)
   158c8:	0a013a03          	ld	s4,160(sp)
   158cc:	09813a83          	ld	s5,152(sp)
   158d0:	09013b03          	ld	s6,144(sp)
   158d4:	08813b83          	ld	s7,136(sp)
   158d8:	08013c03          	ld	s8,128(sp)
   158dc:	07813c83          	ld	s9,120(sp)
   158e0:	07013d03          	ld	s10,112(sp)
   158e4:	06813d83          	ld	s11,104(sp)
   158e8:	0d010113          	addi	sp,sp,208
   158ec:	00008067          	ret
   158f0:	00013703          	ld	a4,0(sp)
   158f4:	000027b7          	lui	a5,0x2
   158f8:	70f7879b          	addiw	a5,a5,1807
   158fc:	00f72023          	sw	a5,0(a4)
   15900:	00cd1793          	slli	a5,s10,0xc
   15904:	3e079863          	bnez	a5,15cf4 <_dtoa_r+0x50c>
   15908:	0001b537          	lui	a0,0x1b
   1590c:	b4050513          	addi	a0,a0,-1216 # 1ab40 <zeroes.4137+0x80>
   15910:	fa0b02e3          	beqz	s6,158b4 <_dtoa_r+0xcc>
   15914:	00354703          	lbu	a4,3(a0)
   15918:	00350793          	addi	a5,a0,3
   1591c:	00070463          	beqz	a4,15924 <_dtoa_r+0x13c>
   15920:	00850793          	addi	a5,a0,8
   15924:	00fb3023          	sd	a5,0(s6)
   15928:	f8dff06f          	j	158b4 <_dtoa_r+0xcc>
   1592c:	800007b7          	lui	a5,0x80000
   15930:	fff7c793          	not	a5,a5
   15934:	020d1713          	slli	a4,s10,0x20
   15938:	00f97933          	and	s2,s2,a5
   1593c:	02091793          	slli	a5,s2,0x20
   15940:	02075713          	srli	a4,a4,0x20
   15944:	00100693          	li	a3,1
   15948:	00d4a023          	sw	a3,0(s1)
   1594c:	00f76d33          	or	s10,a4,a5
   15950:	f25ff06f          	j	15874 <_dtoa_r+0x8c>
   15954:	f20d05d3          	fmv.d.x	fa1,s10
   15958:	05810693          	addi	a3,sp,88
   1595c:	05c10613          	addi	a2,sp,92
   15960:	00040513          	mv	a0,s0
   15964:	410020ef          	jal	ra,17d74 <__d2b>
   15968:	02a13023          	sd	a0,32(sp)
   1596c:	0149581b          	srliw	a6,s2,0x14
   15970:	38081863          	bnez	a6,15d00 <_dtoa_r+0x518>
   15974:	05812603          	lw	a2,88(sp)
   15978:	05c12803          	lw	a6,92(sp)
   1597c:	02000793          	li	a5,32
   15980:	0106083b          	addw	a6,a2,a6
   15984:	4328069b          	addiw	a3,a6,1074
   15988:	6ad7de63          	ble	a3,a5,16044 <_dtoa_r+0x85c>
   1598c:	04000593          	li	a1,64
   15990:	4128049b          	addiw	s1,a6,1042
   15994:	000d079b          	sext.w	a5,s10
   15998:	40d585bb          	subw	a1,a1,a3
   1599c:	0097d7bb          	srlw	a5,a5,s1
   159a0:	00b914bb          	sllw	s1,s2,a1
   159a4:	0097e4b3          	or	s1,a5,s1
   159a8:	d21487d3          	fcvt.d.wu	fa5,s1
   159ac:	fe1006b7          	lui	a3,0xfe100
   159b0:	fff8081b          	addiw	a6,a6,-1
   159b4:	e20784d3          	fmv.x.d	s1,fa5
   159b8:	00100913          	li	s2,1
   159bc:	4204d793          	srai	a5,s1,0x20
   159c0:	00d787bb          	addw	a5,a5,a3
   159c4:	02049493          	slli	s1,s1,0x20
   159c8:	02079793          	slli	a5,a5,0x20
   159cc:	0204d493          	srli	s1,s1,0x20
   159d0:	00f4e4b3          	or	s1,s1,a5
   159d4:	0001d7b7          	lui	a5,0x1d
   159d8:	f287b787          	fld	fa5,-216(a5) # 1cf28 <mask+0x8>
   159dc:	f2048753          	fmv.d.x	fa4,s1
   159e0:	0001d7b7          	lui	a5,0x1d
   159e4:	0af77653          	fsub.d	fa2,fa4,fa5
   159e8:	f387b787          	fld	fa5,-200(a5) # 1cf38 <mask+0x18>
   159ec:	0001d7b7          	lui	a5,0x1d
   159f0:	f307b687          	fld	fa3,-208(a5) # 1cf30 <mask+0x10>
   159f4:	0001d7b7          	lui	a5,0x1d
   159f8:	d2080753          	fcvt.d.w	fa4,a6
   159fc:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   15a00:	f407b687          	fld	fa3,-192(a5) # 1cf40 <mask+0x20>
   15a04:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   15a08:	f2000753          	fmv.d.x	fa4,zero
   15a0c:	a2e797d3          	flt.d	a5,fa5,fa4
   15a10:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   15a14:	5e079e63          	bnez	a5,16010 <_dtoa_r+0x828>
   15a18:	00100793          	li	a5,1
   15a1c:	02f12823          	sw	a5,48(sp)
   15a20:	01600793          	li	a5,22
   15a24:	0377e663          	bltu	a5,s7,15a50 <_dtoa_r+0x268>
   15a28:	0001b7b7          	lui	a5,0x1b
   15a2c:	003b9693          	slli	a3,s7,0x3
   15a30:	83078793          	addi	a5,a5,-2000 # 1a830 <__mprec_tens>
   15a34:	00f687b3          	add	a5,a3,a5
   15a38:	0007b787          	fld	fa5,0(a5)
   15a3c:	f20d0753          	fmv.d.x	fa4,s10
   15a40:	a2f717d3          	flt.d	a5,fa4,fa5
   15a44:	60078863          	beqz	a5,16054 <_dtoa_r+0x86c>
   15a48:	fffb8b9b          	addiw	s7,s7,-1
   15a4c:	02012823          	sw	zero,48(sp)
   15a50:	4106083b          	subw	a6,a2,a6
   15a54:	fff80d9b          	addiw	s11,a6,-1
   15a58:	00000813          	li	a6,0
   15a5c:	2e0dc063          	bltz	s11,15d3c <_dtoa_r+0x554>
   15a60:	5c0bc263          	bltz	s7,16024 <_dtoa_r+0x83c>
   15a64:	017d8dbb          	addw	s11,s11,s7
   15a68:	03712423          	sw	s7,40(sp)
   15a6c:	00000c13          	li	s8,0
   15a70:	00900793          	li	a5,9
   15a74:	2d37ea63          	bltu	a5,s3,15d48 <_dtoa_r+0x560>
   15a78:	00500793          	li	a5,5
   15a7c:	00100a13          	li	s4,1
   15a80:	0137d663          	ble	s3,a5,15a8c <_dtoa_r+0x2a4>
   15a84:	ffc9899b          	addiw	s3,s3,-4
   15a88:	00000a13          	li	s4,0
   15a8c:	00300793          	li	a5,3
   15a90:	2af982e3          	beq	s3,a5,16534 <_dtoa_r+0xd4c>
   15a94:	1f37dce3          	ble	s3,a5,1648c <_dtoa_r+0xca4>
   15a98:	00400793          	li	a5,4
   15a9c:	0cf98ae3          	beq	s3,a5,16370 <_dtoa_r+0xb88>
   15aa0:	00100793          	li	a5,1
   15aa4:	00f12823          	sw	a5,16(sp)
   15aa8:	00500793          	li	a5,5
   15aac:	1ef996e3          	bne	s3,a5,16498 <_dtoa_r+0xcb0>
   15ab0:	019b87bb          	addw	a5,s7,s9
   15ab4:	00178a9b          	addiw	s5,a5,1
   15ab8:	02f12a23          	sw	a5,52(sp)
   15abc:	000a8513          	mv	a0,s5
   15ac0:	000a8493          	mv	s1,s5
   15ac4:	1b505ee3          	blez	s5,16480 <_dtoa_r+0xc98>
   15ac8:	06042423          	sw	zero,104(s0)
   15acc:	01f00793          	li	a5,31
   15ad0:	00000593          	li	a1,0
   15ad4:	02a7f463          	bleu	a0,a5,15afc <_dtoa_r+0x314>
   15ad8:	00100613          	li	a2,1
   15adc:	00400693          	li	a3,4
   15ae0:	0016969b          	slliw	a3,a3,0x1
   15ae4:	00068793          	mv	a5,a3
   15ae8:	01c78793          	addi	a5,a5,28
   15aec:	00060593          	mv	a1,a2
   15af0:	0016061b          	addiw	a2,a2,1
   15af4:	fef576e3          	bleu	a5,a0,15ae0 <_dtoa_r+0x2f8>
   15af8:	06b42423          	sw	a1,104(s0)
   15afc:	00040513          	mv	a0,s0
   15b00:	03013c23          	sd	a6,56(sp)
   15b04:	538010ef          	jal	ra,1703c <_Balloc>
   15b08:	00a13423          	sd	a0,8(sp)
   15b0c:	06a43023          	sd	a0,96(s0)
   15b10:	00e00793          	li	a5,14
   15b14:	03813803          	ld	a6,56(sp)
   15b18:	2697e463          	bltu	a5,s1,15d80 <_dtoa_r+0x598>
   15b1c:	260a0263          	beqz	s4,15d80 <_dtoa_r+0x598>
   15b20:	03a13c23          	sd	s10,56(sp)
   15b24:	317054e3          	blez	s7,1662c <_dtoa_r+0xe44>
   15b28:	00fbf713          	andi	a4,s7,15
   15b2c:	00371693          	slli	a3,a4,0x3
   15b30:	0001b737          	lui	a4,0x1b
   15b34:	404bd79b          	sraiw	a5,s7,0x4
   15b38:	83070713          	addi	a4,a4,-2000 # 1a830 <__mprec_tens>
   15b3c:	00e68733          	add	a4,a3,a4
   15b40:	0107f693          	andi	a3,a5,16
   15b44:	00073687          	fld	fa3,0(a4)
   15b48:	f20d07d3          	fmv.d.x	fa5,s10
   15b4c:	00200713          	li	a4,2
   15b50:	00068c63          	beqz	a3,15b68 <_dtoa_r+0x380>
   15b54:	0001b737          	lui	a4,0x1b
   15b58:	94073707          	fld	fa4,-1728(a4) # 1a940 <__mprec_bigtens+0x20>
   15b5c:	00f7f793          	andi	a5,a5,15
   15b60:	00300713          	li	a4,3
   15b64:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   15b68:	02078663          	beqz	a5,15b94 <_dtoa_r+0x3ac>
   15b6c:	0001b6b7          	lui	a3,0x1b
   15b70:	92068693          	addi	a3,a3,-1760 # 1a920 <__mprec_bigtens>
   15b74:	0017f613          	andi	a2,a5,1
   15b78:	4017d79b          	sraiw	a5,a5,0x1
   15b7c:	00060863          	beqz	a2,15b8c <_dtoa_r+0x3a4>
   15b80:	0006b707          	fld	fa4,0(a3)
   15b84:	0017071b          	addiw	a4,a4,1
   15b88:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   15b8c:	00868693          	addi	a3,a3,8
   15b90:	fe0792e3          	bnez	a5,15b74 <_dtoa_r+0x38c>
   15b94:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   15b98:	03012783          	lw	a5,48(sp)
   15b9c:	00078a63          	beqz	a5,15bb0 <_dtoa_r+0x3c8>
   15ba0:	0001d7b7          	lui	a5,0x1d
   15ba4:	f487b707          	fld	fa4,-184(a5) # 1cf48 <mask+0x28>
   15ba8:	a2e797d3          	flt.d	a5,fa5,fa4
   15bac:	440790e3          	bnez	a5,167ec <_dtoa_r+0x1004>
   15bb0:	0001d7b7          	lui	a5,0x1d
   15bb4:	d20706d3          	fcvt.d.w	fa3,a4
   15bb8:	f587b707          	fld	fa4,-168(a5) # 1cf58 <mask+0x38>
   15bbc:	fcc006b7          	lui	a3,0xfcc00
   15bc0:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   15bc4:	e2070753          	fmv.x.d	a4,fa4
   15bc8:	42075793          	srai	a5,a4,0x20
   15bcc:	00d787bb          	addw	a5,a5,a3
   15bd0:	02071713          	slli	a4,a4,0x20
   15bd4:	02079793          	slli	a5,a5,0x20
   15bd8:	02075713          	srli	a4,a4,0x20
   15bdc:	00f76733          	or	a4,a4,a5
   15be0:	180a86e3          	beqz	s5,1656c <_dtoa_r+0xd84>
   15be4:	000b8693          	mv	a3,s7
   15be8:	000a8613          	mv	a2,s5
   15bec:	01012783          	lw	a5,16(sp)
   15bf0:	300782e3          	beqz	a5,166f4 <_dtoa_r+0xf0c>
   15bf4:	fff6079b          	addiw	a5,a2,-1
   15bf8:	0001b5b7          	lui	a1,0x1b
   15bfc:	83058593          	addi	a1,a1,-2000 # 1a830 <__mprec_tens>
   15c00:	00379793          	slli	a5,a5,0x3
   15c04:	00b787b3          	add	a5,a5,a1
   15c08:	0001d5b7          	lui	a1,0x1d
   15c0c:	0007b687          	fld	fa3,0(a5)
   15c10:	f685b707          	fld	fa4,-152(a1) # 1cf68 <mask+0x48>
   15c14:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   15c18:	00813503          	ld	a0,8(sp)
   15c1c:	1ad77753          	fdiv.d	fa4,fa4,fa3
   15c20:	d20786d3          	fcvt.d.w	fa3,a5
   15c24:	0307879b          	addiw	a5,a5,48
   15c28:	0ff7f793          	andi	a5,a5,255
   15c2c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   15c30:	f20706d3          	fmv.d.x	fa3,a4
   15c34:	00f50023          	sb	a5,0(a0)
   15c38:	00150493          	addi	s1,a0,1
   15c3c:	0ad77753          	fsub.d	fa4,fa4,fa3
   15c40:	a2e79753          	flt.d	a4,fa5,fa4
   15c44:	08071063          	bnez	a4,15cc4 <_dtoa_r+0x4dc>
   15c48:	0001d737          	lui	a4,0x1d
   15c4c:	f4873587          	fld	fa1,-184(a4) # 1cf48 <mask+0x28>
   15c50:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15c54:	a2e69753          	flt.d	a4,fa3,fa4
   15c58:	40071ae3          	bnez	a4,1686c <_dtoa_r+0x1084>
   15c5c:	00100793          	li	a5,1
   15c60:	1ac7d4e3          	ble	a2,a5,16608 <_dtoa_r+0xe20>
   15c64:	0001d7b7          	lui	a5,0x1d
   15c68:	ffe6061b          	addiw	a2,a2,-2
   15c6c:	02061613          	slli	a2,a2,0x20
   15c70:	f507b607          	fld	fa2,-176(a5) # 1cf50 <mask+0x30>
   15c74:	00813783          	ld	a5,8(sp)
   15c78:	02065613          	srli	a2,a2,0x20
   15c7c:	00260613          	addi	a2,a2,2
   15c80:	00c78633          	add	a2,a5,a2
   15c84:	0140006f          	j	15c98 <_dtoa_r+0x4b0>
   15c88:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15c8c:	a2e69753          	flt.d	a4,fa3,fa4
   15c90:	3c071ee3          	bnez	a4,1686c <_dtoa_r+0x1084>
   15c94:	16960ae3          	beq	a2,s1,16608 <_dtoa_r+0xe20>
   15c98:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   15c9c:	12c77753          	fmul.d	fa4,fa4,fa2
   15ca0:	00148493          	addi	s1,s1,1
   15ca4:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   15ca8:	d20786d3          	fcvt.d.w	fa3,a5
   15cac:	0307879b          	addiw	a5,a5,48
   15cb0:	0ff7f793          	andi	a5,a5,255
   15cb4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   15cb8:	fef48fa3          	sb	a5,-1(s1)
   15cbc:	a2e79753          	flt.d	a4,fa5,fa4
   15cc0:	fc0704e3          	beqz	a4,15c88 <_dtoa_r+0x4a0>
   15cc4:	00068b93          	mv	s7,a3
   15cc8:	02013583          	ld	a1,32(sp)
   15ccc:	00040513          	mv	a0,s0
   15cd0:	001b8b9b          	addiw	s7,s7,1
   15cd4:	414010ef          	jal	ra,170e8 <_Bfree>
   15cd8:	00013783          	ld	a5,0(sp)
   15cdc:	00048023          	sb	zero,0(s1)
   15ce0:	0177a023          	sw	s7,0(a5)
   15ce4:	0c0b0ce3          	beqz	s6,165bc <_dtoa_r+0xdd4>
   15ce8:	009b3023          	sd	s1,0(s6)
   15cec:	00813503          	ld	a0,8(sp)
   15cf0:	bc5ff06f          	j	158b4 <_dtoa_r+0xcc>
   15cf4:	0001b537          	lui	a0,0x1b
   15cf8:	b5050513          	addi	a0,a0,-1200 # 1ab50 <zeroes.4137+0x90>
   15cfc:	c15ff06f          	j	15910 <_dtoa_r+0x128>
   15d00:	00cd1793          	slli	a5,s10,0xc
   15d04:	02c7d693          	srli	a3,a5,0x2c
   15d08:	3ff007b7          	lui	a5,0x3ff00
   15d0c:	00f6e7b3          	or	a5,a3,a5
   15d10:	020d1493          	slli	s1,s10,0x20
   15d14:	02079793          	slli	a5,a5,0x20
   15d18:	0204d493          	srli	s1,s1,0x20
   15d1c:	00f4e4b3          	or	s1,s1,a5
   15d20:	c018081b          	addiw	a6,a6,-1023
   15d24:	05812603          	lw	a2,88(sp)
   15d28:	00000913          	li	s2,0
   15d2c:	ca9ff06f          	j	159d4 <_dtoa_r+0x1ec>
   15d30:	0001b537          	lui	a0,0x1b
   15d34:	b3850513          	addi	a0,a0,-1224 # 1ab38 <zeroes.4137+0x78>
   15d38:	b7dff06f          	j	158b4 <_dtoa_r+0xcc>
   15d3c:	41b0083b          	negw	a6,s11
   15d40:	00000d93          	li	s11,0
   15d44:	d1dff06f          	j	15a60 <_dtoa_r+0x278>
   15d48:	06042423          	sw	zero,104(s0)
   15d4c:	00000593          	li	a1,0
   15d50:	00040513          	mv	a0,s0
   15d54:	03013c23          	sd	a6,56(sp)
   15d58:	2e4010ef          	jal	ra,1703c <_Balloc>
   15d5c:	03813803          	ld	a6,56(sp)
   15d60:	fff00a93          	li	s5,-1
   15d64:	00100793          	li	a5,1
   15d68:	00a13423          	sd	a0,8(sp)
   15d6c:	06a43023          	sd	a0,96(s0)
   15d70:	03512a23          	sw	s5,52(sp)
   15d74:	00000993          	li	s3,0
   15d78:	00000c93          	li	s9,0
   15d7c:	00f12823          	sw	a5,16(sp)
   15d80:	05c12783          	lw	a5,92(sp)
   15d84:	0e07ca63          	bltz	a5,15e78 <_dtoa_r+0x690>
   15d88:	00e00693          	li	a3,14
   15d8c:	0f76c663          	blt	a3,s7,15e78 <_dtoa_r+0x690>
   15d90:	0001b7b7          	lui	a5,0x1b
   15d94:	003b9693          	slli	a3,s7,0x3
   15d98:	83078793          	addi	a5,a5,-2000 # 1a830 <__mprec_tens>
   15d9c:	00f687b3          	add	a5,a3,a5
   15da0:	0007b687          	fld	fa3,0(a5)
   15da4:	5e0cc663          	bltz	s9,16390 <_dtoa_r+0xba8>
   15da8:	f20d0653          	fmv.d.x	fa2,s10
   15dac:	00813703          	ld	a4,8(sp)
   15db0:	22d69553          	fneg.d	fa0,fa3
   15db4:	1ad67753          	fdiv.d	fa4,fa2,fa3
   15db8:	00170493          	addi	s1,a4,1
   15dbc:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   15dc0:	d20787d3          	fcvt.d.w	fa5,a5
   15dc4:	0307869b          	addiw	a3,a5,48
   15dc8:	00d70023          	sb	a3,0(a4)
   15dcc:	00100713          	li	a4,1
   15dd0:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   15dd4:	2aea88e3          	beq	s5,a4,16884 <_dtoa_r+0x109c>
   15dd8:	0001d7b7          	lui	a5,0x1d
   15ddc:	f507b587          	fld	fa1,-176(a5) # 1cf50 <mask+0x30>
   15de0:	f2000653          	fmv.d.x	fa2,zero
   15de4:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   15de8:	a2c7a7d3          	feq.d	a5,fa5,fa2
   15dec:	ec079ee3          	bnez	a5,15cc8 <_dtoa_r+0x4e0>
   15df0:	ffea869b          	addiw	a3,s5,-2
   15df4:	02069693          	slli	a3,a3,0x20
   15df8:	00813783          	ld	a5,8(sp)
   15dfc:	0206d693          	srli	a3,a3,0x20
   15e00:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_gp+0xfffffffffcbe2932>
   15e04:	00d786b3          	add	a3,a5,a3
   15e08:	0100006f          	j	15e18 <_dtoa_r+0x630>
   15e0c:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   15e10:	a2c7a7d3          	feq.d	a5,fa5,fa2
   15e14:	ea079ae3          	bnez	a5,15cc8 <_dtoa_r+0x4e0>
   15e18:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   15e1c:	00148493          	addi	s1,s1,1
   15e20:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   15e24:	d2078753          	fcvt.d.w	fa4,a5
   15e28:	0307871b          	addiw	a4,a5,48
   15e2c:	fee48fa3          	sb	a4,-1(s1)
   15e30:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   15e34:	fcd49ce3          	bne	s1,a3,15e0c <_dtoa_r+0x624>
   15e38:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   15e3c:	a2f69753          	flt.d	a4,fa3,fa5
   15e40:	7c070863          	beqz	a4,16610 <_dtoa_r+0xe28>
   15e44:	fff6c783          	lbu	a5,-1(a3)
   15e48:	00068493          	mv	s1,a3
   15e4c:	03900693          	li	a3,57
   15e50:	0140006f          	j	15e64 <_dtoa_r+0x67c>
   15e54:	00813783          	ld	a5,8(sp)
   15e58:	02f70ce3          	beq	a4,a5,16690 <_dtoa_r+0xea8>
   15e5c:	fff74783          	lbu	a5,-1(a4)
   15e60:	00070493          	mv	s1,a4
   15e64:	fff48713          	addi	a4,s1,-1
   15e68:	fed786e3          	beq	a5,a3,15e54 <_dtoa_r+0x66c>
   15e6c:	0017879b          	addiw	a5,a5,1
   15e70:	00f70023          	sb	a5,0(a4)
   15e74:	e55ff06f          	j	15cc8 <_dtoa_r+0x4e0>
   15e78:	01012703          	lw	a4,16(sp)
   15e7c:	1a070c63          	beqz	a4,16034 <_dtoa_r+0x84c>
   15e80:	00100693          	li	a3,1
   15e84:	5536d863          	ble	s3,a3,163d4 <_dtoa_r+0xbec>
   15e88:	fffa869b          	addiw	a3,s5,-1
   15e8c:	72dc4c63          	blt	s8,a3,165c4 <_dtoa_r+0xddc>
   15e90:	40dc06bb          	subw	a3,s8,a3
   15e94:	00080493          	mv	s1,a6
   15e98:	000a8793          	mv	a5,s5
   15e9c:	120ac2e3          	bltz	s5,167c0 <_dtoa_r+0xfd8>
   15ea0:	00f8083b          	addw	a6,a6,a5
   15ea4:	00100593          	li	a1,1
   15ea8:	00040513          	mv	a0,s0
   15eac:	04d13423          	sd	a3,72(sp)
   15eb0:	05013023          	sd	a6,64(sp)
   15eb4:	03013c23          	sd	a6,56(sp)
   15eb8:	00fd8dbb          	addw	s11,s11,a5
   15ebc:	5b8010ef          	jal	ra,17474 <__i2b>
   15ec0:	04013803          	ld	a6,64(sp)
   15ec4:	04813683          	ld	a3,72(sp)
   15ec8:	00050a13          	mv	s4,a0
   15ecc:	00048e63          	beqz	s1,15ee8 <_dtoa_r+0x700>
   15ed0:	01b05c63          	blez	s11,15ee8 <_dtoa_r+0x700>
   15ed4:	00048793          	mv	a5,s1
   15ed8:	489dc463          	blt	s11,s1,16360 <_dtoa_r+0xb78>
   15edc:	40f8083b          	subw	a6,a6,a5
   15ee0:	40f484bb          	subw	s1,s1,a5
   15ee4:	40fd8dbb          	subw	s11,s11,a5
   15ee8:	02013903          	ld	s2,32(sp)
   15eec:	07805e63          	blez	s8,15f68 <_dtoa_r+0x780>
   15ef0:	01012783          	lw	a5,16(sp)
   15ef4:	6a078463          	beqz	a5,1659c <_dtoa_r+0xdb4>
   15ef8:	04068a63          	beqz	a3,15f4c <_dtoa_r+0x764>
   15efc:	00068613          	mv	a2,a3
   15f00:	000a0593          	mv	a1,s4
   15f04:	00040513          	mv	a0,s0
   15f08:	05013023          	sd	a6,64(sp)
   15f0c:	02d13c23          	sd	a3,56(sp)
   15f10:	78c010ef          	jal	ra,1769c <__pow5mult>
   15f14:	02013603          	ld	a2,32(sp)
   15f18:	00050593          	mv	a1,a0
   15f1c:	00050a13          	mv	s4,a0
   15f20:	00040513          	mv	a0,s0
   15f24:	584010ef          	jal	ra,174a8 <__multiply>
   15f28:	03813683          	ld	a3,56(sp)
   15f2c:	02013583          	ld	a1,32(sp)
   15f30:	00050913          	mv	s2,a0
   15f34:	00040513          	mv	a0,s0
   15f38:	40dc0c3b          	subw	s8,s8,a3
   15f3c:	1ac010ef          	jal	ra,170e8 <_Bfree>
   15f40:	04013803          	ld	a6,64(sp)
   15f44:	020c0263          	beqz	s8,15f68 <_dtoa_r+0x780>
   15f48:	03213023          	sd	s2,32(sp)
   15f4c:	02013583          	ld	a1,32(sp)
   15f50:	000c0613          	mv	a2,s8
   15f54:	00040513          	mv	a0,s0
   15f58:	03013c23          	sd	a6,56(sp)
   15f5c:	740010ef          	jal	ra,1769c <__pow5mult>
   15f60:	03813803          	ld	a6,56(sp)
   15f64:	00050913          	mv	s2,a0
   15f68:	00100593          	li	a1,1
   15f6c:	00040513          	mv	a0,s0
   15f70:	03013023          	sd	a6,32(sp)
   15f74:	500010ef          	jal	ra,17474 <__i2b>
   15f78:	02812783          	lw	a5,40(sp)
   15f7c:	00050c13          	mv	s8,a0
   15f80:	02013803          	ld	a6,32(sp)
   15f84:	0c078c63          	beqz	a5,1605c <_dtoa_r+0x874>
   15f88:	00078613          	mv	a2,a5
   15f8c:	00050593          	mv	a1,a0
   15f90:	00040513          	mv	a0,s0
   15f94:	708010ef          	jal	ra,1769c <__pow5mult>
   15f98:	00100793          	li	a5,1
   15f9c:	00050c13          	mv	s8,a0
   15fa0:	02013803          	ld	a6,32(sp)
   15fa4:	3d37c263          	blt	a5,s3,16368 <_dtoa_r+0xb80>
   15fa8:	00cd1793          	slli	a5,s10,0xc
   15fac:	3a079e63          	bnez	a5,16368 <_dtoa_r+0xb80>
   15fb0:	420d5693          	srai	a3,s10,0x20
   15fb4:	7ff007b7          	lui	a5,0x7ff00
   15fb8:	00f6f7b3          	and	a5,a3,a5
   15fbc:	02012023          	sw	zero,32(sp)
   15fc0:	00078a63          	beqz	a5,15fd4 <_dtoa_r+0x7ec>
   15fc4:	00100793          	li	a5,1
   15fc8:	0018081b          	addiw	a6,a6,1
   15fcc:	001d8d9b          	addiw	s11,s11,1
   15fd0:	02f12023          	sw	a5,32(sp)
   15fd4:	02812783          	lw	a5,40(sp)
   15fd8:	00100513          	li	a0,1
   15fdc:	08078863          	beqz	a5,1606c <_dtoa_r+0x884>
   15fe0:	014c2783          	lw	a5,20(s8)
   15fe4:	03013423          	sd	a6,40(sp)
   15fe8:	fff7879b          	addiw	a5,a5,-1
   15fec:	00478793          	addi	a5,a5,4 # 7ff00004 <_gp+0x7fee2934>
   15ff0:	00279793          	slli	a5,a5,0x2
   15ff4:	00fc07b3          	add	a5,s8,a5
   15ff8:	0087a503          	lw	a0,8(a5)
   15ffc:	34c010ef          	jal	ra,17348 <__hi0bits>
   16000:	02000793          	li	a5,32
   16004:	40a7853b          	subw	a0,a5,a0
   16008:	02813803          	ld	a6,40(sp)
   1600c:	0600006f          	j	1606c <_dtoa_r+0x884>
   16010:	d20b8753          	fcvt.d.w	fa4,s7
   16014:	a2e7a7d3          	feq.d	a5,fa5,fa4
   16018:	0017b793          	seqz	a5,a5
   1601c:	40fb8bbb          	subw	s7,s7,a5
   16020:	9f9ff06f          	j	15a18 <_dtoa_r+0x230>
   16024:	4178083b          	subw	a6,a6,s7
   16028:	41700c3b          	negw	s8,s7
   1602c:	02012423          	sw	zero,40(sp)
   16030:	a41ff06f          	j	15a70 <_dtoa_r+0x288>
   16034:	000c0693          	mv	a3,s8
   16038:	00080493          	mv	s1,a6
   1603c:	00000a13          	li	s4,0
   16040:	e8dff06f          	j	15ecc <_dtoa_r+0x6e4>
   16044:	000d049b          	sext.w	s1,s10
   16048:	40d787bb          	subw	a5,a5,a3
   1604c:	00f494bb          	sllw	s1,s1,a5
   16050:	959ff06f          	j	159a8 <_dtoa_r+0x1c0>
   16054:	02012823          	sw	zero,48(sp)
   16058:	9f9ff06f          	j	15a50 <_dtoa_r+0x268>
   1605c:	00100793          	li	a5,1
   16060:	0737d4e3          	ble	s3,a5,168c8 <_dtoa_r+0x10e0>
   16064:	02012023          	sw	zero,32(sp)
   16068:	00078513          	mv	a0,a5
   1606c:	01b507bb          	addw	a5,a0,s11
   16070:	01f7f793          	andi	a5,a5,31
   16074:	1a078663          	beqz	a5,16220 <_dtoa_r+0xa38>
   16078:	02000693          	li	a3,32
   1607c:	40f686bb          	subw	a3,a3,a5
   16080:	00400613          	li	a2,4
   16084:	04d658e3          	ble	a3,a2,168d4 <_dtoa_r+0x10ec>
   16088:	01c00693          	li	a3,28
   1608c:	40f687bb          	subw	a5,a3,a5
   16090:	00f8083b          	addw	a6,a6,a5
   16094:	00f484bb          	addw	s1,s1,a5
   16098:	00fd8dbb          	addw	s11,s11,a5
   1609c:	01005c63          	blez	a6,160b4 <_dtoa_r+0x8cc>
   160a0:	00090593          	mv	a1,s2
   160a4:	00080613          	mv	a2,a6
   160a8:	00040513          	mv	a0,s0
   160ac:	728010ef          	jal	ra,177d4 <__lshift>
   160b0:	00050913          	mv	s2,a0
   160b4:	01b05c63          	blez	s11,160cc <_dtoa_r+0x8e4>
   160b8:	000c0593          	mv	a1,s8
   160bc:	000d8613          	mv	a2,s11
   160c0:	00040513          	mv	a0,s0
   160c4:	710010ef          	jal	ra,177d4 <__lshift>
   160c8:	00050c13          	mv	s8,a0
   160cc:	03012783          	lw	a5,48(sp)
   160d0:	22079663          	bnez	a5,162fc <_dtoa_r+0xb14>
   160d4:	3f505e63          	blez	s5,164d0 <_dtoa_r+0xce8>
   160d8:	01012783          	lw	a5,16(sp)
   160dc:	14078c63          	beqz	a5,16234 <_dtoa_r+0xa4c>
   160e0:	00905c63          	blez	s1,160f8 <_dtoa_r+0x910>
   160e4:	000a0593          	mv	a1,s4
   160e8:	00048613          	mv	a2,s1
   160ec:	00040513          	mv	a0,s0
   160f0:	6e4010ef          	jal	ra,177d4 <__lshift>
   160f4:	00050a13          	mv	s4,a0
   160f8:	02012783          	lw	a5,32(sp)
   160fc:	000a0d93          	mv	s11,s4
   16100:	5a079463          	bnez	a5,166a8 <_dtoa_r+0xec0>
   16104:	fffa849b          	addiw	s1,s5,-1
   16108:	00813783          	ld	a5,8(sp)
   1610c:	02049493          	slli	s1,s1,0x20
   16110:	0204d493          	srli	s1,s1,0x20
   16114:	00148493          	addi	s1,s1,1
   16118:	009784b3          	add	s1,a5,s1
   1611c:	00078c93          	mv	s9,a5
   16120:	001d7793          	andi	a5,s10,1
   16124:	00f13823          	sd	a5,16(sp)
   16128:	000c0593          	mv	a1,s8
   1612c:	00090513          	mv	a0,s2
   16130:	cccff0ef          	jal	ra,155fc <quorem>
   16134:	00050d13          	mv	s10,a0
   16138:	02a12823          	sw	a0,48(sp)
   1613c:	000a0593          	mv	a1,s4
   16140:	00090513          	mv	a0,s2
   16144:	7f0010ef          	jal	ra,17934 <__mcmp>
   16148:	00050a93          	mv	s5,a0
   1614c:	000d8613          	mv	a2,s11
   16150:	000c0593          	mv	a1,s8
   16154:	00040513          	mv	a0,s0
   16158:	03d010ef          	jal	ra,17994 <__mdiff>
   1615c:	01052683          	lw	a3,16(a0)
   16160:	00050793          	mv	a5,a0
   16164:	030d0d1b          	addiw	s10,s10,48
   16168:	00100713          	li	a4,1
   1616c:	00069e63          	bnez	a3,16188 <_dtoa_r+0x9a0>
   16170:	00050593          	mv	a1,a0
   16174:	02a13023          	sd	a0,32(sp)
   16178:	00090513          	mv	a0,s2
   1617c:	7b8010ef          	jal	ra,17934 <__mcmp>
   16180:	02013783          	ld	a5,32(sp)
   16184:	00050713          	mv	a4,a0
   16188:	00078593          	mv	a1,a5
   1618c:	00040513          	mv	a0,s0
   16190:	02e13023          	sd	a4,32(sp)
   16194:	755000ef          	jal	ra,170e8 <_Bfree>
   16198:	02013703          	ld	a4,32(sp)
   1619c:	013767b3          	or	a5,a4,s3
   161a0:	00079663          	bnez	a5,161ac <_dtoa_r+0x9c4>
   161a4:	01012783          	lw	a5,16(sp)
   161a8:	24078063          	beqz	a5,163e8 <_dtoa_r+0xc00>
   161ac:	260ac463          	bltz	s5,16414 <_dtoa_r+0xc2c>
   161b0:	013aeab3          	or	s5,s5,s3
   161b4:	000a9663          	bnez	s5,161c0 <_dtoa_r+0x9d8>
   161b8:	01012783          	lw	a5,16(sp)
   161bc:	24078c63          	beqz	a5,16414 <_dtoa_r+0xc2c>
   161c0:	5ee04263          	bgtz	a4,167a4 <_dtoa_r+0xfbc>
   161c4:	001c8c93          	addi	s9,s9,1
   161c8:	ffac8fa3          	sb	s10,-1(s9)
   161cc:	5f948463          	beq	s1,s9,167b4 <_dtoa_r+0xfcc>
   161d0:	00090593          	mv	a1,s2
   161d4:	00000693          	li	a3,0
   161d8:	00a00613          	li	a2,10
   161dc:	00040513          	mv	a0,s0
   161e0:	72d000ef          	jal	ra,1710c <__multadd>
   161e4:	00050913          	mv	s2,a0
   161e8:	00000693          	li	a3,0
   161ec:	00a00613          	li	a2,10
   161f0:	000a0593          	mv	a1,s4
   161f4:	00040513          	mv	a0,s0
   161f8:	27ba0463          	beq	s4,s11,16460 <_dtoa_r+0xc78>
   161fc:	711000ef          	jal	ra,1710c <__multadd>
   16200:	000d8593          	mv	a1,s11
   16204:	00050a13          	mv	s4,a0
   16208:	00000693          	li	a3,0
   1620c:	00a00613          	li	a2,10
   16210:	00040513          	mv	a0,s0
   16214:	6f9000ef          	jal	ra,1710c <__multadd>
   16218:	00050d93          	mv	s11,a0
   1621c:	f0dff06f          	j	16128 <_dtoa_r+0x940>
   16220:	01c00793          	li	a5,28
   16224:	00f8083b          	addw	a6,a6,a5
   16228:	00f484bb          	addw	s1,s1,a5
   1622c:	00fd8dbb          	addw	s11,s11,a5
   16230:	e6dff06f          	j	1609c <_dtoa_r+0x8b4>
   16234:	00813483          	ld	s1,8(sp)
   16238:	00100993          	li	s3,1
   1623c:	0100006f          	j	1624c <_dtoa_r+0xa64>
   16240:	6cd000ef          	jal	ra,1710c <__multadd>
   16244:	00050913          	mv	s2,a0
   16248:	0019899b          	addiw	s3,s3,1
   1624c:	000c0593          	mv	a1,s8
   16250:	00090513          	mv	a0,s2
   16254:	ba8ff0ef          	jal	ra,155fc <quorem>
   16258:	03050d1b          	addiw	s10,a0,48
   1625c:	00148493          	addi	s1,s1,1
   16260:	ffa48fa3          	sb	s10,-1(s1)
   16264:	00000693          	li	a3,0
   16268:	00a00613          	li	a2,10
   1626c:	00090593          	mv	a1,s2
   16270:	00040513          	mv	a0,s0
   16274:	fd59c6e3          	blt	s3,s5,16240 <_dtoa_r+0xa58>
   16278:	00000993          	li	s3,0
   1627c:	00090593          	mv	a1,s2
   16280:	00100613          	li	a2,1
   16284:	00040513          	mv	a0,s0
   16288:	54c010ef          	jal	ra,177d4 <__lshift>
   1628c:	000c0593          	mv	a1,s8
   16290:	02a13023          	sd	a0,32(sp)
   16294:	6a0010ef          	jal	ra,17934 <__mcmp>
   16298:	34a05463          	blez	a0,165e0 <_dtoa_r+0xdf8>
   1629c:	fff4c703          	lbu	a4,-1(s1)
   162a0:	03900693          	li	a3,57
   162a4:	0140006f          	j	162b8 <_dtoa_r+0xad0>
   162a8:	00813703          	ld	a4,8(sp)
   162ac:	26e78a63          	beq	a5,a4,16520 <_dtoa_r+0xd38>
   162b0:	fff7c703          	lbu	a4,-1(a5)
   162b4:	00078493          	mv	s1,a5
   162b8:	fff48793          	addi	a5,s1,-1
   162bc:	fed706e3          	beq	a4,a3,162a8 <_dtoa_r+0xac0>
   162c0:	0017071b          	addiw	a4,a4,1
   162c4:	00e78023          	sb	a4,0(a5)
   162c8:	000c0593          	mv	a1,s8
   162cc:	00040513          	mv	a0,s0
   162d0:	619000ef          	jal	ra,170e8 <_Bfree>
   162d4:	9e0a0ae3          	beqz	s4,15cc8 <_dtoa_r+0x4e0>
   162d8:	00098a63          	beqz	s3,162ec <_dtoa_r+0xb04>
   162dc:	01498863          	beq	s3,s4,162ec <_dtoa_r+0xb04>
   162e0:	00098593          	mv	a1,s3
   162e4:	00040513          	mv	a0,s0
   162e8:	601000ef          	jal	ra,170e8 <_Bfree>
   162ec:	000a0593          	mv	a1,s4
   162f0:	00040513          	mv	a0,s0
   162f4:	5f5000ef          	jal	ra,170e8 <_Bfree>
   162f8:	9d1ff06f          	j	15cc8 <_dtoa_r+0x4e0>
   162fc:	000c0593          	mv	a1,s8
   16300:	00090513          	mv	a0,s2
   16304:	630010ef          	jal	ra,17934 <__mcmp>
   16308:	dc0556e3          	bgez	a0,160d4 <_dtoa_r+0x8ec>
   1630c:	00090593          	mv	a1,s2
   16310:	00000693          	li	a3,0
   16314:	00a00613          	li	a2,10
   16318:	00040513          	mv	a0,s0
   1631c:	5f1000ef          	jal	ra,1710c <__multadd>
   16320:	01012783          	lw	a5,16(sp)
   16324:	00050913          	mv	s2,a0
   16328:	fffb8b9b          	addiw	s7,s7,-1
   1632c:	56079063          	bnez	a5,1688c <_dtoa_r+0x10a4>
   16330:	03412783          	lw	a5,52(sp)
   16334:	00078a93          	mv	s5,a5
   16338:	eef04ee3          	bgtz	a5,16234 <_dtoa_r+0xa4c>
   1633c:	00200793          	li	a5,2
   16340:	5937c063          	blt	a5,s3,168c0 <_dtoa_r+0x10d8>
   16344:	000c0593          	mv	a1,s8
   16348:	ab4ff0ef          	jal	ra,155fc <quorem>
   1634c:	00813783          	ld	a5,8(sp)
   16350:	03050d1b          	addiw	s10,a0,48
   16354:	00178493          	addi	s1,a5,1
   16358:	ffa48fa3          	sb	s10,-1(s1)
   1635c:	f1dff06f          	j	16278 <_dtoa_r+0xa90>
   16360:	000d8793          	mv	a5,s11
   16364:	b79ff06f          	j	15edc <_dtoa_r+0x6f4>
   16368:	02012023          	sw	zero,32(sp)
   1636c:	c75ff06f          	j	15fe0 <_dtoa_r+0x7f8>
   16370:	00100793          	li	a5,1
   16374:	00f12823          	sw	a5,16(sp)
   16378:	0f905c63          	blez	s9,16470 <_dtoa_r+0xc88>
   1637c:	000c8513          	mv	a0,s9
   16380:	000c8493          	mv	s1,s9
   16384:	03912a23          	sw	s9,52(sp)
   16388:	000c8a93          	mv	s5,s9
   1638c:	f3cff06f          	j	15ac8 <_dtoa_r+0x2e0>
   16390:	a1504ce3          	bgtz	s5,15da8 <_dtoa_r+0x5c0>
   16394:	1e0a9e63          	bnez	s5,16590 <_dtoa_r+0xda8>
   16398:	0001d7b7          	lui	a5,0x1d
   1639c:	f607b787          	fld	fa5,-160(a5) # 1cf60 <mask+0x40>
   163a0:	00000c13          	li	s8,0
   163a4:	00000a13          	li	s4,0
   163a8:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   163ac:	f20d07d3          	fmv.d.x	fa5,s10
   163b0:	a2d78753          	fle.d	a4,fa5,fa3
   163b4:	14070a63          	beqz	a4,16508 <_dtoa_r+0xd20>
   163b8:	00813483          	ld	s1,8(sp)
   163bc:	fffccb93          	not	s7,s9
   163c0:	000c0593          	mv	a1,s8
   163c4:	00040513          	mv	a0,s0
   163c8:	521000ef          	jal	ra,170e8 <_Bfree>
   163cc:	8e0a0ee3          	beqz	s4,15cc8 <_dtoa_r+0x4e0>
   163d0:	f1dff06f          	j	162ec <_dtoa_r+0xb04>
   163d4:	3e090c63          	beqz	s2,167cc <_dtoa_r+0xfe4>
   163d8:	4337879b          	addiw	a5,a5,1075
   163dc:	000c0693          	mv	a3,s8
   163e0:	00080493          	mv	s1,a6
   163e4:	abdff06f          	j	15ea0 <_dtoa_r+0x6b8>
   163e8:	03900793          	li	a5,57
   163ec:	04fd0a63          	beq	s10,a5,16440 <_dtoa_r+0xc58>
   163f0:	01505663          	blez	s5,163fc <_dtoa_r+0xc14>
   163f4:	03012783          	lw	a5,48(sp)
   163f8:	03178d1b          	addiw	s10,a5,49
   163fc:	000a0993          	mv	s3,s4
   16400:	001c8493          	addi	s1,s9,1
   16404:	01ac8023          	sb	s10,0(s9)
   16408:	000d8a13          	mv	s4,s11
   1640c:	03213023          	sd	s2,32(sp)
   16410:	eb9ff06f          	j	162c8 <_dtoa_r+0xae0>
   16414:	fee054e3          	blez	a4,163fc <_dtoa_r+0xc14>
   16418:	00090593          	mv	a1,s2
   1641c:	00100613          	li	a2,1
   16420:	00040513          	mv	a0,s0
   16424:	3b0010ef          	jal	ra,177d4 <__lshift>
   16428:	000c0593          	mv	a1,s8
   1642c:	00050913          	mv	s2,a0
   16430:	504010ef          	jal	ra,17934 <__mcmp>
   16434:	44a05063          	blez	a0,16874 <_dtoa_r+0x108c>
   16438:	03900793          	li	a5,57
   1643c:	fafd1ce3          	bne	s10,a5,163f4 <_dtoa_r+0xc0c>
   16440:	03900793          	li	a5,57
   16444:	000a0993          	mv	s3,s4
   16448:	001c8493          	addi	s1,s9,1
   1644c:	00fc8023          	sb	a5,0(s9)
   16450:	000d8a13          	mv	s4,s11
   16454:	03213023          	sd	s2,32(sp)
   16458:	03900713          	li	a4,57
   1645c:	e45ff06f          	j	162a0 <_dtoa_r+0xab8>
   16460:	4ad000ef          	jal	ra,1710c <__multadd>
   16464:	00050a13          	mv	s4,a0
   16468:	00050d93          	mv	s11,a0
   1646c:	cbdff06f          	j	16128 <_dtoa_r+0x940>
   16470:	00100493          	li	s1,1
   16474:	02912a23          	sw	s1,52(sp)
   16478:	00048a93          	mv	s5,s1
   1647c:	00048c93          	mv	s9,s1
   16480:	06042423          	sw	zero,104(s0)
   16484:	00000593          	li	a1,0
   16488:	e74ff06f          	j	15afc <_dtoa_r+0x314>
   1648c:	00012823          	sw	zero,16(sp)
   16490:	00200793          	li	a5,2
   16494:	eef982e3          	beq	s3,a5,16378 <_dtoa_r+0xb90>
   16498:	06042423          	sw	zero,104(s0)
   1649c:	00000593          	li	a1,0
   164a0:	00040513          	mv	a0,s0
   164a4:	03013c23          	sd	a6,56(sp)
   164a8:	395000ef          	jal	ra,1703c <_Balloc>
   164ac:	fff00a93          	li	s5,-1
   164b0:	00100793          	li	a5,1
   164b4:	00a13423          	sd	a0,8(sp)
   164b8:	06a43023          	sd	a0,96(s0)
   164bc:	03512a23          	sw	s5,52(sp)
   164c0:	00000c93          	li	s9,0
   164c4:	00f12823          	sw	a5,16(sp)
   164c8:	03813803          	ld	a6,56(sp)
   164cc:	8b5ff06f          	j	15d80 <_dtoa_r+0x598>
   164d0:	00200793          	li	a5,2
   164d4:	c137d2e3          	ble	s3,a5,160d8 <_dtoa_r+0x8f0>
   164d8:	300a9663          	bnez	s5,167e4 <_dtoa_r+0xffc>
   164dc:	000c0593          	mv	a1,s8
   164e0:	00000693          	li	a3,0
   164e4:	00500613          	li	a2,5
   164e8:	00040513          	mv	a0,s0
   164ec:	421000ef          	jal	ra,1710c <__multadd>
   164f0:	00050593          	mv	a1,a0
   164f4:	00050c13          	mv	s8,a0
   164f8:	00090513          	mv	a0,s2
   164fc:	438010ef          	jal	ra,17934 <__mcmp>
   16500:	03213023          	sd	s2,32(sp)
   16504:	eaa05ae3          	blez	a0,163b8 <_dtoa_r+0xbd0>
   16508:	00813703          	ld	a4,8(sp)
   1650c:	03100793          	li	a5,49
   16510:	001b8b9b          	addiw	s7,s7,1
   16514:	00170493          	addi	s1,a4,1
   16518:	00f70023          	sb	a5,0(a4)
   1651c:	ea5ff06f          	j	163c0 <_dtoa_r+0xbd8>
   16520:	00813703          	ld	a4,8(sp)
   16524:	03100793          	li	a5,49
   16528:	001b8b9b          	addiw	s7,s7,1
   1652c:	00f70023          	sb	a5,0(a4)
   16530:	d99ff06f          	j	162c8 <_dtoa_r+0xae0>
   16534:	00012823          	sw	zero,16(sp)
   16538:	d78ff06f          	j	15ab0 <_dtoa_r+0x2c8>
   1653c:	0001d7b7          	lui	a5,0x1d
   16540:	d20706d3          	fcvt.d.w	fa3,a4
   16544:	f587b707          	fld	fa4,-168(a5) # 1cf58 <mask+0x38>
   16548:	fcc006b7          	lui	a3,0xfcc00
   1654c:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   16550:	e2070753          	fmv.x.d	a4,fa4
   16554:	42075793          	srai	a5,a4,0x20
   16558:	00d787bb          	addw	a5,a5,a3
   1655c:	02071713          	slli	a4,a4,0x20
   16560:	02079793          	slli	a5,a5,0x20
   16564:	02075713          	srli	a4,a4,0x20
   16568:	00f76733          	or	a4,a4,a5
   1656c:	0001d7b7          	lui	a5,0x1d
   16570:	f607b707          	fld	fa4,-160(a5) # 1cf60 <mask+0x40>
   16574:	f20706d3          	fmv.d.x	fa3,a4
   16578:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   1657c:	a2f697d3          	flt.d	a5,fa3,fa5
   16580:	16079463          	bnez	a5,166e8 <_dtoa_r+0xf00>
   16584:	22d69753          	fneg.d	fa4,fa3
   16588:	a2e797d3          	flt.d	a5,fa5,fa4
   1658c:	06078e63          	beqz	a5,16608 <_dtoa_r+0xe20>
   16590:	00000c13          	li	s8,0
   16594:	00000a13          	li	s4,0
   16598:	e21ff06f          	j	163b8 <_dtoa_r+0xbd0>
   1659c:	00090593          	mv	a1,s2
   165a0:	000c0613          	mv	a2,s8
   165a4:	00040513          	mv	a0,s0
   165a8:	03013023          	sd	a6,32(sp)
   165ac:	0f0010ef          	jal	ra,1769c <__pow5mult>
   165b0:	00050913          	mv	s2,a0
   165b4:	02013803          	ld	a6,32(sp)
   165b8:	9b1ff06f          	j	15f68 <_dtoa_r+0x780>
   165bc:	00813503          	ld	a0,8(sp)
   165c0:	af4ff06f          	j	158b4 <_dtoa_r+0xcc>
   165c4:	02812783          	lw	a5,40(sp)
   165c8:	41868c3b          	subw	s8,a3,s8
   165cc:	018787bb          	addw	a5,a5,s8
   165d0:	02f12423          	sw	a5,40(sp)
   165d4:	00068c13          	mv	s8,a3
   165d8:	00000693          	li	a3,0
   165dc:	8b9ff06f          	j	15e94 <_dtoa_r+0x6ac>
   165e0:	00051663          	bnez	a0,165ec <_dtoa_r+0xe04>
   165e4:	001d7d13          	andi	s10,s10,1
   165e8:	ca0d1ae3          	bnez	s10,1629c <_dtoa_r+0xab4>
   165ec:	03000693          	li	a3,48
   165f0:	0080006f          	j	165f8 <_dtoa_r+0xe10>
   165f4:	00070493          	mv	s1,a4
   165f8:	fff4c783          	lbu	a5,-1(s1)
   165fc:	fff48713          	addi	a4,s1,-1
   16600:	fed78ae3          	beq	a5,a3,165f4 <_dtoa_r+0xe0c>
   16604:	cc5ff06f          	j	162c8 <_dtoa_r+0xae0>
   16608:	03813d03          	ld	s10,56(sp)
   1660c:	f74ff06f          	j	15d80 <_dtoa_r+0x598>
   16610:	a2f6a753          	feq.d	a4,fa3,fa5
   16614:	00068493          	mv	s1,a3
   16618:	ea070863          	beqz	a4,15cc8 <_dtoa_r+0x4e0>
   1661c:	0017f793          	andi	a5,a5,1
   16620:	ea078463          	beqz	a5,15cc8 <_dtoa_r+0x4e0>
   16624:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_gp+0xfffffffffcbe292f>
   16628:	825ff06f          	j	15e4c <_dtoa_r+0x664>
   1662c:	417007bb          	negw	a5,s7
   16630:	03813787          	fld	fa5,56(sp)
   16634:	00200713          	li	a4,2
   16638:	d6078063          	beqz	a5,15b98 <_dtoa_r+0x3b0>
   1663c:	00f7f693          	andi	a3,a5,15
   16640:	0001b637          	lui	a2,0x1b
   16644:	00369693          	slli	a3,a3,0x3
   16648:	83060613          	addi	a2,a2,-2000 # 1a830 <__mprec_tens>
   1664c:	00c686b3          	add	a3,a3,a2
   16650:	0006b787          	fld	fa5,0(a3)
   16654:	03813707          	fld	fa4,56(sp)
   16658:	4047d79b          	sraiw	a5,a5,0x4
   1665c:	12f777d3          	fmul.d	fa5,fa4,fa5
   16660:	d2078c63          	beqz	a5,15b98 <_dtoa_r+0x3b0>
   16664:	0001b6b7          	lui	a3,0x1b
   16668:	92068693          	addi	a3,a3,-1760 # 1a920 <__mprec_bigtens>
   1666c:	0017f613          	andi	a2,a5,1
   16670:	4017d79b          	sraiw	a5,a5,0x1
   16674:	00060863          	beqz	a2,16684 <_dtoa_r+0xe9c>
   16678:	0006b707          	fld	fa4,0(a3)
   1667c:	0017071b          	addiw	a4,a4,1
   16680:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   16684:	00868693          	addi	a3,a3,8
   16688:	fe0792e3          	bnez	a5,1666c <_dtoa_r+0xe84>
   1668c:	d0cff06f          	j	15b98 <_dtoa_r+0x3b0>
   16690:	00813683          	ld	a3,8(sp)
   16694:	03000793          	li	a5,48
   16698:	001b8b9b          	addiw	s7,s7,1
   1669c:	00f68023          	sb	a5,0(a3)
   166a0:	fff4c783          	lbu	a5,-1(s1)
   166a4:	fc8ff06f          	j	15e6c <_dtoa_r+0x684>
   166a8:	008a2583          	lw	a1,8(s4)
   166ac:	00040513          	mv	a0,s0
   166b0:	18d000ef          	jal	ra,1703c <_Balloc>
   166b4:	014a2603          	lw	a2,20(s4)
   166b8:	00050493          	mv	s1,a0
   166bc:	010a0593          	addi	a1,s4,16
   166c0:	00260613          	addi	a2,a2,2
   166c4:	00261613          	slli	a2,a2,0x2
   166c8:	01050513          	addi	a0,a0,16
   166cc:	9a4fc0ef          	jal	ra,12870 <memcpy>
   166d0:	00100613          	li	a2,1
   166d4:	00048593          	mv	a1,s1
   166d8:	00040513          	mv	a0,s0
   166dc:	0f8010ef          	jal	ra,177d4 <__lshift>
   166e0:	00050d93          	mv	s11,a0
   166e4:	a21ff06f          	j	16104 <_dtoa_r+0x91c>
   166e8:	00000c13          	li	s8,0
   166ec:	00000a13          	li	s4,0
   166f0:	e19ff06f          	j	16508 <_dtoa_r+0xd20>
   166f4:	fff6079b          	addiw	a5,a2,-1
   166f8:	0001b537          	lui	a0,0x1b
   166fc:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   16700:	00379793          	slli	a5,a5,0x3
   16704:	83050513          	addi	a0,a0,-2000 # 1a830 <__mprec_tens>
   16708:	00a787b3          	add	a5,a5,a0
   1670c:	0007b707          	fld	fa4,0(a5)
   16710:	00813783          	ld	a5,8(sp)
   16714:	d20586d3          	fcvt.d.w	fa3,a1
   16718:	f2070653          	fmv.d.x	fa2,a4
   1671c:	0305859b          	addiw	a1,a1,48
   16720:	00b78023          	sb	a1,0(a5)
   16724:	00178493          	addi	s1,a5,1
   16728:	00100793          	li	a5,1
   1672c:	12c77653          	fmul.d	fa2,fa4,fa2
   16730:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   16734:	04f60863          	beq	a2,a5,16784 <_dtoa_r+0xf9c>
   16738:	ffe6061b          	addiw	a2,a2,-2
   1673c:	0001d7b7          	lui	a5,0x1d
   16740:	02061593          	slli	a1,a2,0x20
   16744:	f507b687          	fld	fa3,-176(a5) # 1cf50 <mask+0x30>
   16748:	00813783          	ld	a5,8(sp)
   1674c:	0205d593          	srli	a1,a1,0x20
   16750:	00258513          	addi	a0,a1,2
   16754:	00a78533          	add	a0,a5,a0
   16758:	00048613          	mv	a2,s1
   1675c:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   16760:	00160613          	addi	a2,a2,1
   16764:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   16768:	d2078753          	fcvt.d.w	fa4,a5
   1676c:	0307879b          	addiw	a5,a5,48
   16770:	fef60fa3          	sb	a5,-1(a2)
   16774:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   16778:	fea612e3          	bne	a2,a0,1675c <_dtoa_r+0xf74>
   1677c:	00158593          	addi	a1,a1,1
   16780:	00b484b3          	add	s1,s1,a1
   16784:	0001d7b7          	lui	a5,0x1d
   16788:	f687b707          	fld	fa4,-152(a5) # 1cf68 <mask+0x48>
   1678c:	02e676d3          	fadd.d	fa3,fa2,fa4
   16790:	a2f697d3          	flt.d	a5,fa3,fa5
   16794:	0a078663          	beqz	a5,16840 <_dtoa_r+0x1058>
   16798:	fff4c783          	lbu	a5,-1(s1)
   1679c:	00068b93          	mv	s7,a3
   167a0:	eacff06f          	j	15e4c <_dtoa_r+0x664>
   167a4:	03900793          	li	a5,57
   167a8:	c8fd0ce3          	beq	s10,a5,16440 <_dtoa_r+0xc58>
   167ac:	001d0d1b          	addiw	s10,s10,1
   167b0:	c4dff06f          	j	163fc <_dtoa_r+0xc14>
   167b4:	000a0993          	mv	s3,s4
   167b8:	000d8a13          	mv	s4,s11
   167bc:	ac1ff06f          	j	1627c <_dtoa_r+0xa94>
   167c0:	415804bb          	subw	s1,a6,s5
   167c4:	00000793          	li	a5,0
   167c8:	ed8ff06f          	j	15ea0 <_dtoa_r+0x6b8>
   167cc:	05812603          	lw	a2,88(sp)
   167d0:	03600793          	li	a5,54
   167d4:	000c0693          	mv	a3,s8
   167d8:	40c787bb          	subw	a5,a5,a2
   167dc:	00080493          	mv	s1,a6
   167e0:	ec0ff06f          	j	15ea0 <_dtoa_r+0x6b8>
   167e4:	03213023          	sd	s2,32(sp)
   167e8:	bd1ff06f          	j	163b8 <_dtoa_r+0xbd0>
   167ec:	d40a88e3          	beqz	s5,1653c <_dtoa_r+0xd54>
   167f0:	03412603          	lw	a2,52(sp)
   167f4:	e0c05ae3          	blez	a2,16608 <_dtoa_r+0xe20>
   167f8:	0001d7b7          	lui	a5,0x1d
   167fc:	f507b707          	fld	fa4,-176(a5) # 1cf50 <mask+0x30>
   16800:	0017071b          	addiw	a4,a4,1
   16804:	0001d7b7          	lui	a5,0x1d
   16808:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1680c:	d20706d3          	fcvt.d.w	fa3,a4
   16810:	f587b707          	fld	fa4,-168(a5) # 1cf58 <mask+0x38>
   16814:	fcc005b7          	lui	a1,0xfcc00
   16818:	fffb869b          	addiw	a3,s7,-1
   1681c:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   16820:	e2070753          	fmv.x.d	a4,fa4
   16824:	42075793          	srai	a5,a4,0x20
   16828:	00b787bb          	addw	a5,a5,a1
   1682c:	02071713          	slli	a4,a4,0x20
   16830:	02079793          	slli	a5,a5,0x20
   16834:	02075713          	srli	a4,a4,0x20
   16838:	00f76733          	or	a4,a4,a5
   1683c:	bb0ff06f          	j	15bec <_dtoa_r+0x404>
   16840:	0ac77753          	fsub.d	fa4,fa4,fa2
   16844:	03000613          	li	a2,48
   16848:	a2e797d3          	flt.d	a5,fa5,fa4
   1684c:	00079663          	bnez	a5,16858 <_dtoa_r+0x1070>
   16850:	db9ff06f          	j	16608 <_dtoa_r+0xe20>
   16854:	00070493          	mv	s1,a4
   16858:	fff4c783          	lbu	a5,-1(s1)
   1685c:	fff48713          	addi	a4,s1,-1
   16860:	fec78ae3          	beq	a5,a2,16854 <_dtoa_r+0x106c>
   16864:	00068b93          	mv	s7,a3
   16868:	c60ff06f          	j	15cc8 <_dtoa_r+0x4e0>
   1686c:	00068b93          	mv	s7,a3
   16870:	ddcff06f          	j	15e4c <_dtoa_r+0x664>
   16874:	b80514e3          	bnez	a0,163fc <_dtoa_r+0xc14>
   16878:	001d7793          	andi	a5,s10,1
   1687c:	b80780e3          	beqz	a5,163fc <_dtoa_r+0xc14>
   16880:	bb9ff06f          	j	16438 <_dtoa_r+0xc50>
   16884:	00048693          	mv	a3,s1
   16888:	db0ff06f          	j	15e38 <_dtoa_r+0x650>
   1688c:	000a0593          	mv	a1,s4
   16890:	00000693          	li	a3,0
   16894:	00a00613          	li	a2,10
   16898:	00040513          	mv	a0,s0
   1689c:	071000ef          	jal	ra,1710c <__multadd>
   168a0:	03412783          	lw	a5,52(sp)
   168a4:	00050a13          	mv	s4,a0
   168a8:	00078a93          	mv	s5,a5
   168ac:	82f04ae3          	bgtz	a5,160e0 <_dtoa_r+0x8f8>
   168b0:	00200793          	li	a5,2
   168b4:	0137c663          	blt	a5,s3,168c0 <_dtoa_r+0x10d8>
   168b8:	03412a83          	lw	s5,52(sp)
   168bc:	825ff06f          	j	160e0 <_dtoa_r+0x8f8>
   168c0:	03412a83          	lw	s5,52(sp)
   168c4:	c15ff06f          	j	164d8 <_dtoa_r+0xcf0>
   168c8:	00cd1713          	slli	a4,s10,0xc
   168cc:	ee070263          	beqz	a4,15fb0 <_dtoa_r+0x7c8>
   168d0:	f94ff06f          	j	16064 <_dtoa_r+0x87c>
   168d4:	fcc68463          	beq	a3,a2,1609c <_dtoa_r+0x8b4>
   168d8:	03c00693          	li	a3,60
   168dc:	40f687bb          	subw	a5,a3,a5
   168e0:	945ff06f          	j	16224 <_dtoa_r+0xa3c>

00000000000168e4 <__sflags>:
   168e4:	0005c783          	lbu	a5,0(a1) # fffffffffcc00000 <_gp+0xfffffffffcbe2930>
   168e8:	07200713          	li	a4,114
   168ec:	08e78663          	beq	a5,a4,16978 <__sflags+0x94>
   168f0:	07700713          	li	a4,119
   168f4:	06e78a63          	beq	a5,a4,16968 <__sflags+0x84>
   168f8:	06100713          	li	a4,97
   168fc:	00e78a63          	beq	a5,a4,16910 <__sflags+0x2c>
   16900:	01600793          	li	a5,22
   16904:	00f52023          	sw	a5,0(a0)
   16908:	00000513          	li	a0,0
   1690c:	00008067          	ret
   16910:	44000893          	li	a7,1088
   16914:	00100713          	li	a4,1
   16918:	10800513          	li	a0,264
   1691c:	02b00693          	li	a3,43
   16920:	07800813          	li	a6,120
   16924:	00158593          	addi	a1,a1,1
   16928:	0005c783          	lbu	a5,0(a1)
   1692c:	00078e63          	beqz	a5,16948 <__sflags+0x64>
   16930:	02d78263          	beq	a5,a3,16954 <__sflags+0x70>
   16934:	ff0798e3          	bne	a5,a6,16924 <__sflags+0x40>
   16938:	00158593          	addi	a1,a1,1
   1693c:	0005c783          	lbu	a5,0(a1)
   16940:	08076713          	ori	a4,a4,128
   16944:	fe0796e3          	bnez	a5,16930 <__sflags+0x4c>
   16948:	01176733          	or	a4,a4,a7
   1694c:	00e62023          	sw	a4,0(a2)
   16950:	00008067          	ret
   16954:	fe357513          	andi	a0,a0,-29
   16958:	ffc77713          	andi	a4,a4,-4
   1695c:	01056513          	ori	a0,a0,16
   16960:	00276713          	ori	a4,a4,2
   16964:	fc1ff06f          	j	16924 <__sflags+0x40>
   16968:	24000893          	li	a7,576
   1696c:	00100713          	li	a4,1
   16970:	00800513          	li	a0,8
   16974:	fa9ff06f          	j	1691c <__sflags+0x38>
   16978:	00000893          	li	a7,0
   1697c:	00000713          	li	a4,0
   16980:	00400513          	li	a0,4
   16984:	f99ff06f          	j	1691c <__sflags+0x38>

0000000000016988 <__sfvwrite_r>:
   16988:	01063783          	ld	a5,16(a2)
   1698c:	26078a63          	beqz	a5,16c00 <__sfvwrite_r+0x278>
   16990:	0105d703          	lhu	a4,16(a1)
   16994:	f9010113          	addi	sp,sp,-112
   16998:	06813023          	sd	s0,96(sp)
   1699c:	03513c23          	sd	s5,56(sp)
   169a0:	03613823          	sd	s6,48(sp)
   169a4:	06113423          	sd	ra,104(sp)
   169a8:	04913c23          	sd	s1,88(sp)
   169ac:	05213823          	sd	s2,80(sp)
   169b0:	05313423          	sd	s3,72(sp)
   169b4:	05413023          	sd	s4,64(sp)
   169b8:	03713423          	sd	s7,40(sp)
   169bc:	03813023          	sd	s8,32(sp)
   169c0:	01913c23          	sd	s9,24(sp)
   169c4:	01a13823          	sd	s10,16(sp)
   169c8:	01b13423          	sd	s11,8(sp)
   169cc:	00877793          	andi	a5,a4,8
   169d0:	00058413          	mv	s0,a1
   169d4:	00050b13          	mv	s6,a0
   169d8:	00060a93          	mv	s5,a2
   169dc:	0a078863          	beqz	a5,16a8c <__sfvwrite_r+0x104>
   169e0:	0185b783          	ld	a5,24(a1)
   169e4:	0a078463          	beqz	a5,16a8c <__sfvwrite_r+0x104>
   169e8:	00277793          	andi	a5,a4,2
   169ec:	000ab483          	ld	s1,0(s5)
   169f0:	0c078063          	beqz	a5,16ab0 <__sfvwrite_r+0x128>
   169f4:	80000a37          	lui	s4,0x80000
   169f8:	00000993          	li	s3,0
   169fc:	00000913          	li	s2,0
   16a00:	c00a4a13          	xori	s4,s4,-1024
   16a04:	00098613          	mv	a2,s3
   16a08:	000b0513          	mv	a0,s6
   16a0c:	1e090263          	beqz	s2,16bf0 <__sfvwrite_r+0x268>
   16a10:	00090693          	mv	a3,s2
   16a14:	012a7463          	bleu	s2,s4,16a1c <__sfvwrite_r+0x94>
   16a18:	000a0693          	mv	a3,s4
   16a1c:	04043783          	ld	a5,64(s0)
   16a20:	03043583          	ld	a1,48(s0)
   16a24:	0006869b          	sext.w	a3,a3
   16a28:	000780e7          	jalr	a5
   16a2c:	22a05063          	blez	a0,16c4c <__sfvwrite_r+0x2c4>
   16a30:	010ab783          	ld	a5,16(s5)
   16a34:	00a989b3          	add	s3,s3,a0
   16a38:	40a90933          	sub	s2,s2,a0
   16a3c:	40a78533          	sub	a0,a5,a0
   16a40:	00aab823          	sd	a0,16(s5)
   16a44:	fc0510e3          	bnez	a0,16a04 <__sfvwrite_r+0x7c>
   16a48:	00000793          	li	a5,0
   16a4c:	06813083          	ld	ra,104(sp)
   16a50:	00078513          	mv	a0,a5
   16a54:	06013403          	ld	s0,96(sp)
   16a58:	05813483          	ld	s1,88(sp)
   16a5c:	05013903          	ld	s2,80(sp)
   16a60:	04813983          	ld	s3,72(sp)
   16a64:	04013a03          	ld	s4,64(sp)
   16a68:	03813a83          	ld	s5,56(sp)
   16a6c:	03013b03          	ld	s6,48(sp)
   16a70:	02813b83          	ld	s7,40(sp)
   16a74:	02013c03          	ld	s8,32(sp)
   16a78:	01813c83          	ld	s9,24(sp)
   16a7c:	01013d03          	ld	s10,16(sp)
   16a80:	00813d83          	ld	s11,8(sp)
   16a84:	07010113          	addi	sp,sp,112
   16a88:	00008067          	ret
   16a8c:	00040593          	mv	a1,s0
   16a90:	000b0513          	mv	a0,s6
   16a94:	f64fe0ef          	jal	ra,151f8 <__swsetup_r>
   16a98:	fff00793          	li	a5,-1
   16a9c:	fa0518e3          	bnez	a0,16a4c <__sfvwrite_r+0xc4>
   16aa0:	01045703          	lhu	a4,16(s0)
   16aa4:	000ab483          	ld	s1,0(s5)
   16aa8:	00277793          	andi	a5,a4,2
   16aac:	f40794e3          	bnez	a5,169f4 <__sfvwrite_r+0x6c>
   16ab0:	00177793          	andi	a5,a4,1
   16ab4:	1a079663          	bnez	a5,16c60 <__sfvwrite_r+0x2d8>
   16ab8:	80000bb7          	lui	s7,0x80000
   16abc:	ffebcc13          	xori	s8,s7,-2
   16ac0:	00000c93          	li	s9,0
   16ac4:	00000913          	li	s2,0
   16ac8:	fffbcb93          	not	s7,s7
   16acc:	10090a63          	beqz	s2,16be0 <__sfvwrite_r+0x258>
   16ad0:	00c42983          	lw	s3,12(s0)
   16ad4:	20077793          	andi	a5,a4,512
   16ad8:	00098a13          	mv	s4,s3
   16adc:	26078863          	beqz	a5,16d4c <__sfvwrite_r+0x3c4>
   16ae0:	2b396a63          	bltu	s2,s3,16d94 <__sfvwrite_r+0x40c>
   16ae4:	48077793          	andi	a5,a4,1152
   16ae8:	2a078663          	beqz	a5,16d94 <__sfvwrite_r+0x40c>
   16aec:	02042a03          	lw	s4,32(s0)
   16af0:	01843583          	ld	a1,24(s0)
   16af4:	00043d03          	ld	s10,0(s0)
   16af8:	001a179b          	slliw	a5,s4,0x1
   16afc:	01478a3b          	addw	s4,a5,s4
   16b00:	01fa579b          	srliw	a5,s4,0x1f
   16b04:	40bd0d3b          	subw	s10,s10,a1
   16b08:	01478a3b          	addw	s4,a5,s4
   16b0c:	000d0993          	mv	s3,s10
   16b10:	401a5a1b          	sraiw	s4,s4,0x1
   16b14:	00198793          	addi	a5,s3,1
   16b18:	000a0613          	mv	a2,s4
   16b1c:	012787b3          	add	a5,a5,s2
   16b20:	00f67863          	bleu	a5,a2,16b30 <__sfvwrite_r+0x1a8>
   16b24:	001d0a1b          	addiw	s4,s10,1
   16b28:	01490a3b          	addw	s4,s2,s4
   16b2c:	000a0613          	mv	a2,s4
   16b30:	40077713          	andi	a4,a4,1024
   16b34:	2a070a63          	beqz	a4,16de8 <__sfvwrite_r+0x460>
   16b38:	00060593          	mv	a1,a2
   16b3c:	000b0513          	mv	a0,s6
   16b40:	cd8fb0ef          	jal	ra,12018 <_malloc_r>
   16b44:	00050d93          	mv	s11,a0
   16b48:	2e050263          	beqz	a0,16e2c <__sfvwrite_r+0x4a4>
   16b4c:	01843583          	ld	a1,24(s0)
   16b50:	00098613          	mv	a2,s3
   16b54:	d1dfb0ef          	jal	ra,12870 <memcpy>
   16b58:	01045783          	lhu	a5,16(s0)
   16b5c:	b7f7f793          	andi	a5,a5,-1153
   16b60:	0807e793          	ori	a5,a5,128
   16b64:	00f41823          	sh	a5,16(s0)
   16b68:	41aa0d3b          	subw	s10,s4,s10
   16b6c:	013d8533          	add	a0,s11,s3
   16b70:	03442023          	sw	s4,32(s0)
   16b74:	01b43c23          	sd	s11,24(s0)
   16b78:	00a43023          	sd	a0,0(s0)
   16b7c:	00090a13          	mv	s4,s2
   16b80:	01a42623          	sw	s10,12(s0)
   16b84:	000a0d13          	mv	s10,s4
   16b88:	00090993          	mv	s3,s2
   16b8c:	01497863          	bleu	s4,s2,16b9c <__sfvwrite_r+0x214>
   16b90:	00090d13          	mv	s10,s2
   16b94:	00090993          	mv	s3,s2
   16b98:	00090a13          	mv	s4,s2
   16b9c:	000d0613          	mv	a2,s10
   16ba0:	000c8593          	mv	a1,s9
   16ba4:	378000ef          	jal	ra,16f1c <memmove>
   16ba8:	00c42783          	lw	a5,12(s0)
   16bac:	00043603          	ld	a2,0(s0)
   16bb0:	41478a3b          	subw	s4,a5,s4
   16bb4:	01a60633          	add	a2,a2,s10
   16bb8:	01442623          	sw	s4,12(s0)
   16bbc:	00c43023          	sd	a2,0(s0)
   16bc0:	010ab503          	ld	a0,16(s5)
   16bc4:	013c8cb3          	add	s9,s9,s3
   16bc8:	41390933          	sub	s2,s2,s3
   16bcc:	413509b3          	sub	s3,a0,s3
   16bd0:	013ab823          	sd	s3,16(s5)
   16bd4:	e6098ae3          	beqz	s3,16a48 <__sfvwrite_r+0xc0>
   16bd8:	01045703          	lhu	a4,16(s0)
   16bdc:	ee091ae3          	bnez	s2,16ad0 <__sfvwrite_r+0x148>
   16be0:	0004bc83          	ld	s9,0(s1)
   16be4:	0084b903          	ld	s2,8(s1)
   16be8:	01048493          	addi	s1,s1,16
   16bec:	ee1ff06f          	j	16acc <__sfvwrite_r+0x144>
   16bf0:	0004b983          	ld	s3,0(s1)
   16bf4:	0084b903          	ld	s2,8(s1)
   16bf8:	01048493          	addi	s1,s1,16
   16bfc:	e09ff06f          	j	16a04 <__sfvwrite_r+0x7c>
   16c00:	00000793          	li	a5,0
   16c04:	00078513          	mv	a0,a5
   16c08:	00008067          	ret
   16c0c:	01397463          	bleu	s3,s2,16c14 <__sfvwrite_r+0x28c>
   16c10:	00090993          	mv	s3,s2
   16c14:	00098613          	mv	a2,s3
   16c18:	000c8593          	mv	a1,s9
   16c1c:	300000ef          	jal	ra,16f1c <memmove>
   16c20:	00c42783          	lw	a5,12(s0)
   16c24:	00043703          	ld	a4,0(s0)
   16c28:	413787bb          	subw	a5,a5,s3
   16c2c:	01370733          	add	a4,a4,s3
   16c30:	00f42623          	sw	a5,12(s0)
   16c34:	00e43023          	sd	a4,0(s0)
   16c38:	f80794e3          	bnez	a5,16bc0 <__sfvwrite_r+0x238>
   16c3c:	00040593          	mv	a1,s0
   16c40:	000b0513          	mv	a0,s6
   16c44:	ea9f90ef          	jal	ra,10aec <_fflush_r>
   16c48:	f6050ce3          	beqz	a0,16bc0 <__sfvwrite_r+0x238>
   16c4c:	01041783          	lh	a5,16(s0)
   16c50:	0407e793          	ori	a5,a5,64
   16c54:	00f41823          	sh	a5,16(s0)
   16c58:	fff00793          	li	a5,-1
   16c5c:	df1ff06f          	j	16a4c <__sfvwrite_r+0xc4>
   16c60:	00000a13          	li	s4,0
   16c64:	00000c13          	li	s8,0
   16c68:	00000d13          	li	s10,0
   16c6c:	00000913          	li	s2,0
   16c70:	06090e63          	beqz	s2,16cec <__sfvwrite_r+0x364>
   16c74:	140c0863          	beqz	s8,16dc4 <__sfvwrite_r+0x43c>
   16c78:	000a0993          	mv	s3,s4
   16c7c:	01497463          	bleu	s4,s2,16c84 <__sfvwrite_r+0x2fc>
   16c80:	00090993          	mv	s3,s2
   16c84:	00043503          	ld	a0,0(s0)
   16c88:	01843783          	ld	a5,24(s0)
   16c8c:	00098b93          	mv	s7,s3
   16c90:	02042683          	lw	a3,32(s0)
   16c94:	00a7fa63          	bleu	a0,a5,16ca8 <__sfvwrite_r+0x320>
   16c98:	00c42c83          	lw	s9,12(s0)
   16c9c:	01968cbb          	addw	s9,a3,s9
   16ca0:	000c8d93          	mv	s11,s9
   16ca4:	053dce63          	blt	s11,s3,16d00 <__sfvwrite_r+0x378>
   16ca8:	0ed9ca63          	blt	s3,a3,16d9c <__sfvwrite_r+0x414>
   16cac:	04043783          	ld	a5,64(s0)
   16cb0:	03043583          	ld	a1,48(s0)
   16cb4:	000d0613          	mv	a2,s10
   16cb8:	000b0513          	mv	a0,s6
   16cbc:	000780e7          	jalr	a5
   16cc0:	00050b93          	mv	s7,a0
   16cc4:	f8a054e3          	blez	a0,16c4c <__sfvwrite_r+0x2c4>
   16cc8:	417a0a3b          	subw	s4,s4,s7
   16ccc:	060a0463          	beqz	s4,16d34 <__sfvwrite_r+0x3ac>
   16cd0:	010ab783          	ld	a5,16(s5)
   16cd4:	017d0d33          	add	s10,s10,s7
   16cd8:	41790933          	sub	s2,s2,s7
   16cdc:	41778bb3          	sub	s7,a5,s7
   16ce0:	017ab823          	sd	s7,16(s5)
   16ce4:	d60b82e3          	beqz	s7,16a48 <__sfvwrite_r+0xc0>
   16ce8:	f80916e3          	bnez	s2,16c74 <__sfvwrite_r+0x2ec>
   16cec:	0004bd03          	ld	s10,0(s1)
   16cf0:	0084b903          	ld	s2,8(s1)
   16cf4:	00000c13          	li	s8,0
   16cf8:	01048493          	addi	s1,s1,16
   16cfc:	f75ff06f          	j	16c70 <__sfvwrite_r+0x2e8>
   16d00:	000d0593          	mv	a1,s10
   16d04:	000c8613          	mv	a2,s9
   16d08:	214000ef          	jal	ra,16f1c <memmove>
   16d0c:	00043783          	ld	a5,0(s0)
   16d10:	00040593          	mv	a1,s0
   16d14:	000b0513          	mv	a0,s6
   16d18:	01b78db3          	add	s11,a5,s11
   16d1c:	01b43023          	sd	s11,0(s0)
   16d20:	dcdf90ef          	jal	ra,10aec <_fflush_r>
   16d24:	f20514e3          	bnez	a0,16c4c <__sfvwrite_r+0x2c4>
   16d28:	000c8b93          	mv	s7,s9
   16d2c:	417a0a3b          	subw	s4,s4,s7
   16d30:	fa0a10e3          	bnez	s4,16cd0 <__sfvwrite_r+0x348>
   16d34:	00040593          	mv	a1,s0
   16d38:	000b0513          	mv	a0,s6
   16d3c:	db1f90ef          	jal	ra,10aec <_fflush_r>
   16d40:	f00516e3          	bnez	a0,16c4c <__sfvwrite_r+0x2c4>
   16d44:	00000c13          	li	s8,0
   16d48:	f89ff06f          	j	16cd0 <__sfvwrite_r+0x348>
   16d4c:	00043503          	ld	a0,0(s0)
   16d50:	01843783          	ld	a5,24(s0)
   16d54:	eaa7ece3          	bltu	a5,a0,16c0c <__sfvwrite_r+0x284>
   16d58:	02042783          	lw	a5,32(s0)
   16d5c:	eaf968e3          	bltu	s2,a5,16c0c <__sfvwrite_r+0x284>
   16d60:	000b8693          	mv	a3,s7
   16d64:	012c6463          	bltu	s8,s2,16d6c <__sfvwrite_r+0x3e4>
   16d68:	0009069b          	sext.w	a3,s2
   16d6c:	02f6c6bb          	divw	a3,a3,a5
   16d70:	04043703          	ld	a4,64(s0)
   16d74:	03043583          	ld	a1,48(s0)
   16d78:	000c8613          	mv	a2,s9
   16d7c:	000b0513          	mv	a0,s6
   16d80:	02f686bb          	mulw	a3,a3,a5
   16d84:	000700e7          	jalr	a4
   16d88:	eca052e3          	blez	a0,16c4c <__sfvwrite_r+0x2c4>
   16d8c:	00050993          	mv	s3,a0
   16d90:	e31ff06f          	j	16bc0 <__sfvwrite_r+0x238>
   16d94:	00043503          	ld	a0,0(s0)
   16d98:	dedff06f          	j	16b84 <__sfvwrite_r+0x1fc>
   16d9c:	00098613          	mv	a2,s3
   16da0:	000d0593          	mv	a1,s10
   16da4:	178000ef          	jal	ra,16f1c <memmove>
   16da8:	00c42703          	lw	a4,12(s0)
   16dac:	00043783          	ld	a5,0(s0)
   16db0:	4137073b          	subw	a4,a4,s3
   16db4:	013789b3          	add	s3,a5,s3
   16db8:	00e42623          	sw	a4,12(s0)
   16dbc:	01343023          	sd	s3,0(s0)
   16dc0:	f09ff06f          	j	16cc8 <__sfvwrite_r+0x340>
   16dc4:	00090613          	mv	a2,s2
   16dc8:	00a00593          	li	a1,10
   16dcc:	000d0513          	mv	a0,s10
   16dd0:	9b9fb0ef          	jal	ra,12788 <memchr>
   16dd4:	04050663          	beqz	a0,16e20 <__sfvwrite_r+0x498>
   16dd8:	00150a13          	addi	s4,a0,1
   16ddc:	41aa0a3b          	subw	s4,s4,s10
   16de0:	00100c13          	li	s8,1
   16de4:	e95ff06f          	j	16c78 <__sfvwrite_r+0x2f0>
   16de8:	000b0513          	mv	a0,s6
   16dec:	2b4010ef          	jal	ra,180a0 <_realloc_r>
   16df0:	00050d93          	mv	s11,a0
   16df4:	d6051ae3          	bnez	a0,16b68 <__sfvwrite_r+0x1e0>
   16df8:	01843583          	ld	a1,24(s0)
   16dfc:	000b0513          	mv	a0,s6
   16e00:	dd4fa0ef          	jal	ra,113d4 <_free_r>
   16e04:	01045783          	lhu	a5,16(s0)
   16e08:	00c00713          	li	a4,12
   16e0c:	00eb2023          	sw	a4,0(s6)
   16e10:	f7f7f793          	andi	a5,a5,-129
   16e14:	0107979b          	slliw	a5,a5,0x10
   16e18:	4107d79b          	sraiw	a5,a5,0x10
   16e1c:	e35ff06f          	j	16c50 <__sfvwrite_r+0x2c8>
   16e20:	00190a1b          	addiw	s4,s2,1
   16e24:	00100c13          	li	s8,1
   16e28:	e51ff06f          	j	16c78 <__sfvwrite_r+0x2f0>
   16e2c:	00c00793          	li	a5,12
   16e30:	00fb2023          	sw	a5,0(s6)
   16e34:	01041783          	lh	a5,16(s0)
   16e38:	e19ff06f          	j	16c50 <__sfvwrite_r+0x2c8>

0000000000016e3c <_setlocale_r>:
   16e3c:	fe010113          	addi	sp,sp,-32
   16e40:	00913423          	sd	s1,8(sp)
   16e44:	00113c23          	sd	ra,24(sp)
   16e48:	00813823          	sd	s0,16(sp)
   16e4c:	0001b4b7          	lui	s1,0x1b
   16e50:	02060063          	beqz	a2,16e70 <_setlocale_r+0x34>
   16e54:	0001b5b7          	lui	a1,0x1b
   16e58:	b5858593          	addi	a1,a1,-1192 # 1ab58 <zeroes.4137+0x98>
   16e5c:	00060513          	mv	a0,a2
   16e60:	00060413          	mv	s0,a2
   16e64:	031010ef          	jal	ra,18694 <strcmp>
   16e68:	0001b4b7          	lui	s1,0x1b
   16e6c:	00051e63          	bnez	a0,16e88 <_setlocale_r+0x4c>
   16e70:	ad048513          	addi	a0,s1,-1328 # 1aad0 <zeroes.4137+0x10>
   16e74:	01813083          	ld	ra,24(sp)
   16e78:	01013403          	ld	s0,16(sp)
   16e7c:	00813483          	ld	s1,8(sp)
   16e80:	02010113          	addi	sp,sp,32
   16e84:	00008067          	ret
   16e88:	ad048593          	addi	a1,s1,-1328
   16e8c:	00040513          	mv	a0,s0
   16e90:	005010ef          	jal	ra,18694 <strcmp>
   16e94:	fc050ee3          	beqz	a0,16e70 <_setlocale_r+0x34>
   16e98:	0001b5b7          	lui	a1,0x1b
   16e9c:	b1058593          	addi	a1,a1,-1264 # 1ab10 <zeroes.4137+0x50>
   16ea0:	00040513          	mv	a0,s0
   16ea4:	7f0010ef          	jal	ra,18694 <strcmp>
   16ea8:	fc0504e3          	beqz	a0,16e70 <_setlocale_r+0x34>
   16eac:	00000513          	li	a0,0
   16eb0:	fc5ff06f          	j	16e74 <_setlocale_r+0x38>

0000000000016eb4 <__locale_charset>:
   16eb4:	0001d537          	lui	a0,0x1d
   16eb8:	e2850513          	addi	a0,a0,-472 # 1ce28 <lc_ctype_charset>
   16ebc:	00008067          	ret

0000000000016ec0 <__locale_mb_cur_max>:
   16ec0:	8301a503          	lw	a0,-2000(gp)
   16ec4:	00008067          	ret

0000000000016ec8 <__locale_msgcharset>:
   16ec8:	0001d537          	lui	a0,0x1d
   16ecc:	e4850513          	addi	a0,a0,-440 # 1ce48 <lc_message_charset>
   16ed0:	00008067          	ret

0000000000016ed4 <__locale_cjk_lang>:
   16ed4:	00000513          	li	a0,0
   16ed8:	00008067          	ret

0000000000016edc <_localeconv_r>:
   16edc:	0001d537          	lui	a0,0x1d
   16ee0:	e6850513          	addi	a0,a0,-408 # 1ce68 <lconv>
   16ee4:	00008067          	ret

0000000000016ee8 <setlocale>:
   16ee8:	00058613          	mv	a2,a1
   16eec:	00050593          	mv	a1,a0
   16ef0:	8101b503          	ld	a0,-2032(gp)
   16ef4:	f49ff06f          	j	16e3c <_setlocale_r>

0000000000016ef8 <localeconv>:
   16ef8:	0001d537          	lui	a0,0x1d
   16efc:	e6850513          	addi	a0,a0,-408 # 1ce68 <lconv>
   16f00:	00008067          	ret

0000000000016f04 <malloc>:
   16f04:	00050593          	mv	a1,a0
   16f08:	8101b503          	ld	a0,-2032(gp)
   16f0c:	90cfb06f          	j	12018 <_malloc_r>

0000000000016f10 <free>:
   16f10:	00050593          	mv	a1,a0
   16f14:	8101b503          	ld	a0,-2032(gp)
   16f18:	cbcfa06f          	j	113d4 <_free_r>

0000000000016f1c <memmove>:
   16f1c:	02a5f863          	bleu	a0,a1,16f4c <memmove+0x30>
   16f20:	00c58733          	add	a4,a1,a2
   16f24:	02e57463          	bleu	a4,a0,16f4c <memmove+0x30>
   16f28:	00c507b3          	add	a5,a0,a2
   16f2c:	40c785b3          	sub	a1,a5,a2
   16f30:	0e060263          	beqz	a2,17014 <memmove+0xf8>
   16f34:	fff70713          	addi	a4,a4,-1
   16f38:	00074683          	lbu	a3,0(a4)
   16f3c:	fff78793          	addi	a5,a5,-1
   16f40:	00d78023          	sb	a3,0(a5)
   16f44:	fef598e3          	bne	a1,a5,16f34 <memmove+0x18>
   16f48:	00008067          	ret
   16f4c:	01f00893          	li	a7,31
   16f50:	0cc8f463          	bleu	a2,a7,17018 <memmove+0xfc>
   16f54:	00a5e7b3          	or	a5,a1,a0
   16f58:	0077f793          	andi	a5,a5,7
   16f5c:	0c079463          	bnez	a5,17024 <memmove+0x108>
   16f60:	00058713          	mv	a4,a1
   16f64:	00050793          	mv	a5,a0
   16f68:	00060693          	mv	a3,a2
   16f6c:	00073803          	ld	a6,0(a4)
   16f70:	02078793          	addi	a5,a5,32
   16f74:	02070713          	addi	a4,a4,32
   16f78:	ff07b023          	sd	a6,-32(a5)
   16f7c:	fe873803          	ld	a6,-24(a4)
   16f80:	fe068693          	addi	a3,a3,-32
   16f84:	ff07b423          	sd	a6,-24(a5)
   16f88:	ff073803          	ld	a6,-16(a4)
   16f8c:	ff07b823          	sd	a6,-16(a5)
   16f90:	ff873803          	ld	a6,-8(a4)
   16f94:	ff07bc23          	sd	a6,-8(a5)
   16f98:	fcd8eae3          	bltu	a7,a3,16f6c <memmove+0x50>
   16f9c:	fe060713          	addi	a4,a2,-32
   16fa0:	fe077713          	andi	a4,a4,-32
   16fa4:	02070713          	addi	a4,a4,32
   16fa8:	01f67e13          	andi	t3,a2,31
   16fac:	00700313          	li	t1,7
   16fb0:	00e507b3          	add	a5,a0,a4
   16fb4:	00e585b3          	add	a1,a1,a4
   16fb8:	07c37c63          	bleu	t3,t1,17030 <memmove+0x114>
   16fbc:	00058813          	mv	a6,a1
   16fc0:	00078693          	mv	a3,a5
   16fc4:	000e0713          	mv	a4,t3
   16fc8:	00880813          	addi	a6,a6,8
   16fcc:	ff883883          	ld	a7,-8(a6)
   16fd0:	00868693          	addi	a3,a3,8
   16fd4:	ff870713          	addi	a4,a4,-8
   16fd8:	ff16bc23          	sd	a7,-8(a3)
   16fdc:	fee366e3          	bltu	t1,a4,16fc8 <memmove+0xac>
   16fe0:	ff8e0713          	addi	a4,t3,-8
   16fe4:	ff877713          	andi	a4,a4,-8
   16fe8:	00870713          	addi	a4,a4,8
   16fec:	00767613          	andi	a2,a2,7
   16ff0:	00e787b3          	add	a5,a5,a4
   16ff4:	00e585b3          	add	a1,a1,a4
   16ff8:	02060a63          	beqz	a2,1702c <memmove+0x110>
   16ffc:	00c78633          	add	a2,a5,a2
   17000:	00158593          	addi	a1,a1,1
   17004:	fff5c703          	lbu	a4,-1(a1)
   17008:	00178793          	addi	a5,a5,1
   1700c:	fee78fa3          	sb	a4,-1(a5)
   17010:	fec798e3          	bne	a5,a2,17000 <memmove+0xe4>
   17014:	00008067          	ret
   17018:	00050793          	mv	a5,a0
   1701c:	fe0610e3          	bnez	a2,16ffc <memmove+0xe0>
   17020:	00c0006f          	j	1702c <memmove+0x110>
   17024:	00050793          	mv	a5,a0
   17028:	fd5ff06f          	j	16ffc <memmove+0xe0>
   1702c:	00008067          	ret
   17030:	000e0613          	mv	a2,t3
   17034:	fc0614e3          	bnez	a2,16ffc <memmove+0xe0>
   17038:	ff5ff06f          	j	1702c <memmove+0x110>

000000000001703c <_Balloc>:
   1703c:	07853783          	ld	a5,120(a0)
   17040:	fe010113          	addi	sp,sp,-32
   17044:	00813823          	sd	s0,16(sp)
   17048:	00913423          	sd	s1,8(sp)
   1704c:	00113c23          	sd	ra,24(sp)
   17050:	01213023          	sd	s2,0(sp)
   17054:	00050413          	mv	s0,a0
   17058:	00058493          	mv	s1,a1
   1705c:	02078e63          	beqz	a5,17098 <_Balloc+0x5c>
   17060:	00349513          	slli	a0,s1,0x3
   17064:	00a787b3          	add	a5,a5,a0
   17068:	0007b503          	ld	a0,0(a5)
   1706c:	04050663          	beqz	a0,170b8 <_Balloc+0x7c>
   17070:	00053703          	ld	a4,0(a0)
   17074:	00e7b023          	sd	a4,0(a5)
   17078:	00052a23          	sw	zero,20(a0)
   1707c:	00052823          	sw	zero,16(a0)
   17080:	01813083          	ld	ra,24(sp)
   17084:	01013403          	ld	s0,16(sp)
   17088:	00813483          	ld	s1,8(sp)
   1708c:	00013903          	ld	s2,0(sp)
   17090:	02010113          	addi	sp,sp,32
   17094:	00008067          	ret
   17098:	04100613          	li	a2,65
   1709c:	00800593          	li	a1,8
   170a0:	195020ef          	jal	ra,19a34 <_calloc_r>
   170a4:	06a43c23          	sd	a0,120(s0)
   170a8:	00050793          	mv	a5,a0
   170ac:	fa051ae3          	bnez	a0,17060 <_Balloc+0x24>
   170b0:	00000513          	li	a0,0
   170b4:	fcdff06f          	j	17080 <_Balloc+0x44>
   170b8:	00100913          	li	s2,1
   170bc:	0099193b          	sllw	s2,s2,s1
   170c0:	fff9061b          	addiw	a2,s2,-1
   170c4:	00860613          	addi	a2,a2,8
   170c8:	00261613          	slli	a2,a2,0x2
   170cc:	00100593          	li	a1,1
   170d0:	00040513          	mv	a0,s0
   170d4:	161020ef          	jal	ra,19a34 <_calloc_r>
   170d8:	fc050ce3          	beqz	a0,170b0 <_Balloc+0x74>
   170dc:	00952423          	sw	s1,8(a0)
   170e0:	01252623          	sw	s2,12(a0)
   170e4:	f95ff06f          	j	17078 <_Balloc+0x3c>

00000000000170e8 <_Bfree>:
   170e8:	02058063          	beqz	a1,17108 <_Bfree+0x20>
   170ec:	0085a783          	lw	a5,8(a1)
   170f0:	07853703          	ld	a4,120(a0)
   170f4:	00379793          	slli	a5,a5,0x3
   170f8:	00f707b3          	add	a5,a4,a5
   170fc:	0007b703          	ld	a4,0(a5)
   17100:	00e5b023          	sd	a4,0(a1)
   17104:	00b7b023          	sd	a1,0(a5)
   17108:	00008067          	ret

000000000001710c <__multadd>:
   1710c:	fc010113          	addi	sp,sp,-64
   17110:	00010837          	lui	a6,0x10
   17114:	02813823          	sd	s0,48(sp)
   17118:	02913423          	sd	s1,40(sp)
   1711c:	03213023          	sd	s2,32(sp)
   17120:	00058493          	mv	s1,a1
   17124:	0145a403          	lw	s0,20(a1)
   17128:	00050913          	mv	s2,a0
   1712c:	02113c23          	sd	ra,56(sp)
   17130:	01313c23          	sd	s3,24(sp)
   17134:	01858593          	addi	a1,a1,24
   17138:	00000513          	li	a0,0
   1713c:	fff8081b          	addiw	a6,a6,-1
   17140:	0005a783          	lw	a5,0(a1)
   17144:	00458593          	addi	a1,a1,4
   17148:	0015051b          	addiw	a0,a0,1
   1714c:	0107f733          	and	a4,a5,a6
   17150:	02c7073b          	mulw	a4,a4,a2
   17154:	0107d79b          	srliw	a5,a5,0x10
   17158:	02c787bb          	mulw	a5,a5,a2
   1715c:	00d7073b          	addw	a4,a4,a3
   17160:	0107569b          	srliw	a3,a4,0x10
   17164:	01077733          	and	a4,a4,a6
   17168:	00d786bb          	addw	a3,a5,a3
   1716c:	0106979b          	slliw	a5,a3,0x10
   17170:	00e7873b          	addw	a4,a5,a4
   17174:	fee5ae23          	sw	a4,-4(a1)
   17178:	0106d69b          	srliw	a3,a3,0x10
   1717c:	fc8542e3          	blt	a0,s0,17140 <__multadd+0x34>
   17180:	02068263          	beqz	a3,171a4 <__multadd+0x98>
   17184:	00c4a783          	lw	a5,12(s1)
   17188:	02f45e63          	ble	a5,s0,171c4 <__multadd+0xb8>
   1718c:	00440793          	addi	a5,s0,4
   17190:	00279793          	slli	a5,a5,0x2
   17194:	00f487b3          	add	a5,s1,a5
   17198:	00d7a423          	sw	a3,8(a5)
   1719c:	0014041b          	addiw	s0,s0,1
   171a0:	0084aa23          	sw	s0,20(s1)
   171a4:	03813083          	ld	ra,56(sp)
   171a8:	00048513          	mv	a0,s1
   171ac:	03013403          	ld	s0,48(sp)
   171b0:	02813483          	ld	s1,40(sp)
   171b4:	02013903          	ld	s2,32(sp)
   171b8:	01813983          	ld	s3,24(sp)
   171bc:	04010113          	addi	sp,sp,64
   171c0:	00008067          	ret
   171c4:	0084a583          	lw	a1,8(s1)
   171c8:	00090513          	mv	a0,s2
   171cc:	00d13423          	sd	a3,8(sp)
   171d0:	0015859b          	addiw	a1,a1,1
   171d4:	e69ff0ef          	jal	ra,1703c <_Balloc>
   171d8:	0144a603          	lw	a2,20(s1)
   171dc:	00050993          	mv	s3,a0
   171e0:	01048593          	addi	a1,s1,16
   171e4:	00260613          	addi	a2,a2,2
   171e8:	01050513          	addi	a0,a0,16
   171ec:	00261613          	slli	a2,a2,0x2
   171f0:	e80fb0ef          	jal	ra,12870 <memcpy>
   171f4:	0084a703          	lw	a4,8(s1)
   171f8:	07893783          	ld	a5,120(s2)
   171fc:	00813683          	ld	a3,8(sp)
   17200:	00371713          	slli	a4,a4,0x3
   17204:	00e787b3          	add	a5,a5,a4
   17208:	0007b703          	ld	a4,0(a5)
   1720c:	00e4b023          	sd	a4,0(s1)
   17210:	0097b023          	sd	s1,0(a5)
   17214:	00098493          	mv	s1,s3
   17218:	f75ff06f          	j	1718c <__multadd+0x80>

000000000001721c <__s2b>:
   1721c:	fc010113          	addi	sp,sp,-64
   17220:	0086879b          	addiw	a5,a3,8
   17224:	03213023          	sd	s2,32(sp)
   17228:	00068913          	mv	s2,a3
   1722c:	00900693          	li	a3,9
   17230:	02d7c6bb          	divw	a3,a5,a3
   17234:	02813823          	sd	s0,48(sp)
   17238:	02913423          	sd	s1,40(sp)
   1723c:	01313c23          	sd	s3,24(sp)
   17240:	01413823          	sd	s4,16(sp)
   17244:	02113c23          	sd	ra,56(sp)
   17248:	01513423          	sd	s5,8(sp)
   1724c:	01613023          	sd	s6,0(sp)
   17250:	00100793          	li	a5,1
   17254:	00058413          	mv	s0,a1
   17258:	00050993          	mv	s3,a0
   1725c:	00060a13          	mv	s4,a2
   17260:	00070493          	mv	s1,a4
   17264:	00000593          	li	a1,0
   17268:	00d7d863          	ble	a3,a5,17278 <__s2b+0x5c>
   1726c:	0017979b          	slliw	a5,a5,0x1
   17270:	0015859b          	addiw	a1,a1,1
   17274:	fed7cce3          	blt	a5,a3,1726c <__s2b+0x50>
   17278:	00098513          	mv	a0,s3
   1727c:	dc1ff0ef          	jal	ra,1703c <_Balloc>
   17280:	00100793          	li	a5,1
   17284:	00f52a23          	sw	a5,20(a0)
   17288:	00952c23          	sw	s1,24(a0)
   1728c:	00900793          	li	a5,9
   17290:	0b47d663          	ble	s4,a5,1733c <__s2b+0x120>
   17294:	ff6a0b1b          	addiw	s6,s4,-10
   17298:	020b1b13          	slli	s6,s6,0x20
   1729c:	020b5b13          	srli	s6,s6,0x20
   172a0:	00940a93          	addi	s5,s0,9
   172a4:	00ab0793          	addi	a5,s6,10
   172a8:	00f40433          	add	s0,s0,a5
   172ac:	000a8493          	mv	s1,s5
   172b0:	00148493          	addi	s1,s1,1
   172b4:	fff4c683          	lbu	a3,-1(s1)
   172b8:	00050593          	mv	a1,a0
   172bc:	00a00613          	li	a2,10
   172c0:	fd06869b          	addiw	a3,a3,-48
   172c4:	00098513          	mv	a0,s3
   172c8:	e45ff0ef          	jal	ra,1710c <__multadd>
   172cc:	fe8492e3          	bne	s1,s0,172b0 <__s2b+0x94>
   172d0:	016a8433          	add	s0,s5,s6
   172d4:	00240413          	addi	s0,s0,2
   172d8:	032a5e63          	ble	s2,s4,17314 <__s2b+0xf8>
   172dc:	fff9091b          	addiw	s2,s2,-1
   172e0:	414904bb          	subw	s1,s2,s4
   172e4:	02049493          	slli	s1,s1,0x20
   172e8:	0204d493          	srli	s1,s1,0x20
   172ec:	00148493          	addi	s1,s1,1
   172f0:	009404b3          	add	s1,s0,s1
   172f4:	00140413          	addi	s0,s0,1
   172f8:	fff44683          	lbu	a3,-1(s0)
   172fc:	00050593          	mv	a1,a0
   17300:	00a00613          	li	a2,10
   17304:	fd06869b          	addiw	a3,a3,-48
   17308:	00098513          	mv	a0,s3
   1730c:	e01ff0ef          	jal	ra,1710c <__multadd>
   17310:	fe9412e3          	bne	s0,s1,172f4 <__s2b+0xd8>
   17314:	03813083          	ld	ra,56(sp)
   17318:	03013403          	ld	s0,48(sp)
   1731c:	02813483          	ld	s1,40(sp)
   17320:	02013903          	ld	s2,32(sp)
   17324:	01813983          	ld	s3,24(sp)
   17328:	01013a03          	ld	s4,16(sp)
   1732c:	00813a83          	ld	s5,8(sp)
   17330:	00013b03          	ld	s6,0(sp)
   17334:	04010113          	addi	sp,sp,64
   17338:	00008067          	ret
   1733c:	00a40413          	addi	s0,s0,10
   17340:	00078a13          	mv	s4,a5
   17344:	f95ff06f          	j	172d8 <__s2b+0xbc>

0000000000017348 <__hi0bits>:
   17348:	ffff06b7          	lui	a3,0xffff0
   1734c:	00d576b3          	and	a3,a0,a3
   17350:	00050793          	mv	a5,a0
   17354:	00000713          	li	a4,0
   17358:	00069663          	bnez	a3,17364 <__hi0bits+0x1c>
   1735c:	0105179b          	slliw	a5,a0,0x10
   17360:	01000713          	li	a4,16
   17364:	ff0006b7          	lui	a3,0xff000
   17368:	00d7f6b3          	and	a3,a5,a3
   1736c:	00069663          	bnez	a3,17378 <__hi0bits+0x30>
   17370:	0087071b          	addiw	a4,a4,8
   17374:	0087979b          	slliw	a5,a5,0x8
   17378:	f00006b7          	lui	a3,0xf0000
   1737c:	00d7f6b3          	and	a3,a5,a3
   17380:	00069663          	bnez	a3,1738c <__hi0bits+0x44>
   17384:	0047071b          	addiw	a4,a4,4
   17388:	0047979b          	slliw	a5,a5,0x4
   1738c:	c00006b7          	lui	a3,0xc0000
   17390:	00d7f6b3          	and	a3,a5,a3
   17394:	00069663          	bnez	a3,173a0 <__hi0bits+0x58>
   17398:	0027071b          	addiw	a4,a4,2
   1739c:	0027979b          	slliw	a5,a5,0x2
   173a0:	0007ce63          	bltz	a5,173bc <__hi0bits+0x74>
   173a4:	02179693          	slli	a3,a5,0x21
   173a8:	02000513          	li	a0,32
   173ac:	0006c463          	bltz	a3,173b4 <__hi0bits+0x6c>
   173b0:	00008067          	ret
   173b4:	0017051b          	addiw	a0,a4,1
   173b8:	00008067          	ret
   173bc:	00070513          	mv	a0,a4
   173c0:	00008067          	ret

00000000000173c4 <__lo0bits>:
   173c4:	00052783          	lw	a5,0(a0)
   173c8:	00050693          	mv	a3,a0
   173cc:	0077f713          	andi	a4,a5,7
   173d0:	02070463          	beqz	a4,173f8 <__lo0bits+0x34>
   173d4:	0017f713          	andi	a4,a5,1
   173d8:	00000513          	li	a0,0
   173dc:	08071263          	bnez	a4,17460 <__lo0bits+0x9c>
   173e0:	0027f713          	andi	a4,a5,2
   173e4:	08071063          	bnez	a4,17464 <__lo0bits+0xa0>
   173e8:	0027d79b          	srliw	a5,a5,0x2
   173ec:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_gp+0xffffffffbffe2930>
   173f0:	00200513          	li	a0,2
   173f4:	00008067          	ret
   173f8:	0107961b          	slliw	a2,a5,0x10
   173fc:	0106561b          	srliw	a2,a2,0x10
   17400:	00000713          	li	a4,0
   17404:	00061663          	bnez	a2,17410 <__lo0bits+0x4c>
   17408:	0107d79b          	srliw	a5,a5,0x10
   1740c:	01000713          	li	a4,16
   17410:	0ff7f613          	andi	a2,a5,255
   17414:	00061663          	bnez	a2,17420 <__lo0bits+0x5c>
   17418:	0087071b          	addiw	a4,a4,8
   1741c:	0087d79b          	srliw	a5,a5,0x8
   17420:	00f7f613          	andi	a2,a5,15
   17424:	00061663          	bnez	a2,17430 <__lo0bits+0x6c>
   17428:	0047071b          	addiw	a4,a4,4
   1742c:	0047d79b          	srliw	a5,a5,0x4
   17430:	0037f613          	andi	a2,a5,3
   17434:	00061663          	bnez	a2,17440 <__lo0bits+0x7c>
   17438:	0027071b          	addiw	a4,a4,2
   1743c:	0027d79b          	srliw	a5,a5,0x2
   17440:	0017f613          	andi	a2,a5,1
   17444:	00061a63          	bnez	a2,17458 <__lo0bits+0x94>
   17448:	0017d79b          	srliw	a5,a5,0x1
   1744c:	02000513          	li	a0,32
   17450:	00078863          	beqz	a5,17460 <__lo0bits+0x9c>
   17454:	0017071b          	addiw	a4,a4,1
   17458:	00f6a023          	sw	a5,0(a3)
   1745c:	00070513          	mv	a0,a4
   17460:	00008067          	ret
   17464:	0017d79b          	srliw	a5,a5,0x1
   17468:	00f6a023          	sw	a5,0(a3)
   1746c:	00100513          	li	a0,1
   17470:	00008067          	ret

0000000000017474 <__i2b>:
   17474:	ff010113          	addi	sp,sp,-16
   17478:	00813023          	sd	s0,0(sp)
   1747c:	00058413          	mv	s0,a1
   17480:	00100593          	li	a1,1
   17484:	00113423          	sd	ra,8(sp)
   17488:	bb5ff0ef          	jal	ra,1703c <_Balloc>
   1748c:	00813083          	ld	ra,8(sp)
   17490:	00100713          	li	a4,1
   17494:	00852c23          	sw	s0,24(a0)
   17498:	00e52a23          	sw	a4,20(a0)
   1749c:	00013403          	ld	s0,0(sp)
   174a0:	01010113          	addi	sp,sp,16
   174a4:	00008067          	ret

00000000000174a8 <__multiply>:
   174a8:	fd010113          	addi	sp,sp,-48
   174ac:	01313423          	sd	s3,8(sp)
   174b0:	01413023          	sd	s4,0(sp)
   174b4:	0145a983          	lw	s3,20(a1)
   174b8:	01462a03          	lw	s4,20(a2)
   174bc:	00913c23          	sd	s1,24(sp)
   174c0:	01213823          	sd	s2,16(sp)
   174c4:	02113423          	sd	ra,40(sp)
   174c8:	02813023          	sd	s0,32(sp)
   174cc:	00058913          	mv	s2,a1
   174d0:	00060493          	mv	s1,a2
   174d4:	0149dc63          	ble	s4,s3,174ec <__multiply+0x44>
   174d8:	00098713          	mv	a4,s3
   174dc:	00060913          	mv	s2,a2
   174e0:	000a0993          	mv	s3,s4
   174e4:	00058493          	mv	s1,a1
   174e8:	00070a13          	mv	s4,a4
   174ec:	00c92783          	lw	a5,12(s2)
   174f0:	00892583          	lw	a1,8(s2)
   174f4:	0149843b          	addw	s0,s3,s4
   174f8:	0087a7b3          	slt	a5,a5,s0
   174fc:	00f585bb          	addw	a1,a1,a5
   17500:	b3dff0ef          	jal	ra,1703c <_Balloc>
   17504:	00040893          	mv	a7,s0
   17508:	01850313          	addi	t1,a0,24
   1750c:	00289893          	slli	a7,a7,0x2
   17510:	011308b3          	add	a7,t1,a7
   17514:	00030793          	mv	a5,t1
   17518:	01137863          	bleu	a7,t1,17528 <__multiply+0x80>
   1751c:	0007a023          	sw	zero,0(a5)
   17520:	00478793          	addi	a5,a5,4
   17524:	ff17ece3          	bltu	a5,a7,1751c <__multiply+0x74>
   17528:	01848613          	addi	a2,s1,24
   1752c:	002a1e13          	slli	t3,s4,0x2
   17530:	01890e93          	addi	t4,s2,24
   17534:	00299813          	slli	a6,s3,0x2
   17538:	000105b7          	lui	a1,0x10
   1753c:	01c60e33          	add	t3,a2,t3
   17540:	010e8833          	add	a6,t4,a6
   17544:	fff5859b          	addiw	a1,a1,-1
   17548:	11c67463          	bleu	t3,a2,17650 <__multiply+0x1a8>
   1754c:	00062383          	lw	t2,0(a2)
   17550:	00b3f4b3          	and	s1,t2,a1
   17554:	06048a63          	beqz	s1,175c8 <__multiply+0x120>
   17558:	00030293          	mv	t0,t1
   1755c:	000e8f93          	mv	t6,t4
   17560:	00000793          	li	a5,0
   17564:	0080006f          	j	1756c <__multiply+0xc4>
   17568:	00038293          	mv	t0,t2
   1756c:	000fa683          	lw	a3,0(t6)
   17570:	0002af03          	lw	t5,0(t0) # 12a44 <memset+0xb4>
   17574:	00428393          	addi	t2,t0,4
   17578:	00b6f733          	and	a4,a3,a1
   1757c:	0297073b          	mulw	a4,a4,s1
   17580:	0106d69b          	srliw	a3,a3,0x10
   17584:	00bf7933          	and	s2,t5,a1
   17588:	010f5f1b          	srliw	t5,t5,0x10
   1758c:	004f8f93          	addi	t6,t6,4
   17590:	029686bb          	mulw	a3,a3,s1
   17594:	0127073b          	addw	a4,a4,s2
   17598:	00f707bb          	addw	a5,a4,a5
   1759c:	0107d71b          	srliw	a4,a5,0x10
   175a0:	00b7f7b3          	and	a5,a5,a1
   175a4:	01e686bb          	addw	a3,a3,t5
   175a8:	00e6873b          	addw	a4,a3,a4
   175ac:	0107169b          	slliw	a3,a4,0x10
   175b0:	00f6e7b3          	or	a5,a3,a5
   175b4:	fef3ae23          	sw	a5,-4(t2)
   175b8:	0107579b          	srliw	a5,a4,0x10
   175bc:	fb0fe6e3          	bltu	t6,a6,17568 <__multiply+0xc0>
   175c0:	00f2a223          	sw	a5,4(t0)
   175c4:	00062383          	lw	t2,0(a2)
   175c8:	0103d39b          	srliw	t2,t2,0x10
   175cc:	06038c63          	beqz	t2,17644 <__multiply+0x19c>
   175d0:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   175d4:	00030293          	mv	t0,t1
   175d8:	000e8f93          	mv	t6,t4
   175dc:	00078f13          	mv	t5,a5
   175e0:	00000693          	li	a3,0
   175e4:	0080006f          	j	175ec <__multiply+0x144>
   175e8:	00048293          	mv	t0,s1
   175ec:	000fa703          	lw	a4,0(t6)
   175f0:	010f5f1b          	srliw	t5,t5,0x10
   175f4:	00b7f7b3          	and	a5,a5,a1
   175f8:	00b77733          	and	a4,a4,a1
   175fc:	0277073b          	mulw	a4,a4,t2
   17600:	00428493          	addi	s1,t0,4
   17604:	004f8f93          	addi	t6,t6,4
   17608:	01e7073b          	addw	a4,a4,t5
   1760c:	00d706bb          	addw	a3,a4,a3
   17610:	0106971b          	slliw	a4,a3,0x10
   17614:	00f767b3          	or	a5,a4,a5
   17618:	fef4ae23          	sw	a5,-4(s1)
   1761c:	ffefd703          	lhu	a4,-2(t6)
   17620:	0042af03          	lw	t5,4(t0)
   17624:	0106d69b          	srliw	a3,a3,0x10
   17628:	0277073b          	mulw	a4,a4,t2
   1762c:	00bf77b3          	and	a5,t5,a1
   17630:	00f707bb          	addw	a5,a4,a5
   17634:	00d787bb          	addw	a5,a5,a3
   17638:	0107d69b          	srliw	a3,a5,0x10
   1763c:	fb0fe6e3          	bltu	t6,a6,175e8 <__multiply+0x140>
   17640:	00f2a223          	sw	a5,4(t0)
   17644:	00460613          	addi	a2,a2,4
   17648:	00430313          	addi	t1,t1,4
   1764c:	f1c660e3          	bltu	a2,t3,1754c <__multiply+0xa4>
   17650:	02805463          	blez	s0,17678 <__multiply+0x1d0>
   17654:	ffc8a783          	lw	a5,-4(a7)
   17658:	ffc88893          	addi	a7,a7,-4
   1765c:	00078863          	beqz	a5,1766c <__multiply+0x1c4>
   17660:	0180006f          	j	17678 <__multiply+0x1d0>
   17664:	0008a783          	lw	a5,0(a7)
   17668:	00079863          	bnez	a5,17678 <__multiply+0x1d0>
   1766c:	fff4041b          	addiw	s0,s0,-1
   17670:	ffc88893          	addi	a7,a7,-4
   17674:	fe0418e3          	bnez	s0,17664 <__multiply+0x1bc>
   17678:	02813083          	ld	ra,40(sp)
   1767c:	00852a23          	sw	s0,20(a0)
   17680:	01813483          	ld	s1,24(sp)
   17684:	02013403          	ld	s0,32(sp)
   17688:	01013903          	ld	s2,16(sp)
   1768c:	00813983          	ld	s3,8(sp)
   17690:	00013a03          	ld	s4,0(sp)
   17694:	03010113          	addi	sp,sp,48
   17698:	00008067          	ret

000000000001769c <__pow5mult>:
   1769c:	fd010113          	addi	sp,sp,-48
   176a0:	02813023          	sd	s0,32(sp)
   176a4:	01213823          	sd	s2,16(sp)
   176a8:	01313423          	sd	s3,8(sp)
   176ac:	02113423          	sd	ra,40(sp)
   176b0:	00913c23          	sd	s1,24(sp)
   176b4:	00367793          	andi	a5,a2,3
   176b8:	00060413          	mv	s0,a2
   176bc:	00050993          	mv	s3,a0
   176c0:	00058913          	mv	s2,a1
   176c4:	0a079e63          	bnez	a5,17780 <__pow5mult+0xe4>
   176c8:	4024541b          	sraiw	s0,s0,0x2
   176cc:	06040663          	beqz	s0,17738 <__pow5mult+0x9c>
   176d0:	0709b483          	ld	s1,112(s3)
   176d4:	0c048a63          	beqz	s1,177a8 <__pow5mult+0x10c>
   176d8:	00147793          	andi	a5,s0,1
   176dc:	02079063          	bnez	a5,176fc <__pow5mult+0x60>
   176e0:	4014541b          	sraiw	s0,s0,0x1
   176e4:	04040a63          	beqz	s0,17738 <__pow5mult+0x9c>
   176e8:	0004b503          	ld	a0,0(s1)
   176ec:	06050663          	beqz	a0,17758 <__pow5mult+0xbc>
   176f0:	00050493          	mv	s1,a0
   176f4:	00147793          	andi	a5,s0,1
   176f8:	fe0784e3          	beqz	a5,176e0 <__pow5mult+0x44>
   176fc:	00048613          	mv	a2,s1
   17700:	00090593          	mv	a1,s2
   17704:	00098513          	mv	a0,s3
   17708:	da1ff0ef          	jal	ra,174a8 <__multiply>
   1770c:	06090663          	beqz	s2,17778 <__pow5mult+0xdc>
   17710:	00892783          	lw	a5,8(s2)
   17714:	0789b703          	ld	a4,120(s3)
   17718:	4014541b          	sraiw	s0,s0,0x1
   1771c:	00379793          	slli	a5,a5,0x3
   17720:	00f707b3          	add	a5,a4,a5
   17724:	0007b703          	ld	a4,0(a5)
   17728:	00e93023          	sd	a4,0(s2)
   1772c:	0127b023          	sd	s2,0(a5)
   17730:	00050913          	mv	s2,a0
   17734:	fa041ae3          	bnez	s0,176e8 <__pow5mult+0x4c>
   17738:	02813083          	ld	ra,40(sp)
   1773c:	00090513          	mv	a0,s2
   17740:	02013403          	ld	s0,32(sp)
   17744:	01813483          	ld	s1,24(sp)
   17748:	01013903          	ld	s2,16(sp)
   1774c:	00813983          	ld	s3,8(sp)
   17750:	03010113          	addi	sp,sp,48
   17754:	00008067          	ret
   17758:	00048613          	mv	a2,s1
   1775c:	00048593          	mv	a1,s1
   17760:	00098513          	mv	a0,s3
   17764:	d45ff0ef          	jal	ra,174a8 <__multiply>
   17768:	00a4b023          	sd	a0,0(s1)
   1776c:	00053023          	sd	zero,0(a0)
   17770:	00050493          	mv	s1,a0
   17774:	f81ff06f          	j	176f4 <__pow5mult+0x58>
   17778:	00050913          	mv	s2,a0
   1777c:	f65ff06f          	j	176e0 <__pow5mult+0x44>
   17780:	fff7879b          	addiw	a5,a5,-1
   17784:	0001b737          	lui	a4,0x1b
   17788:	82070713          	addi	a4,a4,-2016 # 1a820 <p05.2568>
   1778c:	00279793          	slli	a5,a5,0x2
   17790:	00f707b3          	add	a5,a4,a5
   17794:	0007a603          	lw	a2,0(a5)
   17798:	00000693          	li	a3,0
   1779c:	971ff0ef          	jal	ra,1710c <__multadd>
   177a0:	00050913          	mv	s2,a0
   177a4:	f25ff06f          	j	176c8 <__pow5mult+0x2c>
   177a8:	00100593          	li	a1,1
   177ac:	00098513          	mv	a0,s3
   177b0:	88dff0ef          	jal	ra,1703c <_Balloc>
   177b4:	27100793          	li	a5,625
   177b8:	00f52c23          	sw	a5,24(a0)
   177bc:	00100793          	li	a5,1
   177c0:	00f52a23          	sw	a5,20(a0)
   177c4:	06a9b823          	sd	a0,112(s3)
   177c8:	00050493          	mv	s1,a0
   177cc:	00053023          	sd	zero,0(a0)
   177d0:	f09ff06f          	j	176d8 <__pow5mult+0x3c>

00000000000177d4 <__lshift>:
   177d4:	fc010113          	addi	sp,sp,-64
   177d8:	01513423          	sd	s5,8(sp)
   177dc:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   177e0:	02813823          	sd	s0,48(sp)
   177e4:	00c5a783          	lw	a5,12(a1)
   177e8:	4056541b          	sraiw	s0,a2,0x5
   177ec:	01540abb          	addw	s5,s0,s5
   177f0:	02913423          	sd	s1,40(sp)
   177f4:	03213023          	sd	s2,32(sp)
   177f8:	01313c23          	sd	s3,24(sp)
   177fc:	01413823          	sd	s4,16(sp)
   17800:	02113c23          	sd	ra,56(sp)
   17804:	001a849b          	addiw	s1,s5,1
   17808:	00058913          	mv	s2,a1
   1780c:	00060993          	mv	s3,a2
   17810:	00050a13          	mv	s4,a0
   17814:	0085a583          	lw	a1,8(a1)
   17818:	0097d863          	ble	s1,a5,17828 <__lshift+0x54>
   1781c:	0017979b          	slliw	a5,a5,0x1
   17820:	0015859b          	addiw	a1,a1,1
   17824:	fe97cce3          	blt	a5,s1,1781c <__lshift+0x48>
   17828:	000a0513          	mv	a0,s4
   1782c:	811ff0ef          	jal	ra,1703c <_Balloc>
   17830:	01850793          	addi	a5,a0,24
   17834:	0e805c63          	blez	s0,1792c <__lshift+0x158>
   17838:	fff4071b          	addiw	a4,s0,-1
   1783c:	02071713          	slli	a4,a4,0x20
   17840:	02075713          	srli	a4,a4,0x20
   17844:	00170713          	addi	a4,a4,1
   17848:	00271713          	slli	a4,a4,0x2
   1784c:	00e78733          	add	a4,a5,a4
   17850:	00478793          	addi	a5,a5,4
   17854:	fe07ae23          	sw	zero,-4(a5)
   17858:	fee79ce3          	bne	a5,a4,17850 <__lshift+0x7c>
   1785c:	01492883          	lw	a7,20(s2)
   17860:	01890793          	addi	a5,s2,24
   17864:	01f9f613          	andi	a2,s3,31
   17868:	00289893          	slli	a7,a7,0x2
   1786c:	011788b3          	add	a7,a5,a7
   17870:	08060863          	beqz	a2,17900 <__lshift+0x12c>
   17874:	02000313          	li	t1,32
   17878:	40c3033b          	subw	t1,t1,a2
   1787c:	00000693          	li	a3,0
   17880:	0080006f          	j	17888 <__lshift+0xb4>
   17884:	00080713          	mv	a4,a6
   17888:	0007a583          	lw	a1,0(a5)
   1788c:	00470813          	addi	a6,a4,4
   17890:	00478793          	addi	a5,a5,4
   17894:	00c595bb          	sllw	a1,a1,a2
   17898:	00d5e6b3          	or	a3,a1,a3
   1789c:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   178a0:	ffc7a683          	lw	a3,-4(a5)
   178a4:	0066d6bb          	srlw	a3,a3,t1
   178a8:	fd17eee3          	bltu	a5,a7,17884 <__lshift+0xb0>
   178ac:	00d72223          	sw	a3,4(a4)
   178b0:	00068463          	beqz	a3,178b8 <__lshift+0xe4>
   178b4:	002a849b          	addiw	s1,s5,2
   178b8:	00892783          	lw	a5,8(s2)
   178bc:	078a3703          	ld	a4,120(s4) # ffffffff80000078 <_gp+0xffffffff7ffe29a8>
   178c0:	fff4849b          	addiw	s1,s1,-1
   178c4:	00379793          	slli	a5,a5,0x3
   178c8:	00f707b3          	add	a5,a4,a5
   178cc:	0007b703          	ld	a4,0(a5)
   178d0:	03813083          	ld	ra,56(sp)
   178d4:	00952a23          	sw	s1,20(a0)
   178d8:	00e93023          	sd	a4,0(s2)
   178dc:	0127b023          	sd	s2,0(a5)
   178e0:	03013403          	ld	s0,48(sp)
   178e4:	02813483          	ld	s1,40(sp)
   178e8:	02013903          	ld	s2,32(sp)
   178ec:	01813983          	ld	s3,24(sp)
   178f0:	01013a03          	ld	s4,16(sp)
   178f4:	00813a83          	ld	s5,8(sp)
   178f8:	04010113          	addi	sp,sp,64
   178fc:	00008067          	ret
   17900:	00478793          	addi	a5,a5,4
   17904:	ffc7a683          	lw	a3,-4(a5)
   17908:	00470713          	addi	a4,a4,4
   1790c:	fed72e23          	sw	a3,-4(a4)
   17910:	fb17f4e3          	bleu	a7,a5,178b8 <__lshift+0xe4>
   17914:	00478793          	addi	a5,a5,4
   17918:	ffc7a683          	lw	a3,-4(a5)
   1791c:	00470713          	addi	a4,a4,4
   17920:	fed72e23          	sw	a3,-4(a4)
   17924:	fd17eee3          	bltu	a5,a7,17900 <__lshift+0x12c>
   17928:	f91ff06f          	j	178b8 <__lshift+0xe4>
   1792c:	00078713          	mv	a4,a5
   17930:	f2dff06f          	j	1785c <__lshift+0x88>

0000000000017934 <__mcmp>:
   17934:	01452783          	lw	a5,20(a0)
   17938:	0145a703          	lw	a4,20(a1)
   1793c:	40e787bb          	subw	a5,a5,a4
   17940:	04079263          	bnez	a5,17984 <__mcmp+0x50>
   17944:	00271713          	slli	a4,a4,0x2
   17948:	01850513          	addi	a0,a0,24
   1794c:	01858593          	addi	a1,a1,24
   17950:	00e507b3          	add	a5,a0,a4
   17954:	00e585b3          	add	a1,a1,a4
   17958:	0080006f          	j	17960 <__mcmp+0x2c>
   1795c:	02f57863          	bleu	a5,a0,1798c <__mcmp+0x58>
   17960:	ffc78793          	addi	a5,a5,-4
   17964:	ffc58593          	addi	a1,a1,-4
   17968:	0007a703          	lw	a4,0(a5)
   1796c:	0005a683          	lw	a3,0(a1)
   17970:	fed706e3          	beq	a4,a3,1795c <__mcmp+0x28>
   17974:	00d737b3          	sltu	a5,a4,a3
   17978:	40f007bb          	negw	a5,a5
   1797c:	0017e513          	ori	a0,a5,1
   17980:	00008067          	ret
   17984:	00078513          	mv	a0,a5
   17988:	00008067          	ret
   1798c:	00000513          	li	a0,0
   17990:	00008067          	ret

0000000000017994 <__mdiff>:
   17994:	0145a703          	lw	a4,20(a1)
   17998:	01462783          	lw	a5,20(a2)
   1799c:	fd010113          	addi	sp,sp,-48
   179a0:	01213823          	sd	s2,16(sp)
   179a4:	01313423          	sd	s3,8(sp)
   179a8:	02113423          	sd	ra,40(sp)
   179ac:	02813023          	sd	s0,32(sp)
   179b0:	00913c23          	sd	s1,24(sp)
   179b4:	01413023          	sd	s4,0(sp)
   179b8:	40f7073b          	subw	a4,a4,a5
   179bc:	00058913          	mv	s2,a1
   179c0:	00060993          	mv	s3,a2
   179c4:	04071863          	bnez	a4,17a14 <__mdiff+0x80>
   179c8:	00279713          	slli	a4,a5,0x2
   179cc:	01858813          	addi	a6,a1,24
   179d0:	01860413          	addi	s0,a2,24
   179d4:	00e807b3          	add	a5,a6,a4
   179d8:	00e40733          	add	a4,s0,a4
   179dc:	0080006f          	j	179e4 <__mdiff+0x50>
   179e0:	16f87263          	bleu	a5,a6,17b44 <__mdiff+0x1b0>
   179e4:	ffc78793          	addi	a5,a5,-4
   179e8:	ffc70713          	addi	a4,a4,-4
   179ec:	0007a583          	lw	a1,0(a5)
   179f0:	00072683          	lw	a3,0(a4)
   179f4:	fed586e3          	beq	a1,a3,179e0 <__mdiff+0x4c>
   179f8:	18d5f063          	bleu	a3,a1,17b78 <__mdiff+0x1e4>
   179fc:	00090793          	mv	a5,s2
   17a00:	00080493          	mv	s1,a6
   17a04:	00098913          	mv	s2,s3
   17a08:	00100a13          	li	s4,1
   17a0c:	00078993          	mv	s3,a5
   17a10:	0140006f          	j	17a24 <__mdiff+0x90>
   17a14:	16074a63          	bltz	a4,17b88 <__mdiff+0x1f4>
   17a18:	01860493          	addi	s1,a2,24
   17a1c:	01858413          	addi	s0,a1,24
   17a20:	00000a13          	li	s4,0
   17a24:	00892583          	lw	a1,8(s2)
   17a28:	e14ff0ef          	jal	ra,1703c <_Balloc>
   17a2c:	01492e03          	lw	t3,20(s2)
   17a30:	0149af03          	lw	t5,20(s3)
   17a34:	00010337          	lui	t1,0x10
   17a38:	002e1e93          	slli	t4,t3,0x2
   17a3c:	002f1f13          	slli	t5,t5,0x2
   17a40:	01452823          	sw	s4,16(a0)
   17a44:	01d40eb3          	add	t4,s0,t4
   17a48:	01e48f33          	add	t5,s1,t5
   17a4c:	01850813          	addi	a6,a0,24
   17a50:	00000693          	li	a3,0
   17a54:	fff3031b          	addiw	t1,t1,-1
   17a58:	00042583          	lw	a1,0(s0)
   17a5c:	0004a883          	lw	a7,0(s1)
   17a60:	00480813          	addi	a6,a6,4
   17a64:	0065f633          	and	a2,a1,t1
   17a68:	00d606bb          	addw	a3,a2,a3
   17a6c:	0068f733          	and	a4,a7,t1
   17a70:	40e6873b          	subw	a4,a3,a4
   17a74:	0105d59b          	srliw	a1,a1,0x10
   17a78:	0108d69b          	srliw	a3,a7,0x10
   17a7c:	40d585bb          	subw	a1,a1,a3
   17a80:	4107569b          	sraiw	a3,a4,0x10
   17a84:	00d586bb          	addw	a3,a1,a3
   17a88:	0106979b          	slliw	a5,a3,0x10
   17a8c:	00677733          	and	a4,a4,t1
   17a90:	00e7e7b3          	or	a5,a5,a4
   17a94:	00448493          	addi	s1,s1,4
   17a98:	fef82e23          	sw	a5,-4(a6)
   17a9c:	00440413          	addi	s0,s0,4
   17aa0:	4106d69b          	sraiw	a3,a3,0x10
   17aa4:	fbe4eae3          	bltu	s1,t5,17a58 <__mdiff+0xc4>
   17aa8:	07d47063          	bleu	t4,s0,17b08 <__mdiff+0x174>
   17aac:	00010f37          	lui	t5,0x10
   17ab0:	00080313          	mv	t1,a6
   17ab4:	00040893          	mv	a7,s0
   17ab8:	ffff0f1b          	addiw	t5,t5,-1
   17abc:	0008a583          	lw	a1,0(a7)
   17ac0:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   17ac4:	00488893          	addi	a7,a7,4
   17ac8:	01e5f633          	and	a2,a1,t5
   17acc:	00d606bb          	addw	a3,a2,a3
   17ad0:	4106d71b          	sraiw	a4,a3,0x10
   17ad4:	0105d59b          	srliw	a1,a1,0x10
   17ad8:	00e5873b          	addw	a4,a1,a4
   17adc:	01e6f6b3          	and	a3,a3,t5
   17ae0:	0107179b          	slliw	a5,a4,0x10
   17ae4:	00d7e7b3          	or	a5,a5,a3
   17ae8:	fef32e23          	sw	a5,-4(t1)
   17aec:	4107569b          	sraiw	a3,a4,0x10
   17af0:	fdd8e6e3          	bltu	a7,t4,17abc <__mdiff+0x128>
   17af4:	fff44413          	not	s0,s0
   17af8:	01d40eb3          	add	t4,s0,t4
   17afc:	ffcefe93          	andi	t4,t4,-4
   17b00:	004e8e93          	addi	t4,t4,4
   17b04:	01d80833          	add	a6,a6,t4
   17b08:	ffc80813          	addi	a6,a6,-4
   17b0c:	00079a63          	bnez	a5,17b20 <__mdiff+0x18c>
   17b10:	ffc80813          	addi	a6,a6,-4
   17b14:	00082783          	lw	a5,0(a6)
   17b18:	fffe0e1b          	addiw	t3,t3,-1
   17b1c:	fe078ae3          	beqz	a5,17b10 <__mdiff+0x17c>
   17b20:	02813083          	ld	ra,40(sp)
   17b24:	02013403          	ld	s0,32(sp)
   17b28:	01813483          	ld	s1,24(sp)
   17b2c:	01013903          	ld	s2,16(sp)
   17b30:	00813983          	ld	s3,8(sp)
   17b34:	00013a03          	ld	s4,0(sp)
   17b38:	01c52a23          	sw	t3,20(a0)
   17b3c:	03010113          	addi	sp,sp,48
   17b40:	00008067          	ret
   17b44:	00000593          	li	a1,0
   17b48:	cf4ff0ef          	jal	ra,1703c <_Balloc>
   17b4c:	02813083          	ld	ra,40(sp)
   17b50:	00100793          	li	a5,1
   17b54:	02013403          	ld	s0,32(sp)
   17b58:	01813483          	ld	s1,24(sp)
   17b5c:	01013903          	ld	s2,16(sp)
   17b60:	00813983          	ld	s3,8(sp)
   17b64:	00013a03          	ld	s4,0(sp)
   17b68:	00f52a23          	sw	a5,20(a0)
   17b6c:	00052c23          	sw	zero,24(a0)
   17b70:	03010113          	addi	sp,sp,48
   17b74:	00008067          	ret
   17b78:	00040493          	mv	s1,s0
   17b7c:	00000a13          	li	s4,0
   17b80:	00080413          	mv	s0,a6
   17b84:	ea1ff06f          	j	17a24 <__mdiff+0x90>
   17b88:	00090793          	mv	a5,s2
   17b8c:	01890493          	addi	s1,s2,24
   17b90:	01898413          	addi	s0,s3,24
   17b94:	00098913          	mv	s2,s3
   17b98:	00100a13          	li	s4,1
   17b9c:	00078993          	mv	s3,a5
   17ba0:	e85ff06f          	j	17a24 <__mdiff+0x90>

0000000000017ba4 <__ulp>:
   17ba4:	e20507d3          	fmv.x.d	a5,fa0
   17ba8:	7ff00737          	lui	a4,0x7ff00
   17bac:	4207d793          	srai	a5,a5,0x20
   17bb0:	00e7f7b3          	and	a5,a5,a4
   17bb4:	fcc00737          	lui	a4,0xfcc00
   17bb8:	00e787bb          	addw	a5,a5,a4
   17bbc:	00f05863          	blez	a5,17bcc <__ulp+0x28>
   17bc0:	02079793          	slli	a5,a5,0x20
   17bc4:	f2078553          	fmv.d.x	fa0,a5
   17bc8:	00008067          	ret
   17bcc:	40f007bb          	negw	a5,a5
   17bd0:	4147d79b          	sraiw	a5,a5,0x14
   17bd4:	01300713          	li	a4,19
   17bd8:	04f75063          	ble	a5,a4,17c18 <__ulp+0x74>
   17bdc:	fec7869b          	addiw	a3,a5,-20
   17be0:	01e00613          	li	a2,30
   17be4:	00000793          	li	a5,0
   17be8:	00100713          	li	a4,1
   17bec:	00d64663          	blt	a2,a3,17bf8 <__ulp+0x54>
   17bf0:	fff6c693          	not	a3,a3
   17bf4:	00d7173b          	sllw	a4,a4,a3
   17bf8:	fff00693          	li	a3,-1
   17bfc:	02069693          	slli	a3,a3,0x20
   17c00:	02071713          	slli	a4,a4,0x20
   17c04:	02075713          	srli	a4,a4,0x20
   17c08:	00d7f7b3          	and	a5,a5,a3
   17c0c:	00e7e7b3          	or	a5,a5,a4
   17c10:	f2078553          	fmv.d.x	fa0,a5
   17c14:	00008067          	ret
   17c18:	00080737          	lui	a4,0x80
   17c1c:	40f757bb          	sraw	a5,a4,a5
   17c20:	fa1ff06f          	j	17bc0 <__ulp+0x1c>

0000000000017c24 <__b2d>:
   17c24:	fd010113          	addi	sp,sp,-48
   17c28:	02813023          	sd	s0,32(sp)
   17c2c:	01452403          	lw	s0,20(a0)
   17c30:	00913c23          	sd	s1,24(sp)
   17c34:	01850493          	addi	s1,a0,24
   17c38:	00241413          	slli	s0,s0,0x2
   17c3c:	00848433          	add	s0,s1,s0
   17c40:	01213823          	sd	s2,16(sp)
   17c44:	ffc42903          	lw	s2,-4(s0)
   17c48:	01313423          	sd	s3,8(sp)
   17c4c:	01413023          	sd	s4,0(sp)
   17c50:	00090513          	mv	a0,s2
   17c54:	00058a13          	mv	s4,a1
   17c58:	02113423          	sd	ra,40(sp)
   17c5c:	eecff0ef          	jal	ra,17348 <__hi0bits>
   17c60:	02000793          	li	a5,32
   17c64:	40a7873b          	subw	a4,a5,a0
   17c68:	00ea2023          	sw	a4,0(s4)
   17c6c:	00a00713          	li	a4,10
   17c70:	ffc40993          	addi	s3,s0,-4
   17c74:	06a74a63          	blt	a4,a0,17ce8 <__b2d+0xc4>
   17c78:	00b00693          	li	a3,11
   17c7c:	40a686bb          	subw	a3,a3,a0
   17c80:	3ff00737          	lui	a4,0x3ff00
   17c84:	00d957bb          	srlw	a5,s2,a3
   17c88:	00e7e7b3          	or	a5,a5,a4
   17c8c:	02079793          	slli	a5,a5,0x20
   17c90:	00000713          	li	a4,0
   17c94:	0134f663          	bleu	s3,s1,17ca0 <__b2d+0x7c>
   17c98:	ff842703          	lw	a4,-8(s0)
   17c9c:	00d7573b          	srlw	a4,a4,a3
   17ca0:	0155051b          	addiw	a0,a0,21
   17ca4:	00a9153b          	sllw	a0,s2,a0
   17ca8:	00e56533          	or	a0,a0,a4
   17cac:	fff00713          	li	a4,-1
   17cb0:	02051513          	slli	a0,a0,0x20
   17cb4:	02071713          	slli	a4,a4,0x20
   17cb8:	02055513          	srli	a0,a0,0x20
   17cbc:	00e7f7b3          	and	a5,a5,a4
   17cc0:	00a7e7b3          	or	a5,a5,a0
   17cc4:	02813083          	ld	ra,40(sp)
   17cc8:	f2078553          	fmv.d.x	fa0,a5
   17ccc:	02013403          	ld	s0,32(sp)
   17cd0:	01813483          	ld	s1,24(sp)
   17cd4:	01013903          	ld	s2,16(sp)
   17cd8:	00813983          	ld	s3,8(sp)
   17cdc:	00013a03          	ld	s4,0(sp)
   17ce0:	03010113          	addi	sp,sp,48
   17ce4:	00008067          	ret
   17ce8:	ff55051b          	addiw	a0,a0,-11
   17cec:	0534f263          	bleu	s3,s1,17d30 <__b2d+0x10c>
   17cf0:	ff842683          	lw	a3,-8(s0)
   17cf4:	04050263          	beqz	a0,17d38 <__b2d+0x114>
   17cf8:	40a7863b          	subw	a2,a5,a0
   17cfc:	00a917bb          	sllw	a5,s2,a0
   17d00:	3ff00937          	lui	s2,0x3ff00
   17d04:	00c6d73b          	srlw	a4,a3,a2
   17d08:	0127e7b3          	or	a5,a5,s2
   17d0c:	00e7e7b3          	or	a5,a5,a4
   17d10:	ff840713          	addi	a4,s0,-8
   17d14:	02079793          	slli	a5,a5,0x20
   17d18:	04e4fa63          	bleu	a4,s1,17d6c <__b2d+0x148>
   17d1c:	ff442703          	lw	a4,-12(s0)
   17d20:	00a6953b          	sllw	a0,a3,a0
   17d24:	00c756bb          	srlw	a3,a4,a2
   17d28:	00a6e533          	or	a0,a3,a0
   17d2c:	f81ff06f          	j	17cac <__b2d+0x88>
   17d30:	00000693          	li	a3,0
   17d34:	02051063          	bnez	a0,17d54 <__b2d+0x130>
   17d38:	3ff00737          	lui	a4,0x3ff00
   17d3c:	00e967b3          	or	a5,s2,a4
   17d40:	02069693          	slli	a3,a3,0x20
   17d44:	0206d693          	srli	a3,a3,0x20
   17d48:	02079793          	slli	a5,a5,0x20
   17d4c:	00d7e7b3          	or	a5,a5,a3
   17d50:	f75ff06f          	j	17cc4 <__b2d+0xa0>
   17d54:	00a917bb          	sllw	a5,s2,a0
   17d58:	3ff00737          	lui	a4,0x3ff00
   17d5c:	00e7e7b3          	or	a5,a5,a4
   17d60:	02079793          	slli	a5,a5,0x20
   17d64:	00000513          	li	a0,0
   17d68:	f45ff06f          	j	17cac <__b2d+0x88>
   17d6c:	00a6953b          	sllw	a0,a3,a0
   17d70:	f3dff06f          	j	17cac <__b2d+0x88>

0000000000017d74 <__d2b>:
   17d74:	fc010113          	addi	sp,sp,-64
   17d78:	02813823          	sd	s0,48(sp)
   17d7c:	e2058453          	fmv.x.d	s0,fa1
   17d80:	00100593          	li	a1,1
   17d84:	02913423          	sd	s1,40(sp)
   17d88:	03213023          	sd	s2,32(sp)
   17d8c:	01313c23          	sd	s3,24(sp)
   17d90:	01413823          	sd	s4,16(sp)
   17d94:	00068993          	mv	s3,a3
   17d98:	02113c23          	sd	ra,56(sp)
   17d9c:	00060a13          	mv	s4,a2
   17da0:	a9cff0ef          	jal	ra,1703c <_Balloc>
   17da4:	42045793          	srai	a5,s0,0x20
   17da8:	02179493          	slli	s1,a5,0x21
   17dac:	001006b7          	lui	a3,0x100
   17db0:	fff6871b          	addiw	a4,a3,-1
   17db4:	0354d493          	srli	s1,s1,0x35
   17db8:	00050913          	mv	s2,a0
   17dbc:	00e7f7b3          	and	a5,a5,a4
   17dc0:	00048463          	beqz	s1,17dc8 <__d2b+0x54>
   17dc4:	00d7e7b3          	or	a5,a5,a3
   17dc8:	00f12623          	sw	a5,12(sp)
   17dcc:	0004041b          	sext.w	s0,s0
   17dd0:	08040063          	beqz	s0,17e50 <__d2b+0xdc>
   17dd4:	00810513          	addi	a0,sp,8
   17dd8:	00812423          	sw	s0,8(sp)
   17ddc:	de8ff0ef          	jal	ra,173c4 <__lo0bits>
   17de0:	00c12783          	lw	a5,12(sp)
   17de4:	0a051463          	bnez	a0,17e8c <__d2b+0x118>
   17de8:	00812703          	lw	a4,8(sp)
   17dec:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_gp+0x3fee2948>
   17df0:	0017b413          	seqz	s0,a5
   17df4:	00200713          	li	a4,2
   17df8:	4087043b          	subw	s0,a4,s0
   17dfc:	00f92e23          	sw	a5,28(s2)
   17e00:	00892a23          	sw	s0,20(s2)
   17e04:	06049663          	bnez	s1,17e70 <__d2b+0xfc>
   17e08:	bce5051b          	addiw	a0,a0,-1074
   17e0c:	00241793          	slli	a5,s0,0x2
   17e10:	00aa2023          	sw	a0,0(s4)
   17e14:	00f907b3          	add	a5,s2,a5
   17e18:	0147a503          	lw	a0,20(a5)
   17e1c:	0054141b          	slliw	s0,s0,0x5
   17e20:	d28ff0ef          	jal	ra,17348 <__hi0bits>
   17e24:	40a4053b          	subw	a0,s0,a0
   17e28:	00a9a023          	sw	a0,0(s3)
   17e2c:	03813083          	ld	ra,56(sp)
   17e30:	00090513          	mv	a0,s2
   17e34:	03013403          	ld	s0,48(sp)
   17e38:	02813483          	ld	s1,40(sp)
   17e3c:	02013903          	ld	s2,32(sp)
   17e40:	01813983          	ld	s3,24(sp)
   17e44:	01013a03          	ld	s4,16(sp)
   17e48:	04010113          	addi	sp,sp,64
   17e4c:	00008067          	ret
   17e50:	00c10513          	addi	a0,sp,12
   17e54:	d70ff0ef          	jal	ra,173c4 <__lo0bits>
   17e58:	00c12783          	lw	a5,12(sp)
   17e5c:	00100413          	li	s0,1
   17e60:	00892a23          	sw	s0,20(s2)
   17e64:	00f92c23          	sw	a5,24(s2)
   17e68:	0205051b          	addiw	a0,a0,32
   17e6c:	f8048ee3          	beqz	s1,17e08 <__d2b+0x94>
   17e70:	bcd4849b          	addiw	s1,s1,-1075
   17e74:	00a484bb          	addw	s1,s1,a0
   17e78:	03500793          	li	a5,53
   17e7c:	009a2023          	sw	s1,0(s4)
   17e80:	40a7853b          	subw	a0,a5,a0
   17e84:	00a9a023          	sw	a0,0(s3)
   17e88:	fa5ff06f          	j	17e2c <__d2b+0xb8>
   17e8c:	02000713          	li	a4,32
   17e90:	00812683          	lw	a3,8(sp)
   17e94:	40a7073b          	subw	a4,a4,a0
   17e98:	00e7973b          	sllw	a4,a5,a4
   17e9c:	00d76733          	or	a4,a4,a3
   17ea0:	00a7d7bb          	srlw	a5,a5,a0
   17ea4:	00e92c23          	sw	a4,24(s2)
   17ea8:	00f12623          	sw	a5,12(sp)
   17eac:	f45ff06f          	j	17df0 <__d2b+0x7c>

0000000000017eb0 <__ratio>:
   17eb0:	fd010113          	addi	sp,sp,-48
   17eb4:	00913c23          	sd	s1,24(sp)
   17eb8:	00058493          	mv	s1,a1
   17ebc:	00810593          	addi	a1,sp,8
   17ec0:	02113423          	sd	ra,40(sp)
   17ec4:	02813023          	sd	s0,32(sp)
   17ec8:	01213823          	sd	s2,16(sp)
   17ecc:	00050913          	mv	s2,a0
   17ed0:	d55ff0ef          	jal	ra,17c24 <__b2d>
   17ed4:	00c10593          	addi	a1,sp,12
   17ed8:	00048513          	mv	a0,s1
   17edc:	e2050453          	fmv.x.d	s0,fa0
   17ee0:	d45ff0ef          	jal	ra,17c24 <__b2d>
   17ee4:	01492703          	lw	a4,20(s2)
   17ee8:	0144a783          	lw	a5,20(s1)
   17eec:	00c12603          	lw	a2,12(sp)
   17ef0:	e20506d3          	fmv.x.d	a3,fa0
   17ef4:	40f707bb          	subw	a5,a4,a5
   17ef8:	0057971b          	slliw	a4,a5,0x5
   17efc:	00812783          	lw	a5,8(sp)
   17f00:	40c787bb          	subw	a5,a5,a2
   17f04:	00f707bb          	addw	a5,a4,a5
   17f08:	04f05463          	blez	a5,17f50 <__ratio+0xa0>
   17f0c:	00040713          	mv	a4,s0
   17f10:	0147979b          	slliw	a5,a5,0x14
   17f14:	42045413          	srai	s0,s0,0x20
   17f18:	00f407bb          	addw	a5,s0,a5
   17f1c:	02071413          	slli	s0,a4,0x20
   17f20:	02079793          	slli	a5,a5,0x20
   17f24:	02045413          	srli	s0,s0,0x20
   17f28:	00f46433          	or	s0,s0,a5
   17f2c:	f20407d3          	fmv.d.x	fa5,s0
   17f30:	f2068753          	fmv.d.x	fa4,a3
   17f34:	02813083          	ld	ra,40(sp)
   17f38:	02013403          	ld	s0,32(sp)
   17f3c:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   17f40:	01813483          	ld	s1,24(sp)
   17f44:	01013903          	ld	s2,16(sp)
   17f48:	03010113          	addi	sp,sp,48
   17f4c:	00008067          	ret
   17f50:	00068613          	mv	a2,a3
   17f54:	0147979b          	slliw	a5,a5,0x14
   17f58:	4206d693          	srai	a3,a3,0x20
   17f5c:	40f687bb          	subw	a5,a3,a5
   17f60:	02061693          	slli	a3,a2,0x20
   17f64:	02079793          	slli	a5,a5,0x20
   17f68:	0206d693          	srli	a3,a3,0x20
   17f6c:	00f6e6b3          	or	a3,a3,a5
   17f70:	fbdff06f          	j	17f2c <__ratio+0x7c>

0000000000017f74 <_mprec_log10>:
   17f74:	01700793          	li	a5,23
   17f78:	02a7d263          	ble	a0,a5,17f9c <_mprec_log10+0x28>
   17f7c:	0001d7b7          	lui	a5,0x1d
   17f80:	f487b507          	fld	fa0,-184(a5) # 1cf48 <mask+0x28>
   17f84:	0001d7b7          	lui	a5,0x1d
   17f88:	f507b787          	fld	fa5,-176(a5) # 1cf50 <mask+0x30>
   17f8c:	fff5051b          	addiw	a0,a0,-1
   17f90:	12f57553          	fmul.d	fa0,fa0,fa5
   17f94:	fe051ce3          	bnez	a0,17f8c <_mprec_log10+0x18>
   17f98:	00008067          	ret
   17f9c:	0001b7b7          	lui	a5,0x1b
   17fa0:	82078793          	addi	a5,a5,-2016 # 1a820 <p05.2568>
   17fa4:	00351513          	slli	a0,a0,0x3
   17fa8:	00a78533          	add	a0,a5,a0
   17fac:	01053507          	fld	fa0,16(a0)
   17fb0:	00008067          	ret

0000000000017fb4 <__copybits>:
   17fb4:	01462703          	lw	a4,20(a2)
   17fb8:	fff5859b          	addiw	a1,a1,-1
   17fbc:	4055d81b          	sraiw	a6,a1,0x5
   17fc0:	00180813          	addi	a6,a6,1
   17fc4:	01860793          	addi	a5,a2,24
   17fc8:	00271713          	slli	a4,a4,0x2
   17fcc:	00281813          	slli	a6,a6,0x2
   17fd0:	00e786b3          	add	a3,a5,a4
   17fd4:	01050833          	add	a6,a0,a6
   17fd8:	02d7f863          	bleu	a3,a5,18008 <__copybits+0x54>
   17fdc:	00050713          	mv	a4,a0
   17fe0:	00478793          	addi	a5,a5,4
   17fe4:	ffc7a583          	lw	a1,-4(a5)
   17fe8:	00470713          	addi	a4,a4,4 # 3ff00004 <_gp+0x3fee2934>
   17fec:	feb72e23          	sw	a1,-4(a4)
   17ff0:	fed7e8e3          	bltu	a5,a3,17fe0 <__copybits+0x2c>
   17ff4:	40c687b3          	sub	a5,a3,a2
   17ff8:	fe778793          	addi	a5,a5,-25
   17ffc:	ffc7f793          	andi	a5,a5,-4
   18000:	00478793          	addi	a5,a5,4
   18004:	00f50533          	add	a0,a0,a5
   18008:	01057863          	bleu	a6,a0,18018 <__copybits+0x64>
   1800c:	00450513          	addi	a0,a0,4
   18010:	fe052e23          	sw	zero,-4(a0)
   18014:	ff056ce3          	bltu	a0,a6,1800c <__copybits+0x58>
   18018:	00008067          	ret

000000000001801c <__any_on>:
   1801c:	01452783          	lw	a5,20(a0)
   18020:	4055d71b          	sraiw	a4,a1,0x5
   18024:	01850693          	addi	a3,a0,24
   18028:	04e7c463          	blt	a5,a4,18070 <__any_on+0x54>
   1802c:	04f75063          	ble	a5,a4,1806c <__any_on+0x50>
   18030:	00070793          	mv	a5,a4
   18034:	00279793          	slli	a5,a5,0x2
   18038:	01f5f593          	andi	a1,a1,31
   1803c:	00f687b3          	add	a5,a3,a5
   18040:	04059063          	bnez	a1,18080 <__any_on+0x64>
   18044:	04f6fa63          	bleu	a5,a3,18098 <__any_on+0x7c>
   18048:	ffc7a503          	lw	a0,-4(a5)
   1804c:	ffc78793          	addi	a5,a5,-4
   18050:	00051a63          	bnez	a0,18064 <__any_on+0x48>
   18054:	02f6f463          	bleu	a5,a3,1807c <__any_on+0x60>
   18058:	ffc78793          	addi	a5,a5,-4
   1805c:	0007a703          	lw	a4,0(a5)
   18060:	fe070ae3          	beqz	a4,18054 <__any_on+0x38>
   18064:	00100513          	li	a0,1
   18068:	00008067          	ret
   1806c:	00070793          	mv	a5,a4
   18070:	00279793          	slli	a5,a5,0x2
   18074:	00f687b3          	add	a5,a3,a5
   18078:	fcdff06f          	j	18044 <__any_on+0x28>
   1807c:	00008067          	ret
   18080:	0007a603          	lw	a2,0(a5)
   18084:	00100513          	li	a0,1
   18088:	00b6573b          	srlw	a4,a2,a1
   1808c:	00b715bb          	sllw	a1,a4,a1
   18090:	fab60ae3          	beq	a2,a1,18044 <__any_on+0x28>
   18094:	00008067          	ret
   18098:	00000513          	li	a0,0
   1809c:	00008067          	ret

00000000000180a0 <_realloc_r>:
   180a0:	fb010113          	addi	sp,sp,-80
   180a4:	02913c23          	sd	s1,56(sp)
   180a8:	04113423          	sd	ra,72(sp)
   180ac:	04813023          	sd	s0,64(sp)
   180b0:	03213823          	sd	s2,48(sp)
   180b4:	03313423          	sd	s3,40(sp)
   180b8:	03413023          	sd	s4,32(sp)
   180bc:	01513c23          	sd	s5,24(sp)
   180c0:	01613823          	sd	s6,16(sp)
   180c4:	01713423          	sd	s7,8(sp)
   180c8:	01813023          	sd	s8,0(sp)
   180cc:	00060493          	mv	s1,a2
   180d0:	1c058a63          	beqz	a1,182a4 <_realloc_r+0x204>
   180d4:	00058993          	mv	s3,a1
   180d8:	00050913          	mv	s2,a0
   180dc:	991fa0ef          	jal	ra,12a6c <__malloc_lock>
   180e0:	ff89b783          	ld	a5,-8(s3)
   180e4:	01748413          	addi	s0,s1,23
   180e8:	02e00713          	li	a4,46
   180ec:	ff098a93          	addi	s5,s3,-16
   180f0:	ffc7fa13          	andi	s4,a5,-4
   180f4:	0c877463          	bleu	s0,a4,181bc <_realloc_r+0x11c>
   180f8:	80000737          	lui	a4,0x80000
   180fc:	ff047413          	andi	s0,s0,-16
   18100:	fff74713          	not	a4,a4
   18104:	14876a63          	bltu	a4,s0,18258 <_realloc_r+0x1b8>
   18108:	14946863          	bltu	s0,s1,18258 <_realloc_r+0x1b8>
   1810c:	0a8a5c63          	ble	s0,s4,181c4 <_realloc_r+0x124>
   18110:	0001cb37          	lui	s6,0x1c
   18114:	618b0b13          	addi	s6,s6,1560 # 1c618 <__malloc_av_>
   18118:	010b3703          	ld	a4,16(s6)
   1811c:	014a86b3          	add	a3,s5,s4
   18120:	2ee68e63          	beq	a3,a4,1841c <_realloc_r+0x37c>
   18124:	0086b703          	ld	a4,8(a3) # 100008 <_gp+0xe2938>
   18128:	ffe77613          	andi	a2,a4,-2
   1812c:	00c68633          	add	a2,a3,a2
   18130:	00863603          	ld	a2,8(a2)
   18134:	00167613          	andi	a2,a2,1
   18138:	0e060c63          	beqz	a2,18230 <_realloc_r+0x190>
   1813c:	0017f793          	andi	a5,a5,1
   18140:	26078063          	beqz	a5,183a0 <_realloc_r+0x300>
   18144:	00048593          	mv	a1,s1
   18148:	00090513          	mv	a0,s2
   1814c:	ecdf90ef          	jal	ra,12018 <_malloc_r>
   18150:	00050493          	mv	s1,a0
   18154:	48050e63          	beqz	a0,185f0 <_realloc_r+0x550>
   18158:	ff89b783          	ld	a5,-8(s3)
   1815c:	ff050713          	addi	a4,a0,-16
   18160:	ffe7f793          	andi	a5,a5,-2
   18164:	00fa87b3          	add	a5,s5,a5
   18168:	40f70e63          	beq	a4,a5,18584 <_realloc_r+0x4e4>
   1816c:	ff8a0613          	addi	a2,s4,-8
   18170:	04800793          	li	a5,72
   18174:	3ec7e263          	bltu	a5,a2,18558 <_realloc_r+0x4b8>
   18178:	02700713          	li	a4,39
   1817c:	36c76663          	bltu	a4,a2,184e8 <_realloc_r+0x448>
   18180:	00050793          	mv	a5,a0
   18184:	00098713          	mv	a4,s3
   18188:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_gp+0xffffffff7ffe2930>
   1818c:	00d7b023          	sd	a3,0(a5)
   18190:	00873683          	ld	a3,8(a4)
   18194:	00d7b423          	sd	a3,8(a5)
   18198:	01073703          	ld	a4,16(a4)
   1819c:	00e7b823          	sd	a4,16(a5)
   181a0:	00098593          	mv	a1,s3
   181a4:	00090513          	mv	a0,s2
   181a8:	a2cf90ef          	jal	ra,113d4 <_free_r>
   181ac:	00090513          	mv	a0,s2
   181b0:	8c1fa0ef          	jal	ra,12a70 <__malloc_unlock>
   181b4:	00048513          	mv	a0,s1
   181b8:	0480006f          	j	18200 <_realloc_r+0x160>
   181bc:	02000413          	li	s0,32
   181c0:	f49ff06f          	j	18108 <_realloc_r+0x68>
   181c4:	00098493          	mv	s1,s3
   181c8:	408a07b3          	sub	a5,s4,s0
   181cc:	01f00713          	li	a4,31
   181d0:	08f76c63          	bltu	a4,a5,18268 <_realloc_r+0x1c8>
   181d4:	008ab783          	ld	a5,8(s5)
   181d8:	014a8733          	add	a4,s5,s4
   181dc:	0017f793          	andi	a5,a5,1
   181e0:	0147e633          	or	a2,a5,s4
   181e4:	00cab423          	sd	a2,8(s5)
   181e8:	00873783          	ld	a5,8(a4)
   181ec:	0017e793          	ori	a5,a5,1
   181f0:	00f73423          	sd	a5,8(a4)
   181f4:	00090513          	mv	a0,s2
   181f8:	879fa0ef          	jal	ra,12a70 <__malloc_unlock>
   181fc:	00048513          	mv	a0,s1
   18200:	04813083          	ld	ra,72(sp)
   18204:	04013403          	ld	s0,64(sp)
   18208:	03813483          	ld	s1,56(sp)
   1820c:	03013903          	ld	s2,48(sp)
   18210:	02813983          	ld	s3,40(sp)
   18214:	02013a03          	ld	s4,32(sp)
   18218:	01813a83          	ld	s5,24(sp)
   1821c:	01013b03          	ld	s6,16(sp)
   18220:	00813b83          	ld	s7,8(sp)
   18224:	00013c03          	ld	s8,0(sp)
   18228:	05010113          	addi	sp,sp,80
   1822c:	00008067          	ret
   18230:	ffc77713          	andi	a4,a4,-4
   18234:	01470733          	add	a4,a4,s4
   18238:	0a874063          	blt	a4,s0,182d8 <_realloc_r+0x238>
   1823c:	0186b783          	ld	a5,24(a3)
   18240:	0106b683          	ld	a3,16(a3)
   18244:	00098493          	mv	s1,s3
   18248:	00070a13          	mv	s4,a4
   1824c:	00f6bc23          	sd	a5,24(a3)
   18250:	00d7b823          	sd	a3,16(a5)
   18254:	f75ff06f          	j	181c8 <_realloc_r+0x128>
   18258:	00c00793          	li	a5,12
   1825c:	00f92023          	sw	a5,0(s2)
   18260:	00000513          	li	a0,0
   18264:	f9dff06f          	j	18200 <_realloc_r+0x160>
   18268:	008ab703          	ld	a4,8(s5)
   1826c:	008a85b3          	add	a1,s5,s0
   18270:	0017e693          	ori	a3,a5,1
   18274:	00177713          	andi	a4,a4,1
   18278:	00876433          	or	s0,a4,s0
   1827c:	008ab423          	sd	s0,8(s5)
   18280:	00d5b423          	sd	a3,8(a1)
   18284:	00f587b3          	add	a5,a1,a5
   18288:	0087b703          	ld	a4,8(a5)
   1828c:	01058593          	addi	a1,a1,16
   18290:	00090513          	mv	a0,s2
   18294:	00176713          	ori	a4,a4,1
   18298:	00e7b423          	sd	a4,8(a5)
   1829c:	938f90ef          	jal	ra,113d4 <_free_r>
   182a0:	f55ff06f          	j	181f4 <_realloc_r+0x154>
   182a4:	04813083          	ld	ra,72(sp)
   182a8:	04013403          	ld	s0,64(sp)
   182ac:	03813483          	ld	s1,56(sp)
   182b0:	03013903          	ld	s2,48(sp)
   182b4:	02813983          	ld	s3,40(sp)
   182b8:	02013a03          	ld	s4,32(sp)
   182bc:	01813a83          	ld	s5,24(sp)
   182c0:	01013b03          	ld	s6,16(sp)
   182c4:	00813b83          	ld	s7,8(sp)
   182c8:	00013c03          	ld	s8,0(sp)
   182cc:	00060593          	mv	a1,a2
   182d0:	05010113          	addi	sp,sp,80
   182d4:	d45f906f          	j	12018 <_malloc_r>
   182d8:	0017f793          	andi	a5,a5,1
   182dc:	e60794e3          	bnez	a5,18144 <_realloc_r+0xa4>
   182e0:	ff09bb83          	ld	s7,-16(s3)
   182e4:	417a8bb3          	sub	s7,s5,s7
   182e8:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_gp+0xffffffff7ffe2938>
   182ec:	ffc7f793          	andi	a5,a5,-4
   182f0:	00f70b33          	add	s6,a4,a5
   182f4:	0a8b4e63          	blt	s6,s0,183b0 <_realloc_r+0x310>
   182f8:	0186b783          	ld	a5,24(a3)
   182fc:	0106b703          	ld	a4,16(a3)
   18300:	ff8a0613          	addi	a2,s4,-8
   18304:	010b8493          	addi	s1,s7,16
   18308:	00f73c23          	sd	a5,24(a4)
   1830c:	00e7b823          	sd	a4,16(a5)
   18310:	010bb703          	ld	a4,16(s7)
   18314:	018bb783          	ld	a5,24(s7)
   18318:	00f73c23          	sd	a5,24(a4)
   1831c:	00e7b823          	sd	a4,16(a5)
   18320:	04800793          	li	a5,72
   18324:	1ec7e463          	bltu	a5,a2,1850c <_realloc_r+0x46c>
   18328:	02700713          	li	a4,39
   1832c:	00048793          	mv	a5,s1
   18330:	04c77663          	bleu	a2,a4,1837c <_realloc_r+0x2dc>
   18334:	0009b783          	ld	a5,0(s3)
   18338:	00fbb823          	sd	a5,16(s7)
   1833c:	0089b783          	ld	a5,8(s3)
   18340:	00fbbc23          	sd	a5,24(s7)
   18344:	03700793          	li	a5,55
   18348:	24c7f863          	bleu	a2,a5,18598 <_realloc_r+0x4f8>
   1834c:	0109b783          	ld	a5,16(s3)
   18350:	02fbb023          	sd	a5,32(s7)
   18354:	0189b783          	ld	a5,24(s3)
   18358:	02fbb423          	sd	a5,40(s7)
   1835c:	04800793          	li	a5,72
   18360:	0af61863          	bne	a2,a5,18410 <_realloc_r+0x370>
   18364:	0209b703          	ld	a4,32(s3)
   18368:	040b8793          	addi	a5,s7,64
   1836c:	03098993          	addi	s3,s3,48
   18370:	02ebb823          	sd	a4,48(s7)
   18374:	ff89b703          	ld	a4,-8(s3)
   18378:	02ebbc23          	sd	a4,56(s7)
   1837c:	0009b703          	ld	a4,0(s3)
   18380:	000b0a13          	mv	s4,s6
   18384:	000b8a93          	mv	s5,s7
   18388:	00e7b023          	sd	a4,0(a5)
   1838c:	0089b703          	ld	a4,8(s3)
   18390:	00e7b423          	sd	a4,8(a5)
   18394:	0109b703          	ld	a4,16(s3)
   18398:	00e7b823          	sd	a4,16(a5)
   1839c:	e2dff06f          	j	181c8 <_realloc_r+0x128>
   183a0:	ff09bb83          	ld	s7,-16(s3)
   183a4:	417a8bb3          	sub	s7,s5,s7
   183a8:	008bb783          	ld	a5,8(s7)
   183ac:	ffc7f793          	andi	a5,a5,-4
   183b0:	00fa0b33          	add	s6,s4,a5
   183b4:	d88b48e3          	blt	s6,s0,18144 <_realloc_r+0xa4>
   183b8:	018bb783          	ld	a5,24(s7)
   183bc:	010bb703          	ld	a4,16(s7)
   183c0:	ff8a0613          	addi	a2,s4,-8
   183c4:	04800693          	li	a3,72
   183c8:	00f73c23          	sd	a5,24(a4)
   183cc:	00e7b823          	sd	a4,16(a5)
   183d0:	010b8493          	addi	s1,s7,16
   183d4:	12c6ec63          	bltu	a3,a2,1850c <_realloc_r+0x46c>
   183d8:	02700713          	li	a4,39
   183dc:	00048793          	mv	a5,s1
   183e0:	f8c77ee3          	bleu	a2,a4,1837c <_realloc_r+0x2dc>
   183e4:	0009b783          	ld	a5,0(s3)
   183e8:	00fbb823          	sd	a5,16(s7)
   183ec:	0089b783          	ld	a5,8(s3)
   183f0:	00fbbc23          	sd	a5,24(s7)
   183f4:	03700793          	li	a5,55
   183f8:	1ac7f063          	bleu	a2,a5,18598 <_realloc_r+0x4f8>
   183fc:	0109b783          	ld	a5,16(s3)
   18400:	02fbb023          	sd	a5,32(s7)
   18404:	0189b783          	ld	a5,24(s3)
   18408:	02fbb423          	sd	a5,40(s7)
   1840c:	f4d60ce3          	beq	a2,a3,18364 <_realloc_r+0x2c4>
   18410:	030b8793          	addi	a5,s7,48
   18414:	02098993          	addi	s3,s3,32
   18418:	f65ff06f          	j	1837c <_realloc_r+0x2dc>
   1841c:	0086b703          	ld	a4,8(a3)
   18420:	02040693          	addi	a3,s0,32
   18424:	ffc77713          	andi	a4,a4,-4
   18428:	01470733          	add	a4,a4,s4
   1842c:	0ed75c63          	ble	a3,a4,18524 <_realloc_r+0x484>
   18430:	0017f793          	andi	a5,a5,1
   18434:	d00798e3          	bnez	a5,18144 <_realloc_r+0xa4>
   18438:	ff09bb83          	ld	s7,-16(s3)
   1843c:	417a8bb3          	sub	s7,s5,s7
   18440:	008bb783          	ld	a5,8(s7)
   18444:	ffc7f793          	andi	a5,a5,-4
   18448:	00e78c33          	add	s8,a5,a4
   1844c:	f6dc42e3          	blt	s8,a3,183b0 <_realloc_r+0x310>
   18450:	018bb783          	ld	a5,24(s7)
   18454:	010bb703          	ld	a4,16(s7)
   18458:	ff8a0613          	addi	a2,s4,-8
   1845c:	04800693          	li	a3,72
   18460:	00f73c23          	sd	a5,24(a4)
   18464:	00e7b823          	sd	a4,16(a5)
   18468:	010b8493          	addi	s1,s7,16
   1846c:	14c6ea63          	bltu	a3,a2,185c0 <_realloc_r+0x520>
   18470:	02700713          	li	a4,39
   18474:	00048793          	mv	a5,s1
   18478:	02c77263          	bleu	a2,a4,1849c <_realloc_r+0x3fc>
   1847c:	0009b783          	ld	a5,0(s3)
   18480:	00fbb823          	sd	a5,16(s7)
   18484:	0089b783          	ld	a5,8(s3)
   18488:	00fbbc23          	sd	a5,24(s7)
   1848c:	03700793          	li	a5,55
   18490:	14c7e063          	bltu	a5,a2,185d0 <_realloc_r+0x530>
   18494:	020b8793          	addi	a5,s7,32
   18498:	01098993          	addi	s3,s3,16
   1849c:	0009b703          	ld	a4,0(s3)
   184a0:	00e7b023          	sd	a4,0(a5)
   184a4:	0089b703          	ld	a4,8(s3)
   184a8:	00e7b423          	sd	a4,8(a5)
   184ac:	0109b703          	ld	a4,16(s3)
   184b0:	00e7b823          	sd	a4,16(a5)
   184b4:	008b8733          	add	a4,s7,s0
   184b8:	408c07b3          	sub	a5,s8,s0
   184bc:	00eb3823          	sd	a4,16(s6)
   184c0:	0017e793          	ori	a5,a5,1
   184c4:	00f73423          	sd	a5,8(a4)
   184c8:	008bb783          	ld	a5,8(s7)
   184cc:	00090513          	mv	a0,s2
   184d0:	0017f793          	andi	a5,a5,1
   184d4:	0087e433          	or	s0,a5,s0
   184d8:	008bb423          	sd	s0,8(s7)
   184dc:	d94fa0ef          	jal	ra,12a70 <__malloc_unlock>
   184e0:	00048513          	mv	a0,s1
   184e4:	d1dff06f          	j	18200 <_realloc_r+0x160>
   184e8:	0009b703          	ld	a4,0(s3)
   184ec:	00e53023          	sd	a4,0(a0)
   184f0:	0089b703          	ld	a4,8(s3)
   184f4:	00e53423          	sd	a4,8(a0)
   184f8:	03700713          	li	a4,55
   184fc:	06c76463          	bltu	a4,a2,18564 <_realloc_r+0x4c4>
   18500:	01050793          	addi	a5,a0,16
   18504:	01098713          	addi	a4,s3,16
   18508:	c81ff06f          	j	18188 <_realloc_r+0xe8>
   1850c:	00098593          	mv	a1,s3
   18510:	00048513          	mv	a0,s1
   18514:	a09fe0ef          	jal	ra,16f1c <memmove>
   18518:	000b0a13          	mv	s4,s6
   1851c:	000b8a93          	mv	s5,s7
   18520:	ca9ff06f          	j	181c8 <_realloc_r+0x128>
   18524:	008a8ab3          	add	s5,s5,s0
   18528:	408707b3          	sub	a5,a4,s0
   1852c:	015b3823          	sd	s5,16(s6)
   18530:	0017e793          	ori	a5,a5,1
   18534:	00fab423          	sd	a5,8(s5)
   18538:	ff89b783          	ld	a5,-8(s3)
   1853c:	00090513          	mv	a0,s2
   18540:	0017f793          	andi	a5,a5,1
   18544:	0087e433          	or	s0,a5,s0
   18548:	fe89bc23          	sd	s0,-8(s3)
   1854c:	d24fa0ef          	jal	ra,12a70 <__malloc_unlock>
   18550:	00098513          	mv	a0,s3
   18554:	cadff06f          	j	18200 <_realloc_r+0x160>
   18558:	00098593          	mv	a1,s3
   1855c:	9c1fe0ef          	jal	ra,16f1c <memmove>
   18560:	c41ff06f          	j	181a0 <_realloc_r+0x100>
   18564:	0109b703          	ld	a4,16(s3)
   18568:	00e53823          	sd	a4,16(a0)
   1856c:	0189b703          	ld	a4,24(s3)
   18570:	00e53c23          	sd	a4,24(a0)
   18574:	02f60863          	beq	a2,a5,185a4 <_realloc_r+0x504>
   18578:	02050793          	addi	a5,a0,32
   1857c:	02098713          	addi	a4,s3,32
   18580:	c09ff06f          	j	18188 <_realloc_r+0xe8>
   18584:	ff853783          	ld	a5,-8(a0)
   18588:	00098493          	mv	s1,s3
   1858c:	ffc7f793          	andi	a5,a5,-4
   18590:	00fa0a33          	add	s4,s4,a5
   18594:	c35ff06f          	j	181c8 <_realloc_r+0x128>
   18598:	020b8793          	addi	a5,s7,32
   1859c:	01098993          	addi	s3,s3,16
   185a0:	dddff06f          	j	1837c <_realloc_r+0x2dc>
   185a4:	0209b683          	ld	a3,32(s3)
   185a8:	03050793          	addi	a5,a0,48
   185ac:	03098713          	addi	a4,s3,48
   185b0:	02d53023          	sd	a3,32(a0)
   185b4:	0289b683          	ld	a3,40(s3)
   185b8:	02d53423          	sd	a3,40(a0)
   185bc:	bcdff06f          	j	18188 <_realloc_r+0xe8>
   185c0:	00098593          	mv	a1,s3
   185c4:	00048513          	mv	a0,s1
   185c8:	955fe0ef          	jal	ra,16f1c <memmove>
   185cc:	ee9ff06f          	j	184b4 <_realloc_r+0x414>
   185d0:	0109b783          	ld	a5,16(s3)
   185d4:	02fbb023          	sd	a5,32(s7)
   185d8:	0189b783          	ld	a5,24(s3)
   185dc:	02fbb423          	sd	a5,40(s7)
   185e0:	02d60063          	beq	a2,a3,18600 <_realloc_r+0x560>
   185e4:	030b8793          	addi	a5,s7,48
   185e8:	02098993          	addi	s3,s3,32
   185ec:	eb1ff06f          	j	1849c <_realloc_r+0x3fc>
   185f0:	00090513          	mv	a0,s2
   185f4:	c7cfa0ef          	jal	ra,12a70 <__malloc_unlock>
   185f8:	00000513          	li	a0,0
   185fc:	c05ff06f          	j	18200 <_realloc_r+0x160>
   18600:	0209b703          	ld	a4,32(s3)
   18604:	040b8793          	addi	a5,s7,64
   18608:	03098993          	addi	s3,s3,48
   1860c:	02ebb823          	sd	a4,48(s7)
   18610:	ff89b703          	ld	a4,-8(s3)
   18614:	02ebbc23          	sd	a4,56(s7)
   18618:	e85ff06f          	j	1849c <_realloc_r+0x3fc>

000000000001861c <__fpclassifyd>:
   1861c:	e20507d3          	fmv.x.d	a5,fa0
   18620:	00200513          	li	a0,2
   18624:	4207d713          	srai	a4,a5,0x20
   18628:	0007879b          	sext.w	a5,a5
   1862c:	00f766b3          	or	a3,a4,a5
   18630:	00069463          	bnez	a3,18638 <__fpclassifyd+0x1c>
   18634:	00008067          	ret
   18638:	800006b7          	lui	a3,0x80000
   1863c:	04d70863          	beq	a4,a3,1868c <__fpclassifyd+0x70>
   18640:	fff006b7          	lui	a3,0xfff00
   18644:	00d706bb          	addw	a3,a4,a3
   18648:	7fe00637          	lui	a2,0x7fe00
   1864c:	00400513          	li	a0,4
   18650:	fec6e2e3          	bltu	a3,a2,18634 <__fpclassifyd+0x18>
   18654:	7ff006b7          	lui	a3,0x7ff00
   18658:	00d706bb          	addw	a3,a4,a3
   1865c:	fcc6ece3          	bltu	a3,a2,18634 <__fpclassifyd+0x18>
   18660:	800006b7          	lui	a3,0x80000
   18664:	fff6c693          	not	a3,a3
   18668:	00d77733          	and	a4,a4,a3
   1866c:	001006b7          	lui	a3,0x100
   18670:	00300513          	li	a0,3
   18674:	fcd760e3          	bltu	a4,a3,18634 <__fpclassifyd+0x18>
   18678:	7ff006b7          	lui	a3,0x7ff00
   1867c:	00000513          	li	a0,0
   18680:	fad71ae3          	bne	a4,a3,18634 <__fpclassifyd+0x18>
   18684:	0017b513          	seqz	a0,a5
   18688:	00008067          	ret
   1868c:	fc079ae3          	bnez	a5,18660 <__fpclassifyd+0x44>
   18690:	00008067          	ret

0000000000018694 <strcmp>:
   18694:	00b56733          	or	a4,a0,a1
   18698:	fff00393          	li	t2,-1
   1869c:	00777713          	andi	a4,a4,7
   186a0:	0c071c63          	bnez	a4,18778 <strcmp+0xe4>
   186a4:	00005e17          	auipc	t3,0x5
   186a8:	87ce3e03          	ld	t3,-1924(t3) # 1cf20 <mask>
   186ac:	00053603          	ld	a2,0(a0)
   186b0:	0005b683          	ld	a3,0(a1)
   186b4:	01c672b3          	and	t0,a2,t3
   186b8:	01c66333          	or	t1,a2,t3
   186bc:	01c282b3          	add	t0,t0,t3
   186c0:	0062e2b3          	or	t0,t0,t1
   186c4:	0c729e63          	bne	t0,t2,187a0 <strcmp+0x10c>
   186c8:	04d61663          	bne	a2,a3,18714 <strcmp+0x80>
   186cc:	00853603          	ld	a2,8(a0)
   186d0:	0085b683          	ld	a3,8(a1)
   186d4:	01c672b3          	and	t0,a2,t3
   186d8:	01c66333          	or	t1,a2,t3
   186dc:	01c282b3          	add	t0,t0,t3
   186e0:	0062e2b3          	or	t0,t0,t1
   186e4:	0a729a63          	bne	t0,t2,18798 <strcmp+0x104>
   186e8:	02d61663          	bne	a2,a3,18714 <strcmp+0x80>
   186ec:	01053603          	ld	a2,16(a0)
   186f0:	0105b683          	ld	a3,16(a1)
   186f4:	01c672b3          	and	t0,a2,t3
   186f8:	01c66333          	or	t1,a2,t3
   186fc:	01c282b3          	add	t0,t0,t3
   18700:	0062e2b3          	or	t0,t0,t1
   18704:	0a729463          	bne	t0,t2,187ac <strcmp+0x118>
   18708:	01850513          	addi	a0,a0,24
   1870c:	01858593          	addi	a1,a1,24
   18710:	f8d60ee3          	beq	a2,a3,186ac <strcmp+0x18>
   18714:	03061713          	slli	a4,a2,0x30
   18718:	03069793          	slli	a5,a3,0x30
   1871c:	02f71a63          	bne	a4,a5,18750 <strcmp+0xbc>
   18720:	02061713          	slli	a4,a2,0x20
   18724:	02069793          	slli	a5,a3,0x20
   18728:	02f71463          	bne	a4,a5,18750 <strcmp+0xbc>
   1872c:	01061713          	slli	a4,a2,0x10
   18730:	01069793          	slli	a5,a3,0x10
   18734:	00f71e63          	bne	a4,a5,18750 <strcmp+0xbc>
   18738:	03065713          	srli	a4,a2,0x30
   1873c:	0306d793          	srli	a5,a3,0x30
   18740:	40f70533          	sub	a0,a4,a5
   18744:	0ff57593          	andi	a1,a0,255
   18748:	02059063          	bnez	a1,18768 <strcmp+0xd4>
   1874c:	00008067          	ret
   18750:	03075713          	srli	a4,a4,0x30
   18754:	0307d793          	srli	a5,a5,0x30
   18758:	40f70533          	sub	a0,a4,a5
   1875c:	0ff57593          	andi	a1,a0,255
   18760:	00059463          	bnez	a1,18768 <strcmp+0xd4>
   18764:	00008067          	ret
   18768:	0ff77713          	andi	a4,a4,255
   1876c:	0ff7f793          	andi	a5,a5,255
   18770:	40f70533          	sub	a0,a4,a5
   18774:	00008067          	ret
   18778:	00054603          	lbu	a2,0(a0)
   1877c:	0005c683          	lbu	a3,0(a1)
   18780:	00150513          	addi	a0,a0,1
   18784:	00158593          	addi	a1,a1,1
   18788:	00d61463          	bne	a2,a3,18790 <strcmp+0xfc>
   1878c:	fe0616e3          	bnez	a2,18778 <strcmp+0xe4>
   18790:	40d60533          	sub	a0,a2,a3
   18794:	00008067          	ret
   18798:	00850513          	addi	a0,a0,8
   1879c:	00858593          	addi	a1,a1,8
   187a0:	fcd61ce3          	bne	a2,a3,18778 <strcmp+0xe4>
   187a4:	00000513          	li	a0,0
   187a8:	00008067          	ret
   187ac:	01050513          	addi	a0,a0,16
   187b0:	01058593          	addi	a1,a1,16
   187b4:	fcd612e3          	bne	a2,a3,18778 <strcmp+0xe4>
   187b8:	00000513          	li	a0,0
   187bc:	00008067          	ret

00000000000187c0 <__sprint_r.part.0>:
   187c0:	0ac5a783          	lw	a5,172(a1)
   187c4:	fb010113          	addi	sp,sp,-80
   187c8:	01613823          	sd	s6,16(sp)
   187cc:	04113423          	sd	ra,72(sp)
   187d0:	04813023          	sd	s0,64(sp)
   187d4:	02913c23          	sd	s1,56(sp)
   187d8:	03213823          	sd	s2,48(sp)
   187dc:	03313423          	sd	s3,40(sp)
   187e0:	03413023          	sd	s4,32(sp)
   187e4:	01513c23          	sd	s5,24(sp)
   187e8:	01713423          	sd	s7,8(sp)
   187ec:	03279713          	slli	a4,a5,0x32
   187f0:	00060b13          	mv	s6,a2
   187f4:	0a075863          	bgez	a4,188a4 <__sprint_r.part.0+0xe4>
   187f8:	01063783          	ld	a5,16(a2) # 7fe00010 <_gp+0x7fde2940>
   187fc:	00058a13          	mv	s4,a1
   18800:	00050a93          	mv	s5,a0
   18804:	00063b83          	ld	s7,0(a2)
   18808:	fff00993          	li	s3,-1
   1880c:	08078863          	beqz	a5,1889c <__sprint_r.part.0+0xdc>
   18810:	008bb903          	ld	s2,8(s7)
   18814:	000bb483          	ld	s1,0(s7)
   18818:	00000413          	li	s0,0
   1881c:	00295913          	srli	s2,s2,0x2
   18820:	0009091b          	sext.w	s2,s2
   18824:	01204863          	bgtz	s2,18834 <__sprint_r.part.0+0x74>
   18828:	0600006f          	j	18888 <__sprint_r.part.0+0xc8>
   1882c:	00448493          	addi	s1,s1,4
   18830:	04890a63          	beq	s2,s0,18884 <__sprint_r.part.0+0xc4>
   18834:	0004a583          	lw	a1,0(s1)
   18838:	000a0613          	mv	a2,s4
   1883c:	000a8513          	mv	a0,s5
   18840:	414010ef          	jal	ra,19c54 <_fputwc_r>
   18844:	0014041b          	addiw	s0,s0,1
   18848:	ff3512e3          	bne	a0,s3,1882c <__sprint_r.part.0+0x6c>
   1884c:	00098513          	mv	a0,s3
   18850:	04813083          	ld	ra,72(sp)
   18854:	000b3823          	sd	zero,16(s6)
   18858:	000b2423          	sw	zero,8(s6)
   1885c:	04013403          	ld	s0,64(sp)
   18860:	03813483          	ld	s1,56(sp)
   18864:	03013903          	ld	s2,48(sp)
   18868:	02813983          	ld	s3,40(sp)
   1886c:	02013a03          	ld	s4,32(sp)
   18870:	01813a83          	ld	s5,24(sp)
   18874:	01013b03          	ld	s6,16(sp)
   18878:	00813b83          	ld	s7,8(sp)
   1887c:	05010113          	addi	sp,sp,80
   18880:	00008067          	ret
   18884:	010b3783          	ld	a5,16(s6)
   18888:	00291913          	slli	s2,s2,0x2
   1888c:	412787b3          	sub	a5,a5,s2
   18890:	00fb3823          	sd	a5,16(s6)
   18894:	010b8b93          	addi	s7,s7,16
   18898:	f6079ce3          	bnez	a5,18810 <__sprint_r.part.0+0x50>
   1889c:	00000513          	li	a0,0
   188a0:	fb1ff06f          	j	18850 <__sprint_r.part.0+0x90>
   188a4:	8e4fe0ef          	jal	ra,16988 <__sfvwrite_r>
   188a8:	fa9ff06f          	j	18850 <__sprint_r.part.0+0x90>

00000000000188ac <__sprint_r>:
   188ac:	01063703          	ld	a4,16(a2)
   188b0:	00070463          	beqz	a4,188b8 <__sprint_r+0xc>
   188b4:	f0dff06f          	j	187c0 <__sprint_r.part.0>
   188b8:	00062423          	sw	zero,8(a2)
   188bc:	00000513          	li	a0,0
   188c0:	00008067          	ret

00000000000188c4 <_vfiprintf_r>:
   188c4:	e6010113          	addi	sp,sp,-416
   188c8:	17513423          	sd	s5,360(sp)
   188cc:	17613023          	sd	s6,352(sp)
   188d0:	15a13023          	sd	s10,320(sp)
   188d4:	18113c23          	sd	ra,408(sp)
   188d8:	18813823          	sd	s0,400(sp)
   188dc:	18913423          	sd	s1,392(sp)
   188e0:	19213023          	sd	s2,384(sp)
   188e4:	17313c23          	sd	s3,376(sp)
   188e8:	17413823          	sd	s4,368(sp)
   188ec:	15713c23          	sd	s7,344(sp)
   188f0:	15813823          	sd	s8,336(sp)
   188f4:	15913423          	sd	s9,328(sp)
   188f8:	13b13c23          	sd	s11,312(sp)
   188fc:	00d13423          	sd	a3,8(sp)
   18900:	00050a93          	mv	s5,a0
   18904:	00058d13          	mv	s10,a1
   18908:	00060b13          	mv	s6,a2
   1890c:	00050663          	beqz	a0,18918 <_vfiprintf_r+0x54>
   18910:	05052783          	lw	a5,80(a0)
   18914:	1e078c63          	beqz	a5,18b0c <_vfiprintf_r+0x248>
   18918:	010d1683          	lh	a3,16(s10)
   1891c:	03069793          	slli	a5,a3,0x30
   18920:	0307d793          	srli	a5,a5,0x30
   18924:	03279713          	slli	a4,a5,0x32
   18928:	02074a63          	bltz	a4,1895c <_vfiprintf_r+0x98>
   1892c:	000027b7          	lui	a5,0x2
   18930:	0acd2603          	lw	a2,172(s10)
   18934:	00f6e7b3          	or	a5,a3,a5
   18938:	0107979b          	slliw	a5,a5,0x10
   1893c:	ffffe737          	lui	a4,0xffffe
   18940:	4107d79b          	sraiw	a5,a5,0x10
   18944:	fff7071b          	addiw	a4,a4,-1
   18948:	00e67733          	and	a4,a2,a4
   1894c:	00fd1823          	sh	a5,16(s10)
   18950:	03079793          	slli	a5,a5,0x30
   18954:	0aed2623          	sw	a4,172(s10)
   18958:	0307d793          	srli	a5,a5,0x30
   1895c:	0087f713          	andi	a4,a5,8
   18960:	12070a63          	beqz	a4,18a94 <_vfiprintf_r+0x1d0>
   18964:	018d3703          	ld	a4,24(s10)
   18968:	12070663          	beqz	a4,18a94 <_vfiprintf_r+0x1d0>
   1896c:	01a7f793          	andi	a5,a5,26
   18970:	00a00713          	li	a4,10
   18974:	14e78063          	beq	a5,a4,18ab4 <_vfiprintf_r+0x1f0>
   18978:	0b010c93          	addi	s9,sp,176
   1897c:	0001bc37          	lui	s8,0x1b
   18980:	0af10793          	addi	a5,sp,175
   18984:	948c0713          	addi	a4,s8,-1720 # 1a948 <__mprec_bigtens+0x28>
   18988:	40fc87b3          	sub	a5,s9,a5
   1898c:	0001b8b7          	lui	a7,0x1b
   18990:	07913823          	sd	s9,112(sp)
   18994:	08013023          	sd	zero,128(sp)
   18998:	06012c23          	sw	zero,120(sp)
   1899c:	000c8413          	mv	s0,s9
   189a0:	00013c23          	sd	zero,24(sp)
   189a4:	04012c23          	sw	zero,88(sp)
   189a8:	00e13823          	sd	a4,16(sp)
   189ac:	ab088c13          	addi	s8,a7,-1360 # 1aab0 <blanks.4136>
   189b0:	04f12e23          	sw	a5,92(sp)
   189b4:	000b4783          	lbu	a5,0(s6)
   189b8:	4e078ee3          	beqz	a5,196b4 <_vfiprintf_r+0xdf0>
   189bc:	02500713          	li	a4,37
   189c0:	000b0493          	mv	s1,s6
   189c4:	00e79663          	bne	a5,a4,189d0 <_vfiprintf_r+0x10c>
   189c8:	0580006f          	j	18a20 <_vfiprintf_r+0x15c>
   189cc:	00e78863          	beq	a5,a4,189dc <_vfiprintf_r+0x118>
   189d0:	00148493          	addi	s1,s1,1
   189d4:	0004c783          	lbu	a5,0(s1)
   189d8:	fe079ae3          	bnez	a5,189cc <_vfiprintf_r+0x108>
   189dc:	4164893b          	subw	s2,s1,s6
   189e0:	04090063          	beqz	s2,18a20 <_vfiprintf_r+0x15c>
   189e4:	08013703          	ld	a4,128(sp)
   189e8:	07812783          	lw	a5,120(sp)
   189ec:	00090613          	mv	a2,s2
   189f0:	00e60733          	add	a4,a2,a4
   189f4:	0017879b          	addiw	a5,a5,1
   189f8:	00c43423          	sd	a2,8(s0)
   189fc:	01643023          	sd	s6,0(s0)
   18a00:	08e13023          	sd	a4,128(sp)
   18a04:	06f12c23          	sw	a5,120(sp)
   18a08:	00700613          	li	a2,7
   18a0c:	01040413          	addi	s0,s0,16
   18a10:	06f64463          	blt	a2,a5,18a78 <_vfiprintf_r+0x1b4>
   18a14:	05812783          	lw	a5,88(sp)
   18a18:	012787bb          	addw	a5,a5,s2
   18a1c:	04f12c23          	sw	a5,88(sp)
   18a20:	0004c783          	lbu	a5,0(s1)
   18a24:	580786e3          	beqz	a5,197b0 <_vfiprintf_r+0xeec>
   18a28:	00148813          	addi	a6,s1,1
   18a2c:	060103a3          	sb	zero,103(sp)
   18a30:	00000513          	li	a0,0
   18a34:	00000e93          	li	t4,0
   18a38:	fff00493          	li	s1,-1
   18a3c:	00000913          	li	s2,0
   18a40:	00000313          	li	t1,0
   18a44:	05800613          	li	a2,88
   18a48:	00900593          	li	a1,9
   18a4c:	02a00f13          	li	t5,42
   18a50:	00084703          	lbu	a4,0(a6)
   18a54:	00180b13          	addi	s6,a6,1
   18a58:	fe07079b          	addiw	a5,a4,-32
   18a5c:	66f66263          	bltu	a2,a5,190c0 <_vfiprintf_r+0x7fc>
   18a60:	01013683          	ld	a3,16(sp)
   18a64:	02079793          	slli	a5,a5,0x20
   18a68:	01e7d793          	srli	a5,a5,0x1e
   18a6c:	00d787b3          	add	a5,a5,a3
   18a70:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   18a74:	00078067          	jr	a5
   18a78:	2e071ee3          	bnez	a4,19574 <_vfiprintf_r+0xcb0>
   18a7c:	06012c23          	sw	zero,120(sp)
   18a80:	000c8413          	mv	s0,s9
   18a84:	f91ff06f          	j	18a14 <_vfiprintf_r+0x150>
   18a88:	01036313          	ori	t1,t1,16
   18a8c:	000b0813          	mv	a6,s6
   18a90:	fc1ff06f          	j	18a50 <_vfiprintf_r+0x18c>
   18a94:	000d0593          	mv	a1,s10
   18a98:	000a8513          	mv	a0,s5
   18a9c:	f5cfc0ef          	jal	ra,151f8 <__swsetup_r>
   18aa0:	4e0512e3          	bnez	a0,19784 <_vfiprintf_r+0xec0>
   18aa4:	010d5783          	lhu	a5,16(s10)
   18aa8:	00a00713          	li	a4,10
   18aac:	01a7f793          	andi	a5,a5,26
   18ab0:	ece794e3          	bne	a5,a4,18978 <_vfiprintf_r+0xb4>
   18ab4:	012d1783          	lh	a5,18(s10)
   18ab8:	ec07c0e3          	bltz	a5,18978 <_vfiprintf_r+0xb4>
   18abc:	00813683          	ld	a3,8(sp)
   18ac0:	000b0613          	mv	a2,s6
   18ac4:	000d0593          	mv	a1,s10
   18ac8:	000a8513          	mv	a0,s5
   18acc:	6a9000ef          	jal	ra,19974 <__sbprintf>
   18ad0:	19813083          	ld	ra,408(sp)
   18ad4:	19013403          	ld	s0,400(sp)
   18ad8:	18813483          	ld	s1,392(sp)
   18adc:	18013903          	ld	s2,384(sp)
   18ae0:	17813983          	ld	s3,376(sp)
   18ae4:	17013a03          	ld	s4,368(sp)
   18ae8:	16813a83          	ld	s5,360(sp)
   18aec:	16013b03          	ld	s6,352(sp)
   18af0:	15813b83          	ld	s7,344(sp)
   18af4:	15013c03          	ld	s8,336(sp)
   18af8:	14813c83          	ld	s9,328(sp)
   18afc:	14013d03          	ld	s10,320(sp)
   18b00:	13813d83          	ld	s11,312(sp)
   18b04:	1a010113          	addi	sp,sp,416
   18b08:	00008067          	ret
   18b0c:	de0f80ef          	jal	ra,110ec <__sinit>
   18b10:	e09ff06f          	j	18918 <_vfiprintf_r+0x54>
   18b14:	00813783          	ld	a5,8(sp)
   18b18:	0007a903          	lw	s2,0(a5)
   18b1c:	00878793          	addi	a5,a5,8
   18b20:	00f13423          	sd	a5,8(sp)
   18b24:	f60954e3          	bgez	s2,18a8c <_vfiprintf_r+0x1c8>
   18b28:	4120093b          	negw	s2,s2
   18b2c:	00436313          	ori	t1,t1,4
   18b30:	000b0813          	mv	a6,s6
   18b34:	f1dff06f          	j	18a50 <_vfiprintf_r+0x18c>
   18b38:	03000793          	li	a5,48
   18b3c:	06f10423          	sb	a5,104(sp)
   18b40:	07800793          	li	a5,120
   18b44:	06f104a3          	sb	a5,105(sp)
   18b48:	00813783          	ld	a5,8(sp)
   18b4c:	060103a3          	sb	zero,103(sp)
   18b50:	00236613          	ori	a2,t1,2
   18b54:	00878713          	addi	a4,a5,8
   18b58:	0007b783          	ld	a5,0(a5)
   18b5c:	2e04cce3          	bltz	s1,19654 <_vfiprintf_r+0xd90>
   18b60:	f7f37313          	andi	t1,t1,-129
   18b64:	00e13423          	sd	a4,8(sp)
   18b68:	00236313          	ori	t1,t1,2
   18b6c:	32079ae3          	bnez	a5,196a0 <_vfiprintf_r+0xddc>
   18b70:	0001b7b7          	lui	a5,0x1b
   18b74:	b1878793          	addi	a5,a5,-1256 # 1ab18 <zeroes.4137+0x58>
   18b78:	00f13c23          	sd	a5,24(sp)
   18b7c:	00000593          	li	a1,0
   18b80:	200498e3          	bnez	s1,19590 <_vfiprintf_r+0xccc>
   18b84:	00000493          	li	s1,0
   18b88:	00000a13          	li	s4,0
   18b8c:	000c8b93          	mv	s7,s9
   18b90:	00048993          	mv	s3,s1
   18b94:	0144d463          	ble	s4,s1,18b9c <_vfiprintf_r+0x2d8>
   18b98:	000a0993          	mv	s3,s4
   18b9c:	00b035b3          	snez	a1,a1
   18ba0:	00b989bb          	addw	s3,s3,a1
   18ba4:	00237393          	andi	t2,t1,2
   18ba8:	00038463          	beqz	t2,18bb0 <_vfiprintf_r+0x2ec>
   18bac:	0029899b          	addiw	s3,s3,2
   18bb0:	08437293          	andi	t0,t1,132
   18bb4:	58029463          	bnez	t0,1913c <_vfiprintf_r+0x878>
   18bb8:	41390dbb          	subw	s11,s2,s3
   18bbc:	59b05063          	blez	s11,1913c <_vfiprintf_r+0x878>
   18bc0:	01000793          	li	a5,16
   18bc4:	45b7dee3          	ble	s11,a5,19820 <_vfiprintf_r+0xf5c>
   18bc8:	01000e93          	li	t4,16
   18bcc:	08013783          	ld	a5,128(sp)
   18bd0:	07812503          	lw	a0,120(sp)
   18bd4:	05813823          	sd	s8,80(sp)
   18bd8:	00700f13          	li	t5,7
   18bdc:	000e8f93          	mv	t6,t4
   18be0:	0180006f          	j	18bf8 <_vfiprintf_r+0x334>
   18be4:	0025061b          	addiw	a2,a0,2
   18be8:	01040413          	addi	s0,s0,16
   18bec:	00058513          	mv	a0,a1
   18bf0:	ff0d8d9b          	addiw	s11,s11,-16
   18bf4:	03bfdc63          	ble	s11,t6,18c2c <_vfiprintf_r+0x368>
   18bf8:	01078793          	addi	a5,a5,16
   18bfc:	0015059b          	addiw	a1,a0,1
   18c00:	01843023          	sd	s8,0(s0)
   18c04:	01d43423          	sd	t4,8(s0)
   18c08:	08f13023          	sd	a5,128(sp)
   18c0c:	06b12c23          	sw	a1,120(sp)
   18c10:	fcbf5ae3          	ble	a1,t5,18be4 <_vfiprintf_r+0x320>
   18c14:	4c079863          	bnez	a5,190e4 <_vfiprintf_r+0x820>
   18c18:	ff0d8d9b          	addiw	s11,s11,-16
   18c1c:	00000513          	li	a0,0
   18c20:	00100613          	li	a2,1
   18c24:	000c8413          	mv	s0,s9
   18c28:	fdbfc8e3          	blt	t6,s11,18bf8 <_vfiprintf_r+0x334>
   18c2c:	05013703          	ld	a4,80(sp)
   18c30:	00fd87b3          	add	a5,s11,a5
   18c34:	01b43423          	sd	s11,8(s0)
   18c38:	00e43023          	sd	a4,0(s0)
   18c3c:	08f13023          	sd	a5,128(sp)
   18c40:	06c12c23          	sw	a2,120(sp)
   18c44:	00700593          	li	a1,7
   18c48:	7ac5cc63          	blt	a1,a2,19400 <_vfiprintf_r+0xb3c>
   18c4c:	06714503          	lbu	a0,103(sp)
   18c50:	01040413          	addi	s0,s0,16
   18c54:	0016059b          	addiw	a1,a2,1
   18c58:	4e051c63          	bnez	a0,19150 <_vfiprintf_r+0x88c>
   18c5c:	52038663          	beqz	t2,19188 <_vfiprintf_r+0x8c4>
   18c60:	06810613          	addi	a2,sp,104
   18c64:	00278793          	addi	a5,a5,2
   18c68:	00c43023          	sd	a2,0(s0)
   18c6c:	00200613          	li	a2,2
   18c70:	00c43423          	sd	a2,8(s0)
   18c74:	08f13023          	sd	a5,128(sp)
   18c78:	06b12c23          	sw	a1,120(sp)
   18c7c:	00700613          	li	a2,7
   18c80:	7cb65863          	ble	a1,a2,19450 <_vfiprintf_r+0xb8c>
   18c84:	10079ae3          	bnez	a5,19598 <_vfiprintf_r+0xcd4>
   18c88:	08000513          	li	a0,128
   18c8c:	00100593          	li	a1,1
   18c90:	00000613          	li	a2,0
   18c94:	000c8413          	mv	s0,s9
   18c98:	4ea29c63          	bne	t0,a0,19190 <_vfiprintf_r+0x8cc>
   18c9c:	41390ebb          	subw	t4,s2,s3
   18ca0:	4fd05863          	blez	t4,19190 <_vfiprintf_r+0x8cc>
   18ca4:	01000513          	li	a0,16
   18ca8:	3fd55ce3          	ble	t4,a0,198a0 <_vfiprintf_r+0xfdc>
   18cac:	01000f13          	li	t5,16
   18cb0:	0001b737          	lui	a4,0x1b
   18cb4:	ac070d93          	addi	s11,a4,-1344 # 1aac0 <zeroes.4137>
   18cb8:	00700f93          	li	t6,7
   18cbc:	000f0293          	mv	t0,t5
   18cc0:	0180006f          	j	18cd8 <_vfiprintf_r+0x414>
   18cc4:	0026051b          	addiw	a0,a2,2
   18cc8:	01040413          	addi	s0,s0,16
   18ccc:	00058613          	mv	a2,a1
   18cd0:	ff0e8e9b          	addiw	t4,t4,-16
   18cd4:	03d2dc63          	ble	t4,t0,18d0c <_vfiprintf_r+0x448>
   18cd8:	01078793          	addi	a5,a5,16
   18cdc:	0016059b          	addiw	a1,a2,1
   18ce0:	01b43023          	sd	s11,0(s0)
   18ce4:	01e43423          	sd	t5,8(s0)
   18ce8:	08f13023          	sd	a5,128(sp)
   18cec:	06b12c23          	sw	a1,120(sp)
   18cf0:	fcbfdae3          	ble	a1,t6,18cc4 <_vfiprintf_r+0x400>
   18cf4:	6a079e63          	bnez	a5,193b0 <_vfiprintf_r+0xaec>
   18cf8:	ff0e8e9b          	addiw	t4,t4,-16
   18cfc:	00100513          	li	a0,1
   18d00:	00000613          	li	a2,0
   18d04:	000c8413          	mv	s0,s9
   18d08:	fdd2c8e3          	blt	t0,t4,18cd8 <_vfiprintf_r+0x414>
   18d0c:	01d787b3          	add	a5,a5,t4
   18d10:	01b43023          	sd	s11,0(s0)
   18d14:	01d43423          	sd	t4,8(s0)
   18d18:	08f13023          	sd	a5,128(sp)
   18d1c:	06a12c23          	sw	a0,120(sp)
   18d20:	00700613          	li	a2,7
   18d24:	0ea646e3          	blt	a2,a0,19610 <_vfiprintf_r+0xd4c>
   18d28:	414484bb          	subw	s1,s1,s4
   18d2c:	01040413          	addi	s0,s0,16
   18d30:	0015059b          	addiw	a1,a0,1
   18d34:	00050613          	mv	a2,a0
   18d38:	46904063          	bgtz	s1,19198 <_vfiprintf_r+0x8d4>
   18d3c:	00fa07b3          	add	a5,s4,a5
   18d40:	01743023          	sd	s7,0(s0)
   18d44:	01443423          	sd	s4,8(s0)
   18d48:	08f13023          	sd	a5,128(sp)
   18d4c:	06b12c23          	sw	a1,120(sp)
   18d50:	00700713          	li	a4,7
   18d54:	4eb75a63          	ble	a1,a4,19248 <_vfiprintf_r+0x984>
   18d58:	7a079463          	bnez	a5,19500 <_vfiprintf_r+0xc3c>
   18d5c:	06012c23          	sw	zero,120(sp)
   18d60:	00437313          	andi	t1,t1,4
   18d64:	00030663          	beqz	t1,18d70 <_vfiprintf_r+0x4ac>
   18d68:	413904bb          	subw	s1,s2,s3
   18d6c:	229040e3          	bgtz	s1,1978c <_vfiprintf_r+0xec8>
   18d70:	01395463          	ble	s3,s2,18d78 <_vfiprintf_r+0x4b4>
   18d74:	00098913          	mv	s2,s3
   18d78:	05812783          	lw	a5,88(sp)
   18d7c:	012787bb          	addw	a5,a5,s2
   18d80:	04f12c23          	sw	a5,88(sp)
   18d84:	06012c23          	sw	zero,120(sp)
   18d88:	000c8413          	mv	s0,s9
   18d8c:	c29ff06f          	j	189b4 <_vfiprintf_r+0xf0>
   18d90:	00100513          	li	a0,1
   18d94:	02b00e93          	li	t4,43
   18d98:	000b0813          	mv	a6,s6
   18d9c:	cb5ff06f          	j	18a50 <_vfiprintf_r+0x18c>
   18da0:	08036313          	ori	t1,t1,128
   18da4:	000b0813          	mv	a6,s6
   18da8:	ca9ff06f          	j	18a50 <_vfiprintf_r+0x18c>
   18dac:	00000913          	li	s2,0
   18db0:	fd07079b          	addiw	a5,a4,-48
   18db4:	001b0b13          	addi	s6,s6,1
   18db8:	fffb4703          	lbu	a4,-1(s6)
   18dbc:	00191f9b          	slliw	t6,s2,0x1
   18dc0:	0039191b          	slliw	s2,s2,0x3
   18dc4:	012f893b          	addw	s2,t6,s2
   18dc8:	0127893b          	addw	s2,a5,s2
   18dcc:	fd07079b          	addiw	a5,a4,-48
   18dd0:	fef5f2e3          	bleu	a5,a1,18db4 <_vfiprintf_r+0x4f0>
   18dd4:	c85ff06f          	j	18a58 <_vfiprintf_r+0x194>
   18dd8:	360518e3          	bnez	a0,19948 <_vfiprintf_r+0x1084>
   18ddc:	01036313          	ori	t1,t1,16
   18de0:	01037793          	andi	a5,t1,16
   18de4:	74078263          	beqz	a5,19528 <_vfiprintf_r+0xc64>
   18de8:	00813703          	ld	a4,8(sp)
   18dec:	00073783          	ld	a5,0(a4)
   18df0:	00870713          	addi	a4,a4,8
   18df4:	00e13423          	sd	a4,8(sp)
   18df8:	0e07c6e3          	bltz	a5,196e4 <_vfiprintf_r+0xe20>
   18dfc:	06714583          	lbu	a1,103(sp)
   18e00:	6e04c063          	bltz	s1,194e0 <_vfiprintf_r+0xc1c>
   18e04:	f7f37313          	andi	t1,t1,-129
   18e08:	10078c63          	beqz	a5,18f20 <_vfiprintf_r+0x65c>
   18e0c:	00900613          	li	a2,9
   18e10:	000c8b93          	mv	s7,s9
   18e14:	00a00513          	li	a0,10
   18e18:	10f67863          	bleu	a5,a2,18f28 <_vfiprintf_r+0x664>
   18e1c:	02a7f633          	remu	a2,a5,a0
   18e20:	fffb8b93          	addi	s7,s7,-1
   18e24:	02a7d7b3          	divu	a5,a5,a0
   18e28:	0306061b          	addiw	a2,a2,48
   18e2c:	00cb8023          	sb	a2,0(s7)
   18e30:	fe0796e3          	bnez	a5,18e1c <_vfiprintf_r+0x558>
   18e34:	417c8a3b          	subw	s4,s9,s7
   18e38:	d59ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   18e3c:	300512e3          	bnez	a0,19940 <_vfiprintf_r+0x107c>
   18e40:	01036313          	ori	t1,t1,16
   18e44:	01037793          	andi	a5,t1,16
   18e48:	6e078e63          	beqz	a5,19544 <_vfiprintf_r+0xc80>
   18e4c:	00813783          	ld	a5,8(sp)
   18e50:	060103a3          	sb	zero,103(sp)
   18e54:	00878713          	addi	a4,a5,8
   18e58:	0007b783          	ld	a5,0(a5)
   18e5c:	7004c263          	bltz	s1,19560 <_vfiprintf_r+0xc9c>
   18e60:	00e13423          	sd	a4,8(sp)
   18e64:	f7f37313          	andi	t1,t1,-129
   18e68:	70079263          	bnez	a5,1956c <_vfiprintf_r+0xca8>
   18e6c:	00000593          	li	a1,0
   18e70:	00000793          	li	a5,0
   18e74:	2a0482e3          	beqz	s1,19918 <_vfiprintf_r+0x1054>
   18e78:	000c8b93          	mv	s7,s9
   18e7c:	0077f613          	andi	a2,a5,7
   18e80:	fffb8b93          	addi	s7,s7,-1
   18e84:	0306061b          	addiw	a2,a2,48
   18e88:	00cb8023          	sb	a2,0(s7)
   18e8c:	0037d793          	srli	a5,a5,0x3
   18e90:	fe0796e3          	bnez	a5,18e7c <_vfiprintf_r+0x5b8>
   18e94:	00137793          	andi	a5,t1,1
   18e98:	f8078ee3          	beqz	a5,18e34 <_vfiprintf_r+0x570>
   18e9c:	03000793          	li	a5,48
   18ea0:	f8f60ae3          	beq	a2,a5,18e34 <_vfiprintf_r+0x570>
   18ea4:	fffb8613          	addi	a2,s7,-1
   18ea8:	40cc8a33          	sub	s4,s9,a2
   18eac:	fefb8fa3          	sb	a5,-1(s7)
   18eb0:	000a0a1b          	sext.w	s4,s4
   18eb4:	00060b93          	mv	s7,a2
   18eb8:	cd9ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   18ebc:	28051ee3          	bnez	a0,19958 <_vfiprintf_r+0x1094>
   18ec0:	01037793          	andi	a5,t1,16
   18ec4:	040786e3          	beqz	a5,19710 <_vfiprintf_r+0xe4c>
   18ec8:	00813683          	ld	a3,8(sp)
   18ecc:	05812703          	lw	a4,88(sp)
   18ed0:	0006b783          	ld	a5,0(a3) # 7ff00000 <_gp+0x7fee2930>
   18ed4:	00868693          	addi	a3,a3,8
   18ed8:	00d13423          	sd	a3,8(sp)
   18edc:	00e7b023          	sd	a4,0(a5)
   18ee0:	ad5ff06f          	j	189b4 <_vfiprintf_r+0xf0>
   18ee4:	260516e3          	bnez	a0,19950 <_vfiprintf_r+0x108c>
   18ee8:	01036313          	ori	t1,t1,16
   18eec:	01037793          	andi	a5,t1,16
   18ef0:	5c079a63          	bnez	a5,194c4 <_vfiprintf_r+0xc00>
   18ef4:	04037793          	andi	a5,t1,64
   18ef8:	060103a3          	sb	zero,103(sp)
   18efc:	7c078063          	beqz	a5,196bc <_vfiprintf_r+0xdf8>
   18f00:	00813783          	ld	a5,8(sp)
   18f04:	00878713          	addi	a4,a5,8
   18f08:	0007d783          	lhu	a5,0(a5)
   18f0c:	5c04c663          	bltz	s1,194d8 <_vfiprintf_r+0xc14>
   18f10:	00e13423          	sd	a4,8(sp)
   18f14:	f7f37313          	andi	t1,t1,-129
   18f18:	00000593          	li	a1,0
   18f1c:	ee0798e3          	bnez	a5,18e0c <_vfiprintf_r+0x548>
   18f20:	c60482e3          	beqz	s1,18b84 <_vfiprintf_r+0x2c0>
   18f24:	00000793          	li	a5,0
   18f28:	0307879b          	addiw	a5,a5,48
   18f2c:	0af107a3          	sb	a5,175(sp)
   18f30:	05c12a03          	lw	s4,92(sp)
   18f34:	0af10b93          	addi	s7,sp,175
   18f38:	c59ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   18f3c:	b40e98e3          	bnez	t4,18a8c <_vfiprintf_r+0x1c8>
   18f40:	00100513          	li	a0,1
   18f44:	02000e93          	li	t4,32
   18f48:	000b0813          	mv	a6,s6
   18f4c:	b05ff06f          	j	18a50 <_vfiprintf_r+0x18c>
   18f50:	00136313          	ori	t1,t1,1
   18f54:	000b0813          	mv	a6,s6
   18f58:	af9ff06f          	j	18a50 <_vfiprintf_r+0x18c>
   18f5c:	00813783          	ld	a5,8(sp)
   18f60:	060103a3          	sb	zero,103(sp)
   18f64:	0007bb83          	ld	s7,0(a5)
   18f68:	00878d93          	addi	s11,a5,8
   18f6c:	0e0b84e3          	beqz	s7,19854 <_vfiprintf_r+0xf90>
   18f70:	0404cee3          	bltz	s1,197cc <_vfiprintf_r+0xf08>
   18f74:	00048613          	mv	a2,s1
   18f78:	00000593          	li	a1,0
   18f7c:	000b8513          	mv	a0,s7
   18f80:	00613423          	sd	t1,8(sp)
   18f84:	805f90ef          	jal	ra,12788 <memchr>
   18f88:	00813303          	ld	t1,8(sp)
   18f8c:	120502e3          	beqz	a0,198b0 <_vfiprintf_r+0xfec>
   18f90:	41750a3b          	subw	s4,a0,s7
   18f94:	06714583          	lbu	a1,103(sp)
   18f98:	01b13423          	sd	s11,8(sp)
   18f9c:	00000493          	li	s1,0
   18fa0:	bf1ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   18fa4:	f40504e3          	beqz	a0,18eec <_vfiprintf_r+0x628>
   18fa8:	07d103a3          	sb	t4,103(sp)
   18fac:	f41ff06f          	j	18eec <_vfiprintf_r+0x628>
   18fb0:	00813703          	ld	a4,8(sp)
   18fb4:	00100993          	li	s3,1
   18fb8:	060103a3          	sb	zero,103(sp)
   18fbc:	00072783          	lw	a5,0(a4)
   18fc0:	00098a13          	mv	s4,s3
   18fc4:	08810b93          	addi	s7,sp,136
   18fc8:	08f10423          	sb	a5,136(sp)
   18fcc:	00870793          	addi	a5,a4,8
   18fd0:	00f13423          	sd	a5,8(sp)
   18fd4:	00000493          	li	s1,0
   18fd8:	bcdff06f          	j	18ba4 <_vfiprintf_r+0x2e0>
   18fdc:	e00502e3          	beqz	a0,18de0 <_vfiprintf_r+0x51c>
   18fe0:	07d103a3          	sb	t4,103(sp)
   18fe4:	dfdff06f          	j	18de0 <_vfiprintf_r+0x51c>
   18fe8:	120510e3          	bnez	a0,19908 <_vfiprintf_r+0x1044>
   18fec:	0001b7b7          	lui	a5,0x1b
   18ff0:	b0078793          	addi	a5,a5,-1280 # 1ab00 <zeroes.4137+0x40>
   18ff4:	00f13c23          	sd	a5,24(sp)
   18ff8:	01037793          	andi	a5,t1,16
   18ffc:	06078063          	beqz	a5,1905c <_vfiprintf_r+0x798>
   19000:	00813683          	ld	a3,8(sp)
   19004:	0006b783          	ld	a5,0(a3)
   19008:	00868693          	addi	a3,a3,8
   1900c:	00d13423          	sd	a3,8(sp)
   19010:	00137613          	andi	a2,t1,1
   19014:	46060863          	beqz	a2,19484 <_vfiprintf_r+0xbc0>
   19018:	66079063          	bnez	a5,19678 <_vfiprintf_r+0xdb4>
   1901c:	060103a3          	sb	zero,103(sp)
   19020:	6404c663          	bltz	s1,1966c <_vfiprintf_r+0xda8>
   19024:	f7f37313          	andi	t1,t1,-129
   19028:	b55ff06f          	j	18b7c <_vfiprintf_r+0x2b8>
   1902c:	e0050ce3          	beqz	a0,18e44 <_vfiprintf_r+0x580>
   19030:	07d103a3          	sb	t4,103(sp)
   19034:	e11ff06f          	j	18e44 <_vfiprintf_r+0x580>
   19038:	04036313          	ori	t1,t1,64
   1903c:	000b0813          	mv	a6,s6
   19040:	a11ff06f          	j	18a50 <_vfiprintf_r+0x18c>
   19044:	0a051ee3          	bnez	a0,19900 <_vfiprintf_r+0x103c>
   19048:	0001b7b7          	lui	a5,0x1b
   1904c:	b1878793          	addi	a5,a5,-1256 # 1ab18 <zeroes.4137+0x58>
   19050:	00f13c23          	sd	a5,24(sp)
   19054:	01037793          	andi	a5,t1,16
   19058:	fa0794e3          	bnez	a5,19000 <_vfiprintf_r+0x73c>
   1905c:	04037793          	andi	a5,t1,64
   19060:	00813683          	ld	a3,8(sp)
   19064:	68078e63          	beqz	a5,19700 <_vfiprintf_r+0xe3c>
   19068:	0006d783          	lhu	a5,0(a3)
   1906c:	00868693          	addi	a3,a3,8
   19070:	00d13423          	sd	a3,8(sp)
   19074:	f9dff06f          	j	19010 <_vfiprintf_r+0x74c>
   19078:	000b4703          	lbu	a4,0(s6)
   1907c:	001b0813          	addi	a6,s6,1
   19080:	05e70ee3          	beq	a4,t5,198dc <_vfiprintf_r+0x1018>
   19084:	fd07079b          	addiw	a5,a4,-48
   19088:	00000493          	li	s1,0
   1908c:	00080b13          	mv	s6,a6
   19090:	9cf5e4e3          	bltu	a1,a5,18a58 <_vfiprintf_r+0x194>
   19094:	001b0b13          	addi	s6,s6,1
   19098:	fffb4703          	lbu	a4,-1(s6)
   1909c:	00149f9b          	slliw	t6,s1,0x1
   190a0:	0034949b          	slliw	s1,s1,0x3
   190a4:	009f84bb          	addw	s1,t6,s1
   190a8:	00f484bb          	addw	s1,s1,a5
   190ac:	fd07079b          	addiw	a5,a4,-48
   190b0:	fef5f2e3          	bleu	a5,a1,19094 <_vfiprintf_r+0x7d0>
   190b4:	9a04d2e3          	bgez	s1,18a58 <_vfiprintf_r+0x194>
   190b8:	fff00493          	li	s1,-1
   190bc:	99dff06f          	j	18a58 <_vfiprintf_r+0x194>
   190c0:	040518e3          	bnez	a0,19910 <_vfiprintf_r+0x104c>
   190c4:	6e070663          	beqz	a4,197b0 <_vfiprintf_r+0xeec>
   190c8:	00100993          	li	s3,1
   190cc:	08e10423          	sb	a4,136(sp)
   190d0:	060103a3          	sb	zero,103(sp)
   190d4:	00098a13          	mv	s4,s3
   190d8:	08810b93          	addi	s7,sp,136
   190dc:	00000493          	li	s1,0
   190e0:	ac5ff06f          	j	18ba4 <_vfiprintf_r+0x2e0>
   190e4:	07010613          	addi	a2,sp,112
   190e8:	000d0593          	mv	a1,s10
   190ec:	000a8513          	mv	a0,s5
   190f0:	05f13423          	sd	t6,72(sp)
   190f4:	05e13023          	sd	t5,64(sp)
   190f8:	03d13c23          	sd	t4,56(sp)
   190fc:	02513823          	sd	t0,48(sp)
   19100:	02713423          	sd	t2,40(sp)
   19104:	02613023          	sd	t1,32(sp)
   19108:	eb8ff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   1910c:	22051063          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   19110:	07812503          	lw	a0,120(sp)
   19114:	08013783          	ld	a5,128(sp)
   19118:	000c8413          	mv	s0,s9
   1911c:	0015061b          	addiw	a2,a0,1
   19120:	04813f83          	ld	t6,72(sp)
   19124:	04013f03          	ld	t5,64(sp)
   19128:	03813e83          	ld	t4,56(sp)
   1912c:	03013283          	ld	t0,48(sp)
   19130:	02813383          	ld	t2,40(sp)
   19134:	02013303          	ld	t1,32(sp)
   19138:	ab9ff06f          	j	18bf0 <_vfiprintf_r+0x32c>
   1913c:	07812603          	lw	a2,120(sp)
   19140:	08013783          	ld	a5,128(sp)
   19144:	0016059b          	addiw	a1,a2,1
   19148:	06714503          	lbu	a0,103(sp)
   1914c:	b00508e3          	beqz	a0,18c5c <_vfiprintf_r+0x398>
   19150:	00100513          	li	a0,1
   19154:	06710613          	addi	a2,sp,103
   19158:	00a787b3          	add	a5,a5,a0
   1915c:	00c43023          	sd	a2,0(s0)
   19160:	00a43423          	sd	a0,8(s0)
   19164:	08f13023          	sd	a5,128(sp)
   19168:	06b12c23          	sw	a1,120(sp)
   1916c:	00700613          	li	a2,7
   19170:	2ab65a63          	ble	a1,a2,19424 <_vfiprintf_r+0xb60>
   19174:	44079e63          	bnez	a5,195d0 <_vfiprintf_r+0xd0c>
   19178:	2c039063          	bnez	t2,19438 <_vfiprintf_r+0xb74>
   1917c:	00000613          	li	a2,0
   19180:	00050593          	mv	a1,a0
   19184:	000c8413          	mv	s0,s9
   19188:	08000513          	li	a0,128
   1918c:	b0a288e3          	beq	t0,a0,18c9c <_vfiprintf_r+0x3d8>
   19190:	414484bb          	subw	s1,s1,s4
   19194:	ba9054e3          	blez	s1,18d3c <_vfiprintf_r+0x478>
   19198:	0001b737          	lui	a4,0x1b
   1919c:	01000513          	li	a0,16
   191a0:	ac070d93          	addi	s11,a4,-1344 # 1aac0 <zeroes.4137>
   191a4:	06955263          	ble	s1,a0,19208 <_vfiprintf_r+0x944>
   191a8:	01000e93          	li	t4,16
   191ac:	0001b737          	lui	a4,0x1b
   191b0:	ac070d93          	addi	s11,a4,-1344 # 1aac0 <zeroes.4137>
   191b4:	00700f13          	li	t5,7
   191b8:	000e8f93          	mv	t6,t4
   191bc:	0180006f          	j	191d4 <_vfiprintf_r+0x910>
   191c0:	0026059b          	addiw	a1,a2,2
   191c4:	01040413          	addi	s0,s0,16
   191c8:	00050613          	mv	a2,a0
   191cc:	ff04849b          	addiw	s1,s1,-16
   191d0:	029fdc63          	ble	s1,t6,19208 <_vfiprintf_r+0x944>
   191d4:	01078793          	addi	a5,a5,16
   191d8:	0016051b          	addiw	a0,a2,1
   191dc:	01b43023          	sd	s11,0(s0)
   191e0:	01d43423          	sd	t4,8(s0)
   191e4:	08f13023          	sd	a5,128(sp)
   191e8:	06a12c23          	sw	a0,120(sp)
   191ec:	fcaf5ae3          	ble	a0,t5,191c0 <_vfiprintf_r+0x8fc>
   191f0:	14079863          	bnez	a5,19340 <_vfiprintf_r+0xa7c>
   191f4:	ff04849b          	addiw	s1,s1,-16
   191f8:	00100593          	li	a1,1
   191fc:	00000613          	li	a2,0
   19200:	000c8413          	mv	s0,s9
   19204:	fc9fc8e3          	blt	t6,s1,191d4 <_vfiprintf_r+0x910>
   19208:	009787b3          	add	a5,a5,s1
   1920c:	01b43023          	sd	s11,0(s0)
   19210:	00943423          	sd	s1,8(s0)
   19214:	08f13023          	sd	a5,128(sp)
   19218:	06b12c23          	sw	a1,120(sp)
   1921c:	00700613          	li	a2,7
   19220:	24b64063          	blt	a2,a1,19460 <_vfiprintf_r+0xb9c>
   19224:	01040413          	addi	s0,s0,16
   19228:	0015859b          	addiw	a1,a1,1
   1922c:	00fa07b3          	add	a5,s4,a5
   19230:	01743023          	sd	s7,0(s0)
   19234:	01443423          	sd	s4,8(s0)
   19238:	08f13023          	sd	a5,128(sp)
   1923c:	06b12c23          	sw	a1,120(sp)
   19240:	00700713          	li	a4,7
   19244:	b0b74ae3          	blt	a4,a1,18d58 <_vfiprintf_r+0x494>
   19248:	01040413          	addi	s0,s0,16
   1924c:	00437313          	andi	t1,t1,4
   19250:	0a030863          	beqz	t1,19300 <_vfiprintf_r+0xa3c>
   19254:	413904bb          	subw	s1,s2,s3
   19258:	0a905463          	blez	s1,19300 <_vfiprintf_r+0xa3c>
   1925c:	01000713          	li	a4,16
   19260:	62975863          	ble	s1,a4,19890 <_vfiprintf_r+0xfcc>
   19264:	01000a13          	li	s4,16
   19268:	07812603          	lw	a2,120(sp)
   1926c:	05813823          	sd	s8,80(sp)
   19270:	00700d93          	li	s11,7
   19274:	000a0b93          	mv	s7,s4
   19278:	0180006f          	j	19290 <_vfiprintf_r+0x9cc>
   1927c:	0026059b          	addiw	a1,a2,2
   19280:	01040413          	addi	s0,s0,16
   19284:	00070613          	mv	a2,a4
   19288:	ff04849b          	addiw	s1,s1,-16
   1928c:	029bdc63          	ble	s1,s7,192c4 <_vfiprintf_r+0xa00>
   19290:	01078793          	addi	a5,a5,16
   19294:	0016071b          	addiw	a4,a2,1
   19298:	01843023          	sd	s8,0(s0)
   1929c:	01443423          	sd	s4,8(s0)
   192a0:	08f13023          	sd	a5,128(sp)
   192a4:	06e12c23          	sw	a4,120(sp)
   192a8:	fceddae3          	ble	a4,s11,1927c <_vfiprintf_r+0x9b8>
   192ac:	0c079e63          	bnez	a5,19388 <_vfiprintf_r+0xac4>
   192b0:	ff04849b          	addiw	s1,s1,-16
   192b4:	00100593          	li	a1,1
   192b8:	00000613          	li	a2,0
   192bc:	000c8413          	mv	s0,s9
   192c0:	fc9bc8e3          	blt	s7,s1,19290 <_vfiprintf_r+0x9cc>
   192c4:	05013703          	ld	a4,80(sp)
   192c8:	009787b3          	add	a5,a5,s1
   192cc:	00943423          	sd	s1,8(s0)
   192d0:	00e43023          	sd	a4,0(s0)
   192d4:	08f13023          	sd	a5,128(sp)
   192d8:	06b12c23          	sw	a1,120(sp)
   192dc:	00700713          	li	a4,7
   192e0:	02b75063          	ble	a1,a4,19300 <_vfiprintf_r+0xa3c>
   192e4:	a80786e3          	beqz	a5,18d70 <_vfiprintf_r+0x4ac>
   192e8:	07010613          	addi	a2,sp,112
   192ec:	000d0593          	mv	a1,s10
   192f0:	000a8513          	mv	a0,s5
   192f4:	cccff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   192f8:	02051a63          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   192fc:	08013783          	ld	a5,128(sp)
   19300:	01395463          	ble	s3,s2,19308 <_vfiprintf_r+0xa44>
   19304:	00098913          	mv	s2,s3
   19308:	05812703          	lw	a4,88(sp)
   1930c:	0127073b          	addw	a4,a4,s2
   19310:	04e12c23          	sw	a4,88(sp)
   19314:	a60788e3          	beqz	a5,18d84 <_vfiprintf_r+0x4c0>
   19318:	07010613          	addi	a2,sp,112
   1931c:	000d0593          	mv	a1,s10
   19320:	000a8513          	mv	a0,s5
   19324:	c9cff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   19328:	a4050ee3          	beqz	a0,18d84 <_vfiprintf_r+0x4c0>
   1932c:	010d5783          	lhu	a5,16(s10)
   19330:	0407f793          	andi	a5,a5,64
   19334:	44079863          	bnez	a5,19784 <_vfiprintf_r+0xec0>
   19338:	05812503          	lw	a0,88(sp)
   1933c:	f94ff06f          	j	18ad0 <_vfiprintf_r+0x20c>
   19340:	07010613          	addi	a2,sp,112
   19344:	000d0593          	mv	a1,s10
   19348:	000a8513          	mv	a0,s5
   1934c:	03f13c23          	sd	t6,56(sp)
   19350:	03e13823          	sd	t5,48(sp)
   19354:	03d13423          	sd	t4,40(sp)
   19358:	02613023          	sd	t1,32(sp)
   1935c:	c64ff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   19360:	fc0516e3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   19364:	07812603          	lw	a2,120(sp)
   19368:	08013783          	ld	a5,128(sp)
   1936c:	000c8413          	mv	s0,s9
   19370:	0016059b          	addiw	a1,a2,1
   19374:	03813f83          	ld	t6,56(sp)
   19378:	03013f03          	ld	t5,48(sp)
   1937c:	02813e83          	ld	t4,40(sp)
   19380:	02013303          	ld	t1,32(sp)
   19384:	e49ff06f          	j	191cc <_vfiprintf_r+0x908>
   19388:	07010613          	addi	a2,sp,112
   1938c:	000d0593          	mv	a1,s10
   19390:	000a8513          	mv	a0,s5
   19394:	c2cff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   19398:	f8051ae3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   1939c:	07812603          	lw	a2,120(sp)
   193a0:	08013783          	ld	a5,128(sp)
   193a4:	000c8413          	mv	s0,s9
   193a8:	0016059b          	addiw	a1,a2,1
   193ac:	eddff06f          	j	19288 <_vfiprintf_r+0x9c4>
   193b0:	07010613          	addi	a2,sp,112
   193b4:	000d0593          	mv	a1,s10
   193b8:	000a8513          	mv	a0,s5
   193bc:	04513023          	sd	t0,64(sp)
   193c0:	03f13c23          	sd	t6,56(sp)
   193c4:	03e13823          	sd	t5,48(sp)
   193c8:	03d13423          	sd	t4,40(sp)
   193cc:	02613023          	sd	t1,32(sp)
   193d0:	bf0ff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   193d4:	f4051ce3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   193d8:	07812603          	lw	a2,120(sp)
   193dc:	08013783          	ld	a5,128(sp)
   193e0:	000c8413          	mv	s0,s9
   193e4:	0016051b          	addiw	a0,a2,1
   193e8:	04013283          	ld	t0,64(sp)
   193ec:	03813f83          	ld	t6,56(sp)
   193f0:	03013f03          	ld	t5,48(sp)
   193f4:	02813e83          	ld	t4,40(sp)
   193f8:	02013303          	ld	t1,32(sp)
   193fc:	8d5ff06f          	j	18cd0 <_vfiprintf_r+0x40c>
   19400:	34079263          	bnez	a5,19744 <_vfiprintf_r+0xe80>
   19404:	06714603          	lbu	a2,103(sp)
   19408:	02060663          	beqz	a2,19434 <_vfiprintf_r+0xb70>
   1940c:	00100793          	li	a5,1
   19410:	06710613          	addi	a2,sp,103
   19414:	0ac13823          	sd	a2,176(sp)
   19418:	0af13c23          	sd	a5,184(sp)
   1941c:	00078593          	mv	a1,a5
   19420:	000c8413          	mv	s0,s9
   19424:	00058613          	mv	a2,a1
   19428:	01040413          	addi	s0,s0,16
   1942c:	0015859b          	addiw	a1,a1,1
   19430:	82dff06f          	j	18c5c <_vfiprintf_r+0x398>
   19434:	36038063          	beqz	t2,19794 <_vfiprintf_r+0xed0>
   19438:	00200793          	li	a5,2
   1943c:	06810613          	addi	a2,sp,104
   19440:	0ac13823          	sd	a2,176(sp)
   19444:	0af13c23          	sd	a5,184(sp)
   19448:	00100593          	li	a1,1
   1944c:	000c8413          	mv	s0,s9
   19450:	00058613          	mv	a2,a1
   19454:	01040413          	addi	s0,s0,16
   19458:	0015859b          	addiw	a1,a1,1
   1945c:	d2dff06f          	j	19188 <_vfiprintf_r+0x8c4>
   19460:	1c079263          	bnez	a5,19624 <_vfiprintf_r+0xd60>
   19464:	00100713          	li	a4,1
   19468:	000a0793          	mv	a5,s4
   1946c:	0b713823          	sd	s7,176(sp)
   19470:	0b413c23          	sd	s4,184(sp)
   19474:	09413023          	sd	s4,128(sp)
   19478:	06e12c23          	sw	a4,120(sp)
   1947c:	000c8413          	mv	s0,s9
   19480:	dc9ff06f          	j	19248 <_vfiprintf_r+0x984>
   19484:	060103a3          	sb	zero,103(sp)
   19488:	1e04c063          	bltz	s1,19668 <_vfiprintf_r+0xda4>
   1948c:	f7f37313          	andi	t1,t1,-129
   19490:	ee078663          	beqz	a5,18b7c <_vfiprintf_r+0x2b8>
   19494:	00000593          	li	a1,0
   19498:	000c8b93          	mv	s7,s9
   1949c:	01813703          	ld	a4,24(sp)
   194a0:	00f7f613          	andi	a2,a5,15
   194a4:	fffb8b93          	addi	s7,s7,-1
   194a8:	00c70633          	add	a2,a4,a2
   194ac:	00064603          	lbu	a2,0(a2)
   194b0:	0047d793          	srli	a5,a5,0x4
   194b4:	00cb8023          	sb	a2,0(s7)
   194b8:	fe0792e3          	bnez	a5,1949c <_vfiprintf_r+0xbd8>
   194bc:	417c8a3b          	subw	s4,s9,s7
   194c0:	ed0ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   194c4:	00813783          	ld	a5,8(sp)
   194c8:	060103a3          	sb	zero,103(sp)
   194cc:	00878713          	addi	a4,a5,8
   194d0:	0007b783          	ld	a5,0(a5)
   194d4:	a204dee3          	bgez	s1,18f10 <_vfiprintf_r+0x64c>
   194d8:	00e13423          	sd	a4,8(sp)
   194dc:	00000593          	li	a1,0
   194e0:	920796e3          	bnez	a5,18e0c <_vfiprintf_r+0x548>
   194e4:	00100793          	li	a5,1
   194e8:	00100713          	li	a4,1
   194ec:	a2e78ce3          	beq	a5,a4,18f24 <_vfiprintf_r+0x660>
   194f0:	00200713          	li	a4,2
   194f4:	08e78e63          	beq	a5,a4,19590 <_vfiprintf_r+0xccc>
   194f8:	00000793          	li	a5,0
   194fc:	97dff06f          	j	18e78 <_vfiprintf_r+0x5b4>
   19500:	07010613          	addi	a2,sp,112
   19504:	000d0593          	mv	a1,s10
   19508:	000a8513          	mv	a0,s5
   1950c:	02613023          	sd	t1,32(sp)
   19510:	ab0ff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   19514:	e0051ce3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   19518:	08013783          	ld	a5,128(sp)
   1951c:	000c8413          	mv	s0,s9
   19520:	02013303          	ld	t1,32(sp)
   19524:	d29ff06f          	j	1924c <_vfiprintf_r+0x988>
   19528:	04037793          	andi	a5,t1,64
   1952c:	00813703          	ld	a4,8(sp)
   19530:	20078263          	beqz	a5,19734 <_vfiprintf_r+0xe70>
   19534:	00071783          	lh	a5,0(a4)
   19538:	00870713          	addi	a4,a4,8
   1953c:	00e13423          	sd	a4,8(sp)
   19540:	8b9ff06f          	j	18df8 <_vfiprintf_r+0x534>
   19544:	04037793          	andi	a5,t1,64
   19548:	060103a3          	sb	zero,103(sp)
   1954c:	18078263          	beqz	a5,196d0 <_vfiprintf_r+0xe0c>
   19550:	00813783          	ld	a5,8(sp)
   19554:	00878713          	addi	a4,a5,8
   19558:	0007d783          	lhu	a5,0(a5)
   1955c:	9004d2e3          	bgez	s1,18e60 <_vfiprintf_r+0x59c>
   19560:	00e13423          	sd	a4,8(sp)
   19564:	00000593          	li	a1,0
   19568:	f80780e3          	beqz	a5,194e8 <_vfiprintf_r+0xc24>
   1956c:	00000593          	li	a1,0
   19570:	909ff06f          	j	18e78 <_vfiprintf_r+0x5b4>
   19574:	07010613          	addi	a2,sp,112
   19578:	000d0593          	mv	a1,s10
   1957c:	000a8513          	mv	a0,s5
   19580:	a40ff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   19584:	da0514e3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   19588:	000c8413          	mv	s0,s9
   1958c:	c88ff06f          	j	18a14 <_vfiprintf_r+0x150>
   19590:	00000793          	li	a5,0
   19594:	f05ff06f          	j	19498 <_vfiprintf_r+0xbd4>
   19598:	07010613          	addi	a2,sp,112
   1959c:	000d0593          	mv	a1,s10
   195a0:	000a8513          	mv	a0,s5
   195a4:	02513423          	sd	t0,40(sp)
   195a8:	02613023          	sd	t1,32(sp)
   195ac:	a14ff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   195b0:	d6051ee3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   195b4:	07812603          	lw	a2,120(sp)
   195b8:	08013783          	ld	a5,128(sp)
   195bc:	000c8413          	mv	s0,s9
   195c0:	0016059b          	addiw	a1,a2,1
   195c4:	02813283          	ld	t0,40(sp)
   195c8:	02013303          	ld	t1,32(sp)
   195cc:	bbdff06f          	j	19188 <_vfiprintf_r+0x8c4>
   195d0:	07010613          	addi	a2,sp,112
   195d4:	000d0593          	mv	a1,s10
   195d8:	000a8513          	mv	a0,s5
   195dc:	02513823          	sd	t0,48(sp)
   195e0:	02713423          	sd	t2,40(sp)
   195e4:	02613023          	sd	t1,32(sp)
   195e8:	9d8ff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   195ec:	d40510e3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   195f0:	07812603          	lw	a2,120(sp)
   195f4:	08013783          	ld	a5,128(sp)
   195f8:	000c8413          	mv	s0,s9
   195fc:	0016059b          	addiw	a1,a2,1
   19600:	03013283          	ld	t0,48(sp)
   19604:	02813383          	ld	t2,40(sp)
   19608:	02013303          	ld	t1,32(sp)
   1960c:	e50ff06f          	j	18c5c <_vfiprintf_r+0x398>
   19610:	1e079063          	bnez	a5,197f0 <_vfiprintf_r+0xf2c>
   19614:	00100593          	li	a1,1
   19618:	00000613          	li	a2,0
   1961c:	000c8413          	mv	s0,s9
   19620:	b71ff06f          	j	19190 <_vfiprintf_r+0x8cc>
   19624:	07010613          	addi	a2,sp,112
   19628:	000d0593          	mv	a1,s10
   1962c:	000a8513          	mv	a0,s5
   19630:	02613023          	sd	t1,32(sp)
   19634:	98cff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   19638:	ce051ae3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   1963c:	07812583          	lw	a1,120(sp)
   19640:	08013783          	ld	a5,128(sp)
   19644:	000c8413          	mv	s0,s9
   19648:	0015859b          	addiw	a1,a1,1
   1964c:	02013303          	ld	t1,32(sp)
   19650:	eecff06f          	j	18d3c <_vfiprintf_r+0x478>
   19654:	00e13423          	sd	a4,8(sp)
   19658:	0001b737          	lui	a4,0x1b
   1965c:	b1870713          	addi	a4,a4,-1256 # 1ab18 <zeroes.4137+0x58>
   19660:	00060313          	mv	t1,a2
   19664:	00e13c23          	sd	a4,24(sp)
   19668:	e20796e3          	bnez	a5,19494 <_vfiprintf_r+0xbd0>
   1966c:	00000593          	li	a1,0
   19670:	00200793          	li	a5,2
   19674:	e75ff06f          	j	194e8 <_vfiprintf_r+0xc24>
   19678:	03000613          	li	a2,48
   1967c:	06e104a3          	sb	a4,105(sp)
   19680:	06c10423          	sb	a2,104(sp)
   19684:	060103a3          	sb	zero,103(sp)
   19688:	00236713          	ori	a4,t1,2
   1968c:	1a04c463          	bltz	s1,19834 <_vfiprintf_r+0xf70>
   19690:	f7f37313          	andi	t1,t1,-129
   19694:	00236313          	ori	t1,t1,2
   19698:	00000593          	li	a1,0
   1969c:	dfdff06f          	j	19498 <_vfiprintf_r+0xbd4>
   196a0:	0001b737          	lui	a4,0x1b
   196a4:	b1870713          	addi	a4,a4,-1256 # 1ab18 <zeroes.4137+0x58>
   196a8:	00000593          	li	a1,0
   196ac:	00e13c23          	sd	a4,24(sp)
   196b0:	de9ff06f          	j	19498 <_vfiprintf_r+0xbd4>
   196b4:	000b0493          	mv	s1,s6
   196b8:	b68ff06f          	j	18a20 <_vfiprintf_r+0x15c>
   196bc:	00813783          	ld	a5,8(sp)
   196c0:	00878713          	addi	a4,a5,8
   196c4:	0007e783          	lwu	a5,0(a5)
   196c8:	8404d4e3          	bgez	s1,18f10 <_vfiprintf_r+0x64c>
   196cc:	e0dff06f          	j	194d8 <_vfiprintf_r+0xc14>
   196d0:	00813783          	ld	a5,8(sp)
   196d4:	00878713          	addi	a4,a5,8
   196d8:	0007e783          	lwu	a5,0(a5)
   196dc:	f804d263          	bgez	s1,18e60 <_vfiprintf_r+0x59c>
   196e0:	e81ff06f          	j	19560 <_vfiprintf_r+0xc9c>
   196e4:	02d00713          	li	a4,45
   196e8:	06e103a3          	sb	a4,103(sp)
   196ec:	40f007b3          	neg	a5,a5
   196f0:	1804c863          	bltz	s1,19880 <_vfiprintf_r+0xfbc>
   196f4:	f7f37313          	andi	t1,t1,-129
   196f8:	02d00593          	li	a1,45
   196fc:	f10ff06f          	j	18e0c <_vfiprintf_r+0x548>
   19700:	0006e783          	lwu	a5,0(a3)
   19704:	00868693          	addi	a3,a3,8
   19708:	00d13423          	sd	a3,8(sp)
   1970c:	905ff06f          	j	19010 <_vfiprintf_r+0x74c>
   19710:	00813703          	ld	a4,8(sp)
   19714:	04037313          	andi	t1,t1,64
   19718:	00073783          	ld	a5,0(a4)
   1971c:	00870713          	addi	a4,a4,8
   19720:	00e13423          	sd	a4,8(sp)
   19724:	08030063          	beqz	t1,197a4 <_vfiprintf_r+0xee0>
   19728:	05815703          	lhu	a4,88(sp)
   1972c:	00e79023          	sh	a4,0(a5)
   19730:	a84ff06f          	j	189b4 <_vfiprintf_r+0xf0>
   19734:	00072783          	lw	a5,0(a4)
   19738:	00870713          	addi	a4,a4,8
   1973c:	00e13423          	sd	a4,8(sp)
   19740:	eb8ff06f          	j	18df8 <_vfiprintf_r+0x534>
   19744:	07010613          	addi	a2,sp,112
   19748:	000d0593          	mv	a1,s10
   1974c:	000a8513          	mv	a0,s5
   19750:	02513823          	sd	t0,48(sp)
   19754:	02713423          	sd	t2,40(sp)
   19758:	02613023          	sd	t1,32(sp)
   1975c:	864ff0ef          	jal	ra,187c0 <__sprint_r.part.0>
   19760:	bc0516e3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   19764:	07812603          	lw	a2,120(sp)
   19768:	08013783          	ld	a5,128(sp)
   1976c:	000c8413          	mv	s0,s9
   19770:	0016059b          	addiw	a1,a2,1
   19774:	03013283          	ld	t0,48(sp)
   19778:	02813383          	ld	t2,40(sp)
   1977c:	02013303          	ld	t1,32(sp)
   19780:	9c9ff06f          	j	19148 <_vfiprintf_r+0x884>
   19784:	fff00513          	li	a0,-1
   19788:	b48ff06f          	j	18ad0 <_vfiprintf_r+0x20c>
   1978c:	000c8413          	mv	s0,s9
   19790:	acdff06f          	j	1925c <_vfiprintf_r+0x998>
   19794:	00000613          	li	a2,0
   19798:	00100593          	li	a1,1
   1979c:	000c8413          	mv	s0,s9
   197a0:	9e9ff06f          	j	19188 <_vfiprintf_r+0x8c4>
   197a4:	05812703          	lw	a4,88(sp)
   197a8:	00e7a023          	sw	a4,0(a5)
   197ac:	a08ff06f          	j	189b4 <_vfiprintf_r+0xf0>
   197b0:	08013783          	ld	a5,128(sp)
   197b4:	b6078ce3          	beqz	a5,1932c <_vfiprintf_r+0xa68>
   197b8:	07010613          	addi	a2,sp,112
   197bc:	000d0593          	mv	a1,s10
   197c0:	000a8513          	mv	a0,s5
   197c4:	ffdfe0ef          	jal	ra,187c0 <__sprint_r.part.0>
   197c8:	b65ff06f          	j	1932c <_vfiprintf_r+0xa68>
   197cc:	000b8513          	mv	a0,s7
   197d0:	02613023          	sd	t1,32(sp)
   197d4:	a09f90ef          	jal	ra,131dc <strlen>
   197d8:	00050a1b          	sext.w	s4,a0
   197dc:	06714583          	lbu	a1,103(sp)
   197e0:	01b13423          	sd	s11,8(sp)
   197e4:	00000493          	li	s1,0
   197e8:	02013303          	ld	t1,32(sp)
   197ec:	ba4ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   197f0:	07010613          	addi	a2,sp,112
   197f4:	000d0593          	mv	a1,s10
   197f8:	000a8513          	mv	a0,s5
   197fc:	02613023          	sd	t1,32(sp)
   19800:	fc1fe0ef          	jal	ra,187c0 <__sprint_r.part.0>
   19804:	b20514e3          	bnez	a0,1932c <_vfiprintf_r+0xa68>
   19808:	07812603          	lw	a2,120(sp)
   1980c:	08013783          	ld	a5,128(sp)
   19810:	000c8413          	mv	s0,s9
   19814:	0016059b          	addiw	a1,a2,1
   19818:	02013303          	ld	t1,32(sp)
   1981c:	975ff06f          	j	19190 <_vfiprintf_r+0x8cc>
   19820:	07812603          	lw	a2,120(sp)
   19824:	08013783          	ld	a5,128(sp)
   19828:	05813823          	sd	s8,80(sp)
   1982c:	0016061b          	addiw	a2,a2,1
   19830:	bfcff06f          	j	18c2c <_vfiprintf_r+0x368>
   19834:	00000593          	li	a1,0
   19838:	00200613          	li	a2,2
   1983c:	00100513          	li	a0,1
   19840:	08a60263          	beq	a2,a0,198c4 <_vfiprintf_r+0x1000>
   19844:	00200513          	li	a0,2
   19848:	08a61263          	bne	a2,a0,198cc <_vfiprintf_r+0x1008>
   1984c:	00070313          	mv	t1,a4
   19850:	c49ff06f          	j	19498 <_vfiprintf_r+0xbd4>
   19854:	00600793          	li	a5,6
   19858:	0097f463          	bleu	s1,a5,19860 <_vfiprintf_r+0xf9c>
   1985c:	00078493          	mv	s1,a5
   19860:	00048a13          	mv	s4,s1
   19864:	00048993          	mv	s3,s1
   19868:	0604c663          	bltz	s1,198d4 <_vfiprintf_r+0x1010>
   1986c:	0001b737          	lui	a4,0x1b
   19870:	01b13423          	sd	s11,8(sp)
   19874:	b3070b93          	addi	s7,a4,-1232 # 1ab30 <zeroes.4137+0x70>
   19878:	00000493          	li	s1,0
   1987c:	b28ff06f          	j	18ba4 <_vfiprintf_r+0x2e0>
   19880:	00030713          	mv	a4,t1
   19884:	02d00593          	li	a1,45
   19888:	00100613          	li	a2,1
   1988c:	fb1ff06f          	j	1983c <_vfiprintf_r+0xf78>
   19890:	07812583          	lw	a1,120(sp)
   19894:	05813823          	sd	s8,80(sp)
   19898:	0015859b          	addiw	a1,a1,1
   1989c:	a29ff06f          	j	192c4 <_vfiprintf_r+0xa00>
   198a0:	0001b737          	lui	a4,0x1b
   198a4:	00058513          	mv	a0,a1
   198a8:	ac070d93          	addi	s11,a4,-1344 # 1aac0 <zeroes.4137>
   198ac:	c60ff06f          	j	18d0c <_vfiprintf_r+0x448>
   198b0:	00048a13          	mv	s4,s1
   198b4:	06714583          	lbu	a1,103(sp)
   198b8:	01b13423          	sd	s11,8(sp)
   198bc:	00000493          	li	s1,0
   198c0:	ad0ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   198c4:	00070313          	mv	t1,a4
   198c8:	d44ff06f          	j	18e0c <_vfiprintf_r+0x548>
   198cc:	00070313          	mv	t1,a4
   198d0:	da8ff06f          	j	18e78 <_vfiprintf_r+0x5b4>
   198d4:	00000993          	li	s3,0
   198d8:	f95ff06f          	j	1986c <_vfiprintf_r+0xfa8>
   198dc:	00813783          	ld	a5,8(sp)
   198e0:	00080b13          	mv	s6,a6
   198e4:	0007a483          	lw	s1,0(a5)
   198e8:	00878b93          	addi	s7,a5,8
   198ec:	01713423          	sd	s7,8(sp)
   198f0:	9804de63          	bgez	s1,18a8c <_vfiprintf_r+0x1c8>
   198f4:	fff00493          	li	s1,-1
   198f8:	000b0813          	mv	a6,s6
   198fc:	954ff06f          	j	18a50 <_vfiprintf_r+0x18c>
   19900:	07d103a3          	sb	t4,103(sp)
   19904:	f44ff06f          	j	19048 <_vfiprintf_r+0x784>
   19908:	07d103a3          	sb	t4,103(sp)
   1990c:	ee0ff06f          	j	18fec <_vfiprintf_r+0x728>
   19910:	07d103a3          	sb	t4,103(sp)
   19914:	fb0ff06f          	j	190c4 <_vfiprintf_r+0x800>
   19918:	00137793          	andi	a5,t1,1
   1991c:	00078c63          	beqz	a5,19934 <_vfiprintf_r+0x1070>
   19920:	03000793          	li	a5,48
   19924:	0af107a3          	sb	a5,175(sp)
   19928:	05c12a03          	lw	s4,92(sp)
   1992c:	0af10b93          	addi	s7,sp,175
   19930:	a60ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   19934:	00000a13          	li	s4,0
   19938:	000c8b93          	mv	s7,s9
   1993c:	a54ff06f          	j	18b90 <_vfiprintf_r+0x2cc>
   19940:	07d103a3          	sb	t4,103(sp)
   19944:	cfcff06f          	j	18e40 <_vfiprintf_r+0x57c>
   19948:	07d103a3          	sb	t4,103(sp)
   1994c:	c90ff06f          	j	18ddc <_vfiprintf_r+0x518>
   19950:	07d103a3          	sb	t4,103(sp)
   19954:	d94ff06f          	j	18ee8 <_vfiprintf_r+0x624>
   19958:	07d103a3          	sb	t4,103(sp)
   1995c:	d64ff06f          	j	18ec0 <_vfiprintf_r+0x5fc>

0000000000019960 <vfiprintf>:
   19960:	00060693          	mv	a3,a2
   19964:	00058613          	mv	a2,a1
   19968:	00050593          	mv	a1,a0
   1996c:	8101b503          	ld	a0,-2032(gp)
   19970:	f55fe06f          	j	188c4 <_vfiprintf_r>

0000000000019974 <__sbprintf>:
   19974:	0105d783          	lhu	a5,16(a1)
   19978:	0ac5ae03          	lw	t3,172(a1)
   1997c:	0125d303          	lhu	t1,18(a1)
   19980:	0305b883          	ld	a7,48(a1)
   19984:	0405b803          	ld	a6,64(a1)
   19988:	b3010113          	addi	sp,sp,-1232
   1998c:	ffd7f793          	andi	a5,a5,-3
   19990:	40000713          	li	a4,1024
   19994:	4c813023          	sd	s0,1216(sp)
   19998:	00f11823          	sh	a5,16(sp)
   1999c:	00058413          	mv	s0,a1
   199a0:	0b010793          	addi	a5,sp,176
   199a4:	00010593          	mv	a1,sp
   199a8:	4a913c23          	sd	s1,1208(sp)
   199ac:	4b213823          	sd	s2,1200(sp)
   199b0:	4c113423          	sd	ra,1224(sp)
   199b4:	00050913          	mv	s2,a0
   199b8:	0bc12623          	sw	t3,172(sp)
   199bc:	00611923          	sh	t1,18(sp)
   199c0:	03113823          	sd	a7,48(sp)
   199c4:	05013023          	sd	a6,64(sp)
   199c8:	00f13023          	sd	a5,0(sp)
   199cc:	00f13c23          	sd	a5,24(sp)
   199d0:	00e12623          	sw	a4,12(sp)
   199d4:	02e12023          	sw	a4,32(sp)
   199d8:	02012423          	sw	zero,40(sp)
   199dc:	ee9fe0ef          	jal	ra,188c4 <_vfiprintf_r>
   199e0:	00050493          	mv	s1,a0
   199e4:	00054a63          	bltz	a0,199f8 <__sbprintf+0x84>
   199e8:	00010593          	mv	a1,sp
   199ec:	00090513          	mv	a0,s2
   199f0:	8fcf70ef          	jal	ra,10aec <_fflush_r>
   199f4:	02051c63          	bnez	a0,19a2c <__sbprintf+0xb8>
   199f8:	01015783          	lhu	a5,16(sp)
   199fc:	0407f793          	andi	a5,a5,64
   19a00:	00078863          	beqz	a5,19a10 <__sbprintf+0x9c>
   19a04:	01045783          	lhu	a5,16(s0)
   19a08:	0407e793          	ori	a5,a5,64
   19a0c:	00f41823          	sh	a5,16(s0)
   19a10:	4c813083          	ld	ra,1224(sp)
   19a14:	00048513          	mv	a0,s1
   19a18:	4c013403          	ld	s0,1216(sp)
   19a1c:	4b813483          	ld	s1,1208(sp)
   19a20:	4b013903          	ld	s2,1200(sp)
   19a24:	4d010113          	addi	sp,sp,1232
   19a28:	00008067          	ret
   19a2c:	fff00493          	li	s1,-1
   19a30:	fc9ff06f          	j	199f8 <__sbprintf+0x84>

0000000000019a34 <_calloc_r>:
   19a34:	02c585b3          	mul	a1,a1,a2
   19a38:	ff010113          	addi	sp,sp,-16
   19a3c:	00113423          	sd	ra,8(sp)
   19a40:	00813023          	sd	s0,0(sp)
   19a44:	dd4f80ef          	jal	ra,12018 <_malloc_r>
   19a48:	08050c63          	beqz	a0,19ae0 <_calloc_r+0xac>
   19a4c:	ff853603          	ld	a2,-8(a0)
   19a50:	04800713          	li	a4,72
   19a54:	00050413          	mv	s0,a0
   19a58:	ffc67613          	andi	a2,a2,-4
   19a5c:	ff860613          	addi	a2,a2,-8
   19a60:	04c76e63          	bltu	a4,a2,19abc <_calloc_r+0x88>
   19a64:	02700693          	li	a3,39
   19a68:	00050793          	mv	a5,a0
   19a6c:	02c6f863          	bleu	a2,a3,19a9c <_calloc_r+0x68>
   19a70:	00053023          	sd	zero,0(a0)
   19a74:	00053423          	sd	zero,8(a0)
   19a78:	03700793          	li	a5,55
   19a7c:	04c7fe63          	bleu	a2,a5,19ad8 <_calloc_r+0xa4>
   19a80:	00053823          	sd	zero,16(a0)
   19a84:	00053c23          	sd	zero,24(a0)
   19a88:	02050793          	addi	a5,a0,32
   19a8c:	00e61863          	bne	a2,a4,19a9c <_calloc_r+0x68>
   19a90:	02053023          	sd	zero,32(a0)
   19a94:	03050793          	addi	a5,a0,48
   19a98:	02053423          	sd	zero,40(a0)
   19a9c:	0007b023          	sd	zero,0(a5)
   19aa0:	0007b423          	sd	zero,8(a5)
   19aa4:	0007b823          	sd	zero,16(a5)
   19aa8:	00040513          	mv	a0,s0
   19aac:	00813083          	ld	ra,8(sp)
   19ab0:	00013403          	ld	s0,0(sp)
   19ab4:	01010113          	addi	sp,sp,16
   19ab8:	00008067          	ret
   19abc:	00000593          	li	a1,0
   19ac0:	ed1f80ef          	jal	ra,12990 <memset>
   19ac4:	00813083          	ld	ra,8(sp)
   19ac8:	00040513          	mv	a0,s0
   19acc:	00013403          	ld	s0,0(sp)
   19ad0:	01010113          	addi	sp,sp,16
   19ad4:	00008067          	ret
   19ad8:	01050793          	addi	a5,a0,16
   19adc:	fc1ff06f          	j	19a9c <_calloc_r+0x68>
   19ae0:	00000513          	li	a0,0
   19ae4:	fc9ff06f          	j	19aac <_calloc_r+0x78>

0000000000019ae8 <__fputwc>:
   19ae8:	fb010113          	addi	sp,sp,-80
   19aec:	04813023          	sd	s0,64(sp)
   19af0:	03413023          	sd	s4,32(sp)
   19af4:	01513c23          	sd	s5,24(sp)
   19af8:	04113423          	sd	ra,72(sp)
   19afc:	02913c23          	sd	s1,56(sp)
   19b00:	03213823          	sd	s2,48(sp)
   19b04:	03313423          	sd	s3,40(sp)
   19b08:	01613823          	sd	s6,16(sp)
   19b0c:	00050a93          	mv	s5,a0
   19b10:	00058a13          	mv	s4,a1
   19b14:	00060413          	mv	s0,a2
   19b18:	ba8fd0ef          	jal	ra,16ec0 <__locale_mb_cur_max>
   19b1c:	00100793          	li	a5,1
   19b20:	10f50663          	beq	a0,a5,19c2c <__fputwc+0x144>
   19b24:	00810493          	addi	s1,sp,8
   19b28:	0a440693          	addi	a3,s0,164
   19b2c:	000a0613          	mv	a2,s4
   19b30:	00048593          	mv	a1,s1
   19b34:	000a8513          	mv	a0,s5
   19b38:	348000ef          	jal	ra,19e80 <_wcrtomb_r>
   19b3c:	fff00793          	li	a5,-1
   19b40:	00050993          	mv	s3,a0
   19b44:	08f50e63          	beq	a0,a5,19be0 <__fputwc+0xf8>
   19b48:	10050263          	beqz	a0,19c4c <__fputwc+0x164>
   19b4c:	00814583          	lbu	a1,8(sp)
   19b50:	00c42783          	lw	a5,12(s0)
   19b54:	00000913          	li	s2,0
   19b58:	00a00b13          	li	s6,10
   19b5c:	fff7879b          	addiw	a5,a5,-1
   19b60:	00f42623          	sw	a5,12(s0)
   19b64:	0207cc63          	bltz	a5,19b9c <__fputwc+0xb4>
   19b68:	00043783          	ld	a5,0(s0)
   19b6c:	00b78023          	sb	a1,0(a5)
   19b70:	00043783          	ld	a5,0(s0)
   19b74:	00178793          	addi	a5,a5,1
   19b78:	00f43023          	sd	a5,0(s0)
   19b7c:	00190913          	addi	s2,s2,1
   19b80:	00148493          	addi	s1,s1,1
   19b84:	0d397463          	bleu	s3,s2,19c4c <__fputwc+0x164>
   19b88:	00c42783          	lw	a5,12(s0)
   19b8c:	0004c583          	lbu	a1,0(s1)
   19b90:	fff7879b          	addiw	a5,a5,-1
   19b94:	00f42623          	sw	a5,12(s0)
   19b98:	fc07d8e3          	bgez	a5,19b68 <__fputwc+0x80>
   19b9c:	02842703          	lw	a4,40(s0)
   19ba0:	06e7ca63          	blt	a5,a4,19c14 <__fputwc+0x12c>
   19ba4:	00043783          	ld	a5,0(s0)
   19ba8:	00b78023          	sb	a1,0(a5)
   19bac:	00043783          	ld	a5,0(s0)
   19bb0:	0007c703          	lbu	a4,0(a5)
   19bb4:	00178793          	addi	a5,a5,1
   19bb8:	fd6710e3          	bne	a4,s6,19b78 <__fputwc+0x90>
   19bbc:	00040613          	mv	a2,s0
   19bc0:	000b0593          	mv	a1,s6
   19bc4:	000a8513          	mv	a0,s5
   19bc8:	130000ef          	jal	ra,19cf8 <__swbuf_r>
   19bcc:	0015051b          	addiw	a0,a0,1
   19bd0:	00153513          	seqz	a0,a0
   19bd4:	fa0504e3          	beqz	a0,19b7c <__fputwc+0x94>
   19bd8:	fff00513          	li	a0,-1
   19bdc:	0100006f          	j	19bec <__fputwc+0x104>
   19be0:	01045783          	lhu	a5,16(s0)
   19be4:	0407e793          	ori	a5,a5,64
   19be8:	00f41823          	sh	a5,16(s0)
   19bec:	04813083          	ld	ra,72(sp)
   19bf0:	04013403          	ld	s0,64(sp)
   19bf4:	03813483          	ld	s1,56(sp)
   19bf8:	03013903          	ld	s2,48(sp)
   19bfc:	02813983          	ld	s3,40(sp)
   19c00:	02013a03          	ld	s4,32(sp)
   19c04:	01813a83          	ld	s5,24(sp)
   19c08:	01013b03          	ld	s6,16(sp)
   19c0c:	05010113          	addi	sp,sp,80
   19c10:	00008067          	ret
   19c14:	00040613          	mv	a2,s0
   19c18:	000a8513          	mv	a0,s5
   19c1c:	0dc000ef          	jal	ra,19cf8 <__swbuf_r>
   19c20:	0015051b          	addiw	a0,a0,1
   19c24:	00153513          	seqz	a0,a0
   19c28:	fadff06f          	j	19bd4 <__fputwc+0xec>
   19c2c:	fffa079b          	addiw	a5,s4,-1
   19c30:	0fe00713          	li	a4,254
   19c34:	eef768e3          	bltu	a4,a5,19b24 <__fputwc+0x3c>
   19c38:	0ffa7593          	andi	a1,s4,255
   19c3c:	00b10423          	sb	a1,8(sp)
   19c40:	00100993          	li	s3,1
   19c44:	00810493          	addi	s1,sp,8
   19c48:	f09ff06f          	j	19b50 <__fputwc+0x68>
   19c4c:	000a0513          	mv	a0,s4
   19c50:	f9dff06f          	j	19bec <__fputwc+0x104>

0000000000019c54 <_fputwc_r>:
   19c54:	01061783          	lh	a5,16(a2)
   19c58:	00002737          	lui	a4,0x2
   19c5c:	03279693          	slli	a3,a5,0x32
   19c60:	0006cc63          	bltz	a3,19c78 <_fputwc_r+0x24>
   19c64:	0ac62683          	lw	a3,172(a2)
   19c68:	00e7e7b3          	or	a5,a5,a4
   19c6c:	00f61823          	sh	a5,16(a2)
   19c70:	00e6e733          	or	a4,a3,a4
   19c74:	0ae62623          	sw	a4,172(a2)
   19c78:	e71ff06f          	j	19ae8 <__fputwc>

0000000000019c7c <fputwc>:
   19c7c:	fd010113          	addi	sp,sp,-48
   19c80:	02813023          	sd	s0,32(sp)
   19c84:	8101b403          	ld	s0,-2032(gp)
   19c88:	00913c23          	sd	s1,24(sp)
   19c8c:	02113423          	sd	ra,40(sp)
   19c90:	00050493          	mv	s1,a0
   19c94:	00058613          	mv	a2,a1
   19c98:	00040663          	beqz	s0,19ca4 <fputwc+0x28>
   19c9c:	05042783          	lw	a5,80(s0)
   19ca0:	04078263          	beqz	a5,19ce4 <fputwc+0x68>
   19ca4:	01061783          	lh	a5,16(a2)
   19ca8:	00002737          	lui	a4,0x2
   19cac:	03279693          	slli	a3,a5,0x32
   19cb0:	0006cc63          	bltz	a3,19cc8 <fputwc+0x4c>
   19cb4:	0ac62683          	lw	a3,172(a2)
   19cb8:	00e7e7b3          	or	a5,a5,a4
   19cbc:	00f61823          	sh	a5,16(a2)
   19cc0:	00e6e733          	or	a4,a3,a4
   19cc4:	0ae62623          	sw	a4,172(a2)
   19cc8:	00048593          	mv	a1,s1
   19ccc:	00040513          	mv	a0,s0
   19cd0:	02813083          	ld	ra,40(sp)
   19cd4:	02013403          	ld	s0,32(sp)
   19cd8:	01813483          	ld	s1,24(sp)
   19cdc:	03010113          	addi	sp,sp,48
   19ce0:	e09ff06f          	j	19ae8 <__fputwc>
   19ce4:	00040513          	mv	a0,s0
   19ce8:	00b13423          	sd	a1,8(sp)
   19cec:	c00f70ef          	jal	ra,110ec <__sinit>
   19cf0:	00813603          	ld	a2,8(sp)
   19cf4:	fb1ff06f          	j	19ca4 <fputwc+0x28>

0000000000019cf8 <__swbuf_r>:
   19cf8:	fd010113          	addi	sp,sp,-48
   19cfc:	02813023          	sd	s0,32(sp)
   19d00:	00913c23          	sd	s1,24(sp)
   19d04:	01313423          	sd	s3,8(sp)
   19d08:	02113423          	sd	ra,40(sp)
   19d0c:	01213823          	sd	s2,16(sp)
   19d10:	00050493          	mv	s1,a0
   19d14:	00058993          	mv	s3,a1
   19d18:	00060413          	mv	s0,a2
   19d1c:	00050663          	beqz	a0,19d28 <__swbuf_r+0x30>
   19d20:	05052783          	lw	a5,80(a0)
   19d24:	12078e63          	beqz	a5,19e60 <__swbuf_r+0x168>
   19d28:	01041683          	lh	a3,16(s0)
   19d2c:	02842783          	lw	a5,40(s0)
   19d30:	03069713          	slli	a4,a3,0x30
   19d34:	03075713          	srli	a4,a4,0x30
   19d38:	00f42623          	sw	a5,12(s0)
   19d3c:	00877793          	andi	a5,a4,8
   19d40:	0e078e63          	beqz	a5,19e3c <__swbuf_r+0x144>
   19d44:	01843783          	ld	a5,24(s0)
   19d48:	0e078a63          	beqz	a5,19e3c <__swbuf_r+0x144>
   19d4c:	03271613          	slli	a2,a4,0x32
   19d50:	0ff9f913          	andi	s2,s3,255
   19d54:	06065663          	bgez	a2,19dc0 <__swbuf_r+0xc8>
   19d58:	00043703          	ld	a4,0(s0)
   19d5c:	02042683          	lw	a3,32(s0)
   19d60:	40f707bb          	subw	a5,a4,a5
   19d64:	08d7d663          	ble	a3,a5,19df0 <__swbuf_r+0xf8>
   19d68:	0017879b          	addiw	a5,a5,1
   19d6c:	00c42683          	lw	a3,12(s0)
   19d70:	00170613          	addi	a2,a4,1 # 2001 <_ftext-0xdfff>
   19d74:	00c43023          	sd	a2,0(s0)
   19d78:	fff6869b          	addiw	a3,a3,-1
   19d7c:	00d42623          	sw	a3,12(s0)
   19d80:	01370023          	sb	s3,0(a4)
   19d84:	02042703          	lw	a4,32(s0)
   19d88:	08f70263          	beq	a4,a5,19e0c <__swbuf_r+0x114>
   19d8c:	01045783          	lhu	a5,16(s0)
   19d90:	00090513          	mv	a0,s2
   19d94:	0017f793          	andi	a5,a5,1
   19d98:	00078663          	beqz	a5,19da4 <__swbuf_r+0xac>
   19d9c:	00a00793          	li	a5,10
   19da0:	06f90663          	beq	s2,a5,19e0c <__swbuf_r+0x114>
   19da4:	02813083          	ld	ra,40(sp)
   19da8:	02013403          	ld	s0,32(sp)
   19dac:	01813483          	ld	s1,24(sp)
   19db0:	01013903          	ld	s2,16(sp)
   19db4:	00813983          	ld	s3,8(sp)
   19db8:	03010113          	addi	sp,sp,48
   19dbc:	00008067          	ret
   19dc0:	0ac42583          	lw	a1,172(s0)
   19dc4:	ffffe737          	lui	a4,0xffffe
   19dc8:	fff7071b          	addiw	a4,a4,-1
   19dcc:	00e5f733          	and	a4,a1,a4
   19dd0:	00002637          	lui	a2,0x2
   19dd4:	00c6e6b3          	or	a3,a3,a2
   19dd8:	0ae42623          	sw	a4,172(s0)
   19ddc:	00043703          	ld	a4,0(s0)
   19de0:	00d41823          	sh	a3,16(s0)
   19de4:	02042683          	lw	a3,32(s0)
   19de8:	40f707bb          	subw	a5,a4,a5
   19dec:	f6d7cee3          	blt	a5,a3,19d68 <__swbuf_r+0x70>
   19df0:	00040593          	mv	a1,s0
   19df4:	00048513          	mv	a0,s1
   19df8:	cf5f60ef          	jal	ra,10aec <_fflush_r>
   19dfc:	06051663          	bnez	a0,19e68 <__swbuf_r+0x170>
   19e00:	00043703          	ld	a4,0(s0)
   19e04:	00100793          	li	a5,1
   19e08:	f65ff06f          	j	19d6c <__swbuf_r+0x74>
   19e0c:	00040593          	mv	a1,s0
   19e10:	00048513          	mv	a0,s1
   19e14:	cd9f60ef          	jal	ra,10aec <_fflush_r>
   19e18:	04051863          	bnez	a0,19e68 <__swbuf_r+0x170>
   19e1c:	02813083          	ld	ra,40(sp)
   19e20:	00090513          	mv	a0,s2
   19e24:	02013403          	ld	s0,32(sp)
   19e28:	01813483          	ld	s1,24(sp)
   19e2c:	01013903          	ld	s2,16(sp)
   19e30:	00813983          	ld	s3,8(sp)
   19e34:	03010113          	addi	sp,sp,48
   19e38:	00008067          	ret
   19e3c:	00040593          	mv	a1,s0
   19e40:	00048513          	mv	a0,s1
   19e44:	bb4fb0ef          	jal	ra,151f8 <__swsetup_r>
   19e48:	02051063          	bnez	a0,19e68 <__swbuf_r+0x170>
   19e4c:	01041683          	lh	a3,16(s0)
   19e50:	01843783          	ld	a5,24(s0)
   19e54:	03069713          	slli	a4,a3,0x30
   19e58:	03075713          	srli	a4,a4,0x30
   19e5c:	ef1ff06f          	j	19d4c <__swbuf_r+0x54>
   19e60:	a8cf70ef          	jal	ra,110ec <__sinit>
   19e64:	ec5ff06f          	j	19d28 <__swbuf_r+0x30>
   19e68:	fff00513          	li	a0,-1
   19e6c:	f39ff06f          	j	19da4 <__swbuf_r+0xac>

0000000000019e70 <__swbuf>:
   19e70:	00058613          	mv	a2,a1
   19e74:	00050593          	mv	a1,a0
   19e78:	8101b503          	ld	a0,-2032(gp)
   19e7c:	e7dff06f          	j	19cf8 <__swbuf_r>

0000000000019e80 <_wcrtomb_r>:
   19e80:	fc010113          	addi	sp,sp,-64
   19e84:	02913423          	sd	s1,40(sp)
   19e88:	03213023          	sd	s2,32(sp)
   19e8c:	02113c23          	sd	ra,56(sp)
   19e90:	02813823          	sd	s0,48(sp)
   19e94:	01313c23          	sd	s3,24(sp)
   19e98:	01413823          	sd	s4,16(sp)
   19e9c:	00050493          	mv	s1,a0
   19ea0:	00068913          	mv	s2,a3
   19ea4:	06058663          	beqz	a1,19f10 <_wcrtomb_r+0x90>
   19ea8:	8381ba03          	ld	s4,-1992(gp)
   19eac:	00058413          	mv	s0,a1
   19eb0:	00060993          	mv	s3,a2
   19eb4:	800fd0ef          	jal	ra,16eb4 <__locale_charset>
   19eb8:	00050693          	mv	a3,a0
   19ebc:	00090713          	mv	a4,s2
   19ec0:	00098613          	mv	a2,s3
   19ec4:	00040593          	mv	a1,s0
   19ec8:	00048513          	mv	a0,s1
   19ecc:	000a00e7          	jalr	s4
   19ed0:	00050793          	mv	a5,a0
   19ed4:	fff00713          	li	a4,-1
   19ed8:	00078513          	mv	a0,a5
   19edc:	00e79a63          	bne	a5,a4,19ef0 <_wcrtomb_r+0x70>
   19ee0:	00092023          	sw	zero,0(s2)
   19ee4:	08a00793          	li	a5,138
   19ee8:	00f4a023          	sw	a5,0(s1)
   19eec:	fff00513          	li	a0,-1
   19ef0:	03813083          	ld	ra,56(sp)
   19ef4:	03013403          	ld	s0,48(sp)
   19ef8:	02813483          	ld	s1,40(sp)
   19efc:	02013903          	ld	s2,32(sp)
   19f00:	01813983          	ld	s3,24(sp)
   19f04:	01013a03          	ld	s4,16(sp)
   19f08:	04010113          	addi	sp,sp,64
   19f0c:	00008067          	ret
   19f10:	8381b403          	ld	s0,-1992(gp)
   19f14:	fa1fc0ef          	jal	ra,16eb4 <__locale_charset>
   19f18:	00050693          	mv	a3,a0
   19f1c:	00090713          	mv	a4,s2
   19f20:	00000613          	li	a2,0
   19f24:	00010593          	mv	a1,sp
   19f28:	00048513          	mv	a0,s1
   19f2c:	000400e7          	jalr	s0
   19f30:	00050793          	mv	a5,a0
   19f34:	fa1ff06f          	j	19ed4 <_wcrtomb_r+0x54>

0000000000019f38 <wcrtomb>:
   19f38:	fc010113          	addi	sp,sp,-64
   19f3c:	02913423          	sd	s1,40(sp)
   19f40:	03213023          	sd	s2,32(sp)
   19f44:	02113c23          	sd	ra,56(sp)
   19f48:	02813823          	sd	s0,48(sp)
   19f4c:	01313c23          	sd	s3,24(sp)
   19f50:	01413823          	sd	s4,16(sp)
   19f54:	00060913          	mv	s2,a2
   19f58:	8101b483          	ld	s1,-2032(gp)
   19f5c:	06050663          	beqz	a0,19fc8 <wcrtomb+0x90>
   19f60:	8381ba03          	ld	s4,-1992(gp)
   19f64:	00058993          	mv	s3,a1
   19f68:	00050413          	mv	s0,a0
   19f6c:	f49fc0ef          	jal	ra,16eb4 <__locale_charset>
   19f70:	00050693          	mv	a3,a0
   19f74:	00090713          	mv	a4,s2
   19f78:	00098613          	mv	a2,s3
   19f7c:	00040593          	mv	a1,s0
   19f80:	00048513          	mv	a0,s1
   19f84:	000a00e7          	jalr	s4
   19f88:	00050793          	mv	a5,a0
   19f8c:	fff00713          	li	a4,-1
   19f90:	00078513          	mv	a0,a5
   19f94:	00e79a63          	bne	a5,a4,19fa8 <wcrtomb+0x70>
   19f98:	00092023          	sw	zero,0(s2)
   19f9c:	08a00793          	li	a5,138
   19fa0:	00f4a023          	sw	a5,0(s1)
   19fa4:	fff00513          	li	a0,-1
   19fa8:	03813083          	ld	ra,56(sp)
   19fac:	03013403          	ld	s0,48(sp)
   19fb0:	02813483          	ld	s1,40(sp)
   19fb4:	02013903          	ld	s2,32(sp)
   19fb8:	01813983          	ld	s3,24(sp)
   19fbc:	01013a03          	ld	s4,16(sp)
   19fc0:	04010113          	addi	sp,sp,64
   19fc4:	00008067          	ret
   19fc8:	8381b403          	ld	s0,-1992(gp)
   19fcc:	ee9fc0ef          	jal	ra,16eb4 <__locale_charset>
   19fd0:	00050693          	mv	a3,a0
   19fd4:	00090713          	mv	a4,s2
   19fd8:	00000613          	li	a2,0
   19fdc:	00010593          	mv	a1,sp
   19fe0:	00048513          	mv	a0,s1
   19fe4:	000400e7          	jalr	s0
   19fe8:	00050793          	mv	a5,a0
   19fec:	fa1ff06f          	j	19f8c <wcrtomb+0x54>

0000000000019ff0 <__ascii_wctomb>:
   19ff0:	00058c63          	beqz	a1,1a008 <__ascii_wctomb+0x18>
   19ff4:	0ff00793          	li	a5,255
   19ff8:	00c7ec63          	bltu	a5,a2,1a010 <__ascii_wctomb+0x20>
   19ffc:	00c58023          	sb	a2,0(a1)
   1a000:	00100513          	li	a0,1
   1a004:	00008067          	ret
   1a008:	00000513          	li	a0,0
   1a00c:	00008067          	ret
   1a010:	08a00793          	li	a5,138
   1a014:	00f52023          	sw	a5,0(a0)
   1a018:	fff00513          	li	a0,-1
   1a01c:	00008067          	ret

000000000001a020 <_wctomb_r>:
   1a020:	fd010113          	addi	sp,sp,-48
   1a024:	02813023          	sd	s0,32(sp)
   1a028:	8381b403          	ld	s0,-1992(gp)
   1a02c:	02113423          	sd	ra,40(sp)
   1a030:	00913c23          	sd	s1,24(sp)
   1a034:	01213823          	sd	s2,16(sp)
   1a038:	01313423          	sd	s3,8(sp)
   1a03c:	01413023          	sd	s4,0(sp)
   1a040:	00050493          	mv	s1,a0
   1a044:	00068a13          	mv	s4,a3
   1a048:	00058913          	mv	s2,a1
   1a04c:	00060993          	mv	s3,a2
   1a050:	e65fc0ef          	jal	ra,16eb4 <__locale_charset>
   1a054:	000a0713          	mv	a4,s4
   1a058:	00050693          	mv	a3,a0
   1a05c:	00098613          	mv	a2,s3
   1a060:	00090593          	mv	a1,s2
   1a064:	00048513          	mv	a0,s1
   1a068:	00040313          	mv	t1,s0
   1a06c:	02813083          	ld	ra,40(sp)
   1a070:	02013403          	ld	s0,32(sp)
   1a074:	01813483          	ld	s1,24(sp)
   1a078:	01013903          	ld	s2,16(sp)
   1a07c:	00813983          	ld	s3,8(sp)
   1a080:	00013a03          	ld	s4,0(sp)
   1a084:	03010113          	addi	sp,sp,48
   1a088:	00030067          	jr	t1

000000000001a08c <__syscall_error>:
   1a08c:	ff010113          	addi	sp,sp,-16
   1a090:	00113423          	sd	ra,8(sp)
   1a094:	00813023          	sd	s0,0(sp)
   1a098:	00050413          	mv	s0,a0
   1a09c:	3c0000ef          	jal	ra,1a45c <__errno>
   1a0a0:	00813083          	ld	ra,8(sp)
   1a0a4:	408007bb          	negw	a5,s0
   1a0a8:	00f52023          	sw	a5,0(a0)
   1a0ac:	00013403          	ld	s0,0(sp)
   1a0b0:	fff00513          	li	a0,-1
   1a0b4:	01010113          	addi	sp,sp,16
   1a0b8:	00008067          	ret

000000000001a0bc <open>:
   1a0bc:	00000693          	li	a3,0
   1a0c0:	40000893          	li	a7,1024
   1a0c4:	00000073          	ecall
   1a0c8:	fc0542e3          	bltz	a0,1a08c <__syscall_error>
   1a0cc:	0005051b          	sext.w	a0,a0
   1a0d0:	00008067          	ret

000000000001a0d4 <openat>:
   1a0d4:	03800893          	li	a7,56
   1a0d8:	00000073          	ecall
   1a0dc:	fa0548e3          	bltz	a0,1a08c <__syscall_error>
   1a0e0:	0005051b          	sext.w	a0,a0
   1a0e4:	00008067          	ret

000000000001a0e8 <lseek>:
   1a0e8:	00000693          	li	a3,0
   1a0ec:	03e00893          	li	a7,62
   1a0f0:	00000073          	ecall
   1a0f4:	f8054ce3          	bltz	a0,1a08c <__syscall_error>
   1a0f8:	00008067          	ret

000000000001a0fc <read>:
   1a0fc:	00000693          	li	a3,0
   1a100:	03f00893          	li	a7,63
   1a104:	00000073          	ecall
   1a108:	f80542e3          	bltz	a0,1a08c <__syscall_error>
   1a10c:	00008067          	ret

000000000001a110 <write>:
   1a110:	00000693          	li	a3,0
   1a114:	04000893          	li	a7,64
   1a118:	00000073          	ecall
   1a11c:	f60548e3          	bltz	a0,1a08c <__syscall_error>
   1a120:	00008067          	ret

000000000001a124 <fstat>:
   1a124:	00000613          	li	a2,0
   1a128:	00000693          	li	a3,0
   1a12c:	05000893          	li	a7,80
   1a130:	00000073          	ecall
   1a134:	f4054ce3          	bltz	a0,1a08c <__syscall_error>
   1a138:	0005051b          	sext.w	a0,a0
   1a13c:	00008067          	ret

000000000001a140 <stat>:
   1a140:	00000613          	li	a2,0
   1a144:	00000693          	li	a3,0
   1a148:	40e00893          	li	a7,1038
   1a14c:	00000073          	ecall
   1a150:	f2054ee3          	bltz	a0,1a08c <__syscall_error>
   1a154:	0005051b          	sext.w	a0,a0
   1a158:	00008067          	ret

000000000001a15c <lstat>:
   1a15c:	00000613          	li	a2,0
   1a160:	00000693          	li	a3,0
   1a164:	40f00893          	li	a7,1039
   1a168:	00000073          	ecall
   1a16c:	f20540e3          	bltz	a0,1a08c <__syscall_error>
   1a170:	0005051b          	sext.w	a0,a0
   1a174:	00008067          	ret

000000000001a178 <fstatat>:
   1a178:	04f00893          	li	a7,79
   1a17c:	00000073          	ecall
   1a180:	f00546e3          	bltz	a0,1a08c <__syscall_error>
   1a184:	0005051b          	sext.w	a0,a0
   1a188:	00008067          	ret

000000000001a18c <access>:
   1a18c:	00000613          	li	a2,0
   1a190:	00000693          	li	a3,0
   1a194:	40900893          	li	a7,1033
   1a198:	00000073          	ecall
   1a19c:	ee0548e3          	bltz	a0,1a08c <__syscall_error>
   1a1a0:	0005051b          	sext.w	a0,a0
   1a1a4:	00008067          	ret

000000000001a1a8 <faccessat>:
   1a1a8:	03000893          	li	a7,48
   1a1ac:	00000073          	ecall
   1a1b0:	ec054ee3          	bltz	a0,1a08c <__syscall_error>
   1a1b4:	0005051b          	sext.w	a0,a0
   1a1b8:	00008067          	ret

000000000001a1bc <close>:
   1a1bc:	00000593          	li	a1,0
   1a1c0:	00000613          	li	a2,0
   1a1c4:	00000693          	li	a3,0
   1a1c8:	03900893          	li	a7,57
   1a1cc:	00000073          	ecall
   1a1d0:	ea054ee3          	bltz	a0,1a08c <__syscall_error>
   1a1d4:	0005051b          	sext.w	a0,a0
   1a1d8:	00008067          	ret

000000000001a1dc <link>:
   1a1dc:	00000613          	li	a2,0
   1a1e0:	00000693          	li	a3,0
   1a1e4:	40100893          	li	a7,1025
   1a1e8:	00000073          	ecall
   1a1ec:	ea0540e3          	bltz	a0,1a08c <__syscall_error>
   1a1f0:	0005051b          	sext.w	a0,a0
   1a1f4:	00008067          	ret

000000000001a1f8 <unlink>:
   1a1f8:	00000593          	li	a1,0
   1a1fc:	00000613          	li	a2,0
   1a200:	00000693          	li	a3,0
   1a204:	40200893          	li	a7,1026
   1a208:	00000073          	ecall
   1a20c:	e80540e3          	bltz	a0,1a08c <__syscall_error>
   1a210:	0005051b          	sext.w	a0,a0
   1a214:	00008067          	ret

000000000001a218 <execve>:
   1a218:	ff010113          	addi	sp,sp,-16
   1a21c:	00113423          	sd	ra,8(sp)
   1a220:	23c000ef          	jal	ra,1a45c <__errno>
   1a224:	00813083          	ld	ra,8(sp)
   1a228:	00c00793          	li	a5,12
   1a22c:	00f52023          	sw	a5,0(a0)
   1a230:	01010113          	addi	sp,sp,16
   1a234:	fff00513          	li	a0,-1
   1a238:	00008067          	ret

000000000001a23c <fork>:
   1a23c:	ff010113          	addi	sp,sp,-16
   1a240:	00113423          	sd	ra,8(sp)
   1a244:	218000ef          	jal	ra,1a45c <__errno>
   1a248:	00813083          	ld	ra,8(sp)
   1a24c:	00b00793          	li	a5,11
   1a250:	00f52023          	sw	a5,0(a0)
   1a254:	01010113          	addi	sp,sp,16
   1a258:	fff00513          	li	a0,-1
   1a25c:	00008067          	ret

000000000001a260 <getpid>:
   1a260:	00100513          	li	a0,1
   1a264:	00008067          	ret

000000000001a268 <kill>:
   1a268:	ff010113          	addi	sp,sp,-16
   1a26c:	00113423          	sd	ra,8(sp)
   1a270:	1ec000ef          	jal	ra,1a45c <__errno>
   1a274:	00813083          	ld	ra,8(sp)
   1a278:	01600793          	li	a5,22
   1a27c:	00f52023          	sw	a5,0(a0)
   1a280:	01010113          	addi	sp,sp,16
   1a284:	fff00513          	li	a0,-1
   1a288:	00008067          	ret

000000000001a28c <wait>:
   1a28c:	ff010113          	addi	sp,sp,-16
   1a290:	00113423          	sd	ra,8(sp)
   1a294:	1c8000ef          	jal	ra,1a45c <__errno>
   1a298:	00813083          	ld	ra,8(sp)
   1a29c:	00a00793          	li	a5,10
   1a2a0:	00f52023          	sw	a5,0(a0)
   1a2a4:	01010113          	addi	sp,sp,16
   1a2a8:	fff00513          	li	a0,-1
   1a2ac:	00008067          	ret

000000000001a2b0 <isatty>:
   1a2b0:	f8010113          	addi	sp,sp,-128
   1a2b4:	00010593          	mv	a1,sp
   1a2b8:	00000613          	li	a2,0
   1a2bc:	00000693          	li	a3,0
   1a2c0:	05000893          	li	a7,80
   1a2c4:	00000073          	ecall
   1a2c8:	dc0542e3          	bltz	a0,1a08c <__syscall_error>
   1a2cc:	fff00793          	li	a5,-1
   1a2d0:	0005051b          	sext.w	a0,a0
   1a2d4:	00f50863          	beq	a0,a5,1a2e4 <isatty+0x34>
   1a2d8:	01012503          	lw	a0,16(sp)
   1a2dc:	40d5551b          	sraiw	a0,a0,0xd
   1a2e0:	00157513          	andi	a0,a0,1
   1a2e4:	08010113          	addi	sp,sp,128
   1a2e8:	00008067          	ret

000000000001a2ec <times>:
   1a2ec:	93018313          	addi	t1,gp,-1744
   1a2f0:	00033703          	ld	a4,0(t1)
   1a2f4:	ff010113          	addi	sp,sp,-16
   1a2f8:	00050813          	mv	a6,a0
   1a2fc:	02071063          	bnez	a4,1a31c <times+0x30>
   1a300:	93018513          	addi	a0,gp,-1744
   1a304:	00000593          	li	a1,0
   1a308:	00000613          	li	a2,0
   1a30c:	00000693          	li	a3,0
   1a310:	0a900893          	li	a7,169
   1a314:	00000073          	ecall
   1a318:	d6054ae3          	bltz	a0,1a08c <__syscall_error>
   1a31c:	00010513          	mv	a0,sp
   1a320:	00000593          	li	a1,0
   1a324:	00000613          	li	a2,0
   1a328:	00000693          	li	a3,0
   1a32c:	0a900893          	li	a7,169
   1a330:	00000073          	ecall
   1a334:	d4054ce3          	bltz	a0,1a08c <__syscall_error>
   1a338:	00033703          	ld	a4,0(t1)
   1a33c:	00013783          	ld	a5,0(sp)
   1a340:	fff00513          	li	a0,-1
   1a344:	00083823          	sd	zero,16(a6)
   1a348:	40e786b3          	sub	a3,a5,a4
   1a34c:	000f47b7          	lui	a5,0xf4
   1a350:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xd6b70>
   1a354:	02f68733          	mul	a4,a3,a5
   1a358:	00833683          	ld	a3,8(t1)
   1a35c:	00813783          	ld	a5,8(sp)
   1a360:	00083c23          	sd	zero,24(a6)
   1a364:	00083423          	sd	zero,8(a6)
   1a368:	40d787b3          	sub	a5,a5,a3
   1a36c:	01010113          	addi	sp,sp,16
   1a370:	00f707b3          	add	a5,a4,a5
   1a374:	00f83023          	sd	a5,0(a6)
   1a378:	00008067          	ret

000000000001a37c <gettimeofday>:
   1a37c:	00000593          	li	a1,0
   1a380:	00000613          	li	a2,0
   1a384:	00000693          	li	a3,0
   1a388:	0a900893          	li	a7,169
   1a38c:	00000073          	ecall
   1a390:	ce054ee3          	bltz	a0,1a08c <__syscall_error>
   1a394:	0005051b          	sext.w	a0,a0
   1a398:	00008067          	ret

000000000001a39c <ftime>:
   1a39c:	00051423          	sh	zero,8(a0)
   1a3a0:	00053023          	sd	zero,0(a0)
   1a3a4:	00000513          	li	a0,0
   1a3a8:	00008067          	ret

000000000001a3ac <utime>:
   1a3ac:	fff00513          	li	a0,-1
   1a3b0:	00008067          	ret

000000000001a3b4 <chown>:
   1a3b4:	fff00513          	li	a0,-1
   1a3b8:	00008067          	ret

000000000001a3bc <chmod>:
   1a3bc:	fff00513          	li	a0,-1
   1a3c0:	00008067          	ret

000000000001a3c4 <chdir>:
   1a3c4:	fff00513          	li	a0,-1
   1a3c8:	00008067          	ret

000000000001a3cc <getcwd>:
   1a3cc:	00000513          	li	a0,0
   1a3d0:	00008067          	ret

000000000001a3d4 <sysconf>:
   1a3d4:	00200793          	li	a5,2
   1a3d8:	00f51863          	bne	a0,a5,1a3e8 <sysconf+0x14>
   1a3dc:	000f4537          	lui	a0,0xf4
   1a3e0:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd6b70>
   1a3e4:	00008067          	ret
   1a3e8:	fff00513          	li	a0,-1
   1a3ec:	00008067          	ret

000000000001a3f0 <sbrk>:
   1a3f0:	8c81b703          	ld	a4,-1848(gp)
   1a3f4:	00050793          	mv	a5,a0
   1a3f8:	00071663          	bnez	a4,1a404 <sbrk+0x14>
   1a3fc:	94018713          	addi	a4,gp,-1728
   1a400:	8ce1b423          	sd	a4,-1848(gp)
   1a404:	00e78533          	add	a0,a5,a4
   1a408:	00000593          	li	a1,0
   1a40c:	00000613          	li	a2,0
   1a410:	00000693          	li	a3,0
   1a414:	0d600893          	li	a7,214
   1a418:	00000073          	ecall
   1a41c:	c60548e3          	bltz	a0,1a08c <__syscall_error>
   1a420:	8c81b683          	ld	a3,-1848(gp)
   1a424:	fff00713          	li	a4,-1
   1a428:	00d787b3          	add	a5,a5,a3
   1a42c:	00f51663          	bne	a0,a5,1a438 <sbrk+0x48>
   1a430:	8ca1b423          	sd	a0,-1848(gp)
   1a434:	00068713          	mv	a4,a3
   1a438:	00070513          	mv	a0,a4
   1a43c:	00008067          	ret

000000000001a440 <_exit>:
   1a440:	00000593          	li	a1,0
   1a444:	00000613          	li	a2,0
   1a448:	00000693          	li	a3,0
   1a44c:	05d00893          	li	a7,93
   1a450:	00000073          	ecall
   1a454:	c2054ce3          	bltz	a0,1a08c <__syscall_error>
   1a458:	0000006f          	j	1a458 <_exit+0x18>

000000000001a45c <__errno>:
   1a45c:	8101b503          	ld	a0,-2032(gp)
   1a460:	00008067          	ret
