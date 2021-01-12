.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238C84_704774
/* 704774 80238C84 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 704778 80238C88 AFB20020 */  sw        $s2, 0x20($sp)
/* 70477C 80238C8C 0080902D */  daddu     $s2, $a0, $zero
/* 704780 80238C90 AFBF0024 */  sw        $ra, 0x24($sp)
/* 704784 80238C94 AFB1001C */  sw        $s1, 0x1c($sp)
/* 704788 80238C98 AFB00018 */  sw        $s0, 0x18($sp)
/* 70478C 80238C9C 8E50000C */  lw        $s0, 0xc($s2)
/* 704790 80238CA0 54A00001 */  bnel      $a1, $zero, .L80238CA8
/* 704794 80238CA4 AE400070 */   sw       $zero, 0x70($s2)
.L80238CA8:
/* 704798 80238CA8 8E430070 */  lw        $v1, 0x70($s2)
/* 70479C 80238CAC 10600005 */  beqz      $v1, .L80238CC4
/* 7047A0 80238CB0 24020001 */   addiu    $v0, $zero, 1
/* 7047A4 80238CB4 1062003F */  beq       $v1, $v0, .L80238DB4
/* 7047A8 80238CB8 0000102D */   daddu    $v0, $zero, $zero
/* 7047AC 80238CBC 0808E391 */  j         .L80238E44
/* 7047B0 80238CC0 00000000 */   nop
.L80238CC4:
/* 7047B4 80238CC4 8E050000 */  lw        $a1, ($s0)
/* 7047B8 80238CC8 26100004 */  addiu     $s0, $s0, 4
/* 7047BC 80238CCC 0C0B1EAF */  jal       get_variable
/* 7047C0 80238CD0 0240202D */   daddu    $a0, $s2, $zero
/* 7047C4 80238CD4 AE420074 */  sw        $v0, 0x74($s2)
/* 7047C8 80238CD8 8E050000 */  lw        $a1, ($s0)
/* 7047CC 80238CDC 26100004 */  addiu     $s0, $s0, 4
/* 7047D0 80238CE0 0C0B1EAF */  jal       get_variable
/* 7047D4 80238CE4 0240202D */   daddu    $a0, $s2, $zero
/* 7047D8 80238CE8 8E050000 */  lw        $a1, ($s0)
/* 7047DC 80238CEC 26100004 */  addiu     $s0, $s0, 4
/* 7047E0 80238CF0 0240202D */  daddu     $a0, $s2, $zero
/* 7047E4 80238CF4 0C0B1EAF */  jal       get_variable
/* 7047E8 80238CF8 0040882D */   daddu    $s1, $v0, $zero
/* 7047EC 80238CFC 0240202D */  daddu     $a0, $s2, $zero
/* 7047F0 80238D00 8E050000 */  lw        $a1, ($s0)
/* 7047F4 80238D04 0C0B1EAF */  jal       get_variable
/* 7047F8 80238D08 0040802D */   daddu    $s0, $v0, $zero
/* 7047FC 80238D0C 0000202D */  daddu     $a0, $zero, $zero
/* 704800 80238D10 24030014 */  addiu     $v1, $zero, 0x14
/* 704804 80238D14 AE430078 */  sw        $v1, 0x78($s2)
/* 704808 80238D18 2403000A */  addiu     $v1, $zero, 0xa
/* 70480C 80238D1C 44911000 */  mtc1      $s1, $f2
/* 704810 80238D20 00000000 */  nop
/* 704814 80238D24 468010A0 */  cvt.s.w   $f2, $f2
/* 704818 80238D28 44051000 */  mfc1      $a1, $f2
/* 70481C 80238D2C 44901000 */  mtc1      $s0, $f2
/* 704820 80238D30 00000000 */  nop
/* 704824 80238D34 468010A0 */  cvt.s.w   $f2, $f2
/* 704828 80238D38 3C013F80 */  lui       $at, 0x3f80
/* 70482C 80238D3C 44810000 */  mtc1      $at, $f0
/* 704830 80238D40 44061000 */  mfc1      $a2, $f2
/* 704834 80238D44 44821000 */  mtc1      $v0, $f2
/* 704838 80238D48 00000000 */  nop
/* 70483C 80238D4C 468010A0 */  cvt.s.w   $f2, $f2
/* 704840 80238D50 AE43007C */  sw        $v1, 0x7c($s2)
/* 704844 80238D54 E7A00010 */  swc1      $f0, 0x10($sp)
/* 704848 80238D58 8E430078 */  lw        $v1, 0x78($s2)
/* 70484C 80238D5C 44071000 */  mfc1      $a3, $f2
/* 704850 80238D60 2463000A */  addiu     $v1, $v1, 0xa
/* 704854 80238D64 0C01C664 */  jal       func_80071990
/* 704858 80238D68 AFA30014 */   sw       $v1, 0x14($sp)
/* 70485C 80238D6C 8C43000C */  lw        $v1, 0xc($v0)
/* 704860 80238D70 3C018024 */  lui       $at, %hi(D_8023C1B4)
/* 704864 80238D74 AC22C1B4 */  sw        $v0, %lo(D_8023C1B4)($at)
/* 704868 80238D78 24020003 */  addiu     $v0, $zero, 3
/* 70486C 80238D7C AC620030 */  sw        $v0, 0x30($v1)
/* 704870 80238D80 8E420074 */  lw        $v0, 0x74($s2)
/* 704874 80238D84 04420001 */  bltzl     $v0, .L80238D8C
/* 704878 80238D88 2442000F */   addiu    $v0, $v0, 0xf
.L80238D8C:
/* 70487C 80238D8C 00021103 */  sra       $v0, $v0, 4
/* 704880 80238D90 00021080 */  sll       $v0, $v0, 2
/* 704884 80238D94 3C038024 */  lui       $v1, %hi(D_8023B948)
/* 704888 80238D98 2463B948 */  addiu     $v1, $v1, %lo(D_8023B948)
/* 70488C 80238D9C 00431021 */  addu      $v0, $v0, $v1
/* 704890 80238DA0 8C430000 */  lw        $v1, ($v0)
/* 704894 80238DA4 24020001 */  addiu     $v0, $zero, 1
/* 704898 80238DA8 AE420070 */  sw        $v0, 0x70($s2)
/* 70489C 80238DAC 0808E390 */  j         .L80238E40
/* 7048A0 80238DB0 AE430074 */   sw       $v1, 0x74($s2)
.L80238DB4:
/* 7048A4 80238DB4 2402000A */  addiu     $v0, $zero, 0xa
/* 7048A8 80238DB8 8E43007C */  lw        $v1, 0x7c($s2)
/* 7048AC 80238DBC 8E440074 */  lw        $a0, 0x74($s2)
/* 7048B0 80238DC0 00431023 */  subu      $v0, $v0, $v1
/* 7048B4 80238DC4 00820018 */  mult      $a0, $v0
/* 7048B8 80238DC8 3C046666 */  lui       $a0, 0x6666
/* 7048BC 80238DCC 34846667 */  ori       $a0, $a0, 0x6667
/* 7048C0 80238DD0 00031040 */  sll       $v0, $v1, 1
/* 7048C4 80238DD4 00004812 */  mflo      $t1
/* 7048C8 80238DD8 00431021 */  addu      $v0, $v0, $v1
/* 7048CC 80238DDC 00491021 */  addu      $v0, $v0, $t1
/* 7048D0 80238DE0 00440018 */  mult      $v0, $a0
/* 7048D4 80238DE4 3C058024 */  lui       $a1, %hi(D_8023C1B4)
/* 7048D8 80238DE8 24A5C1B4 */  addiu     $a1, $a1, %lo(D_8023C1B4)
/* 7048DC 80238DEC 8CA40000 */  lw        $a0, ($a1)
/* 7048E0 80238DF0 000217C3 */  sra       $v0, $v0, 0x1f
/* 7048E4 80238DF4 8C84000C */  lw        $a0, 0xc($a0)
/* 7048E8 80238DF8 00001810 */  mfhi      $v1
/* 7048EC 80238DFC 00031883 */  sra       $v1, $v1, 2
/* 7048F0 80238E00 00621823 */  subu      $v1, $v1, $v0
/* 7048F4 80238E04 AC830030 */  sw        $v1, 0x30($a0)
/* 7048F8 80238E08 8E42007C */  lw        $v0, 0x7c($s2)
/* 7048FC 80238E0C 10400002 */  beqz      $v0, .L80238E18
/* 704900 80238E10 2442FFFF */   addiu    $v0, $v0, -1
/* 704904 80238E14 AE42007C */  sw        $v0, 0x7c($s2)
.L80238E18:
/* 704908 80238E18 8E420078 */  lw        $v0, 0x78($s2)
/* 70490C 80238E1C 14400007 */  bnez      $v0, .L80238E3C
/* 704910 80238E20 2442FFFF */   addiu    $v0, $v0, -1
/* 704914 80238E24 8CA40000 */  lw        $a0, ($a1)
/* 704918 80238E28 8C830000 */  lw        $v1, ($a0)
/* 70491C 80238E2C 24020002 */  addiu     $v0, $zero, 2
/* 704920 80238E30 34630010 */  ori       $v1, $v1, 0x10
/* 704924 80238E34 0808E391 */  j         .L80238E44
/* 704928 80238E38 AC830000 */   sw       $v1, ($a0)
.L80238E3C:
/* 70492C 80238E3C AE420078 */  sw        $v0, 0x78($s2)
.L80238E40:
/* 704930 80238E40 0000102D */  daddu     $v0, $zero, $zero
.L80238E44:
/* 704934 80238E44 8FBF0024 */  lw        $ra, 0x24($sp)
/* 704938 80238E48 8FB20020 */  lw        $s2, 0x20($sp)
/* 70493C 80238E4C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 704940 80238E50 8FB00018 */  lw        $s0, 0x18($sp)
/* 704944 80238E54 03E00008 */  jr        $ra
/* 704948 80238E58 27BD0028 */   addiu    $sp, $sp, 0x28
