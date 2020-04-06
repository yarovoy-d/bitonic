L0:
(W)      mov (8|M0)               r3.0<1>:ud    r0.0<1;1,0>:ud                  
(W)      or (1|M0)                cr0.0<1>:ud   cr0.0<0;1,0>:ud   0x4C0:uw         {Switch}
(W)      cmp (16|M0)   (lt)f0.0   null<1>:d     r10.0<0;1,0>:ud   0x2:uw          
(W)      cmp (16|M16)  (lt)f0.0   null<1>:d     r10.0<0;1,0>:ud   0x2:uw          
(W&f0.0) jmpi                                 L1648                           
L80:
(W)      mul (1|M0)               r4.2<1>:d     r11.0<0;1,0>:d    r3.1<0;1,0>:d   
(W)      shl (1|M0)               r4.0<1>:d     r8.6<0;1,0>:d     2:w             
(W)      mov (1|M0)               r4.2<1>:q     2:w                             
(W)      mov (1|M0)               r4.3<1>:d     2:w                             
         add (8|M0)               r40.0<1>:q    r1.0<8;8,1>:uw    r4.2<0;1,0>:ud  
         add (8|M8)               r42.0<1>:q    r1.8<8;8,1>:uw    r4.2<0;1,0>:ud  
         add (8|M16)              r44.0<1>:q    r2.0<8;8,1>:uw    r4.2<0;1,0>:ud  
         add (8|M24)              r46.0<1>:q    r2.8<8;8,1>:uw    r4.2<0;1,0>:ud  
(W)      add (1|M0)               r4.1<1>:d     r4.0<0;1,0>:d     r9.2<0;1,0>:d   
         add (8|M0)               r48.0<1>:q    r40.0<4;4,1>:q    r7.0<0;1,0>:ud  
         add (8|M8)               r50.0<1>:q    r42.0<4;4,1>:q    r7.0<0;1,0>:ud  
         add (8|M16)              r52.0<1>:q    r44.0<4;4,1>:q    r7.0<0;1,0>:ud  
         add (8|M24)              r54.0<1>:q    r46.0<4;4,1>:q    r7.0<0;1,0>:ud  
         mov (8|M0)               r5.0<1>:d     r48.0<2;1,0>:d                  
         mov (8|M8)               r6.0<1>:d     r50.0<2;1,0>:d                  
         mov (8|M16)              r12.0<1>:d    r52.0<2;1,0>:d                  
         mov (8|M24)              r13.0<1>:d    r54.0<2;1,0>:d                  
         shl (16|M0)              r5.0<1>:d     r5.0<8;8,1>:d     2:w             
         shl (16|M16)             r12.0<1>:d    r12.0<8;8,1>:d    2:w             
         add (16|M0)              r5.0<1>:d     r4.1<0;1,0>:d     r5.0<8;8,1>:d    {Compacted}
         add (16|M16)             r12.0<1>:d    r4.1<0;1,0>:d     r12.0<8;8,1>:d  
L408:
(W)      cmp (16|M0)   (eq)f1.0   null<1>:d     r4.3<0;1,0>:d     0:w             
(W)      cmp (16|M16)  (eq)f1.0   null<1>:d     r4.3<0;1,0>:d     0:w             
(W&f1.0) jmpi                                 L1552                           
L456:
(W)      shr (1|M0)               r4.6<1>:d     r4.3<0;1,0>:ud    1:w             
         and (8|M0)    (eq)f0.0   null<1>:q     r48.0<4;4,1>:q    r4.2<0;1,0>:q   
         and (8|M8)    (eq)f0.0   null<1>:q     r50.0<4;4,1>:q    r4.2<0;1,0>:q   
         and (8|M16)   (eq)f0.0   null<1>:q     r52.0<4;4,1>:q    r4.2<0;1,0>:q   
         and (8|M24)   (eq)f0.0   null<1>:q     r54.0<4;4,1>:q    r4.2<0;1,0>:q   
L536:
         xor (8|M0)               r56.0<1>:q    r48.0<4;4,1>:q    r4.6<0;1,0>:ud  
         xor (8|M8)               r58.0<1>:q    r50.0<4;4,1>:q    r4.6<0;1,0>:ud  
         xor (8|M16)              r60.0<1>:q    r52.0<4;4,1>:q    r4.6<0;1,0>:ud  
         xor (8|M24)              r62.0<1>:q    r54.0<4;4,1>:q    r4.6<0;1,0>:ud  
         cmp (8|M0)    (gt)f1.0   null<1>:uq    r56.0<4;4,1>:uq   r48.0<4;4,1>:uq 
         cmp (8|M8)    (gt)f1.0   null<1>:uq    r58.0<4;4,1>:uq   r50.0<4;4,1>:uq 
         cmp (8|M16)   (gt)f1.0   null<1>:uq    r60.0<4;4,1>:uq   r52.0<4;4,1>:uq 
         cmp (8|M24)   (gt)f1.0   null<1>:uq    r62.0<4;4,1>:uq   r54.0<4;4,1>:uq 
(~f0.0)  if (32|M0)                           L1040             L1384           
L680:
(f1.0)   if (32|M0)                           L1008             L1008           
L696:
         mov (8|M0)               r18.0<1>:d    r56.0<2;1,0>:d                  
         mov (8|M8)               r19.0<1>:d    r58.0<2;1,0>:d                  
         mov (8|M16)              r20.0<1>:d    r60.0<2;1,0>:d                  
         mov (8|M24)              r21.0<1>:d    r62.0<2;1,0>:d                  
         send (16|M0)             r14:w    r5      0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         send (16|M16)            r16:w    r12     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         shl (16|M0)              r18.0<1>:d    r18.0<8;8,1>:d    2:w             
         shl (16|M16)             r20.0<1>:d    r20.0<8;8,1>:d    2:w             
         add (16|M0)              r18.0<1>:d    r4.1<0;1,0>:d     r18.0<8;8,1>:d   {Compacted}
         add (16|M16)             r20.0<1>:d    r4.1<0;1,0>:d     r20.0<8;8,1>:d  
         send (16|M0)             r22:w    r18     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         send (16|M16)            r24:w    r20     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         cmp (16|M0)   (lt)f1.0   null<1>:d     r14.0<8;8,1>:d    r22.0<8;8,1>:d  
         cmp (16|M16)  (lt)f1.0   null<1>:d     r16.0<8;8,1>:d    r24.0<8;8,1>:d  
(f1.0)   if (32|M0)                           L992              L992            
L928:
         sends (16|M0)            null:w   r5      r22     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M16)           null:w   r12     r24     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M0)            null:w   r18     r14     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M16)           null:w   r20     r16     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
L992:
         endif (32|M0)                        L1008                           
L1008:
         endif (32|M0)                        L1024                           
L1024:
         else (32|M0)                         L1384             L1384           
L1040:
(f1.0)   if (32|M0)                           L1368             L1368           
L1056:
         mov (8|M0)               r30.0<1>:d    r56.0<2;1,0>:d                  
         mov (8|M8)               r31.0<1>:d    r58.0<2;1,0>:d                  
         mov (8|M16)              r32.0<1>:d    r60.0<2;1,0>:d                  
         mov (8|M24)              r33.0<1>:d    r62.0<2;1,0>:d                  
         send (16|M0)             r26:w    r5      0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         send (16|M16)            r28:w    r12     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         shl (16|M0)              r30.0<1>:d    r30.0<8;8,1>:d    2:w             
         shl (16|M16)             r32.0<1>:d    r32.0<8;8,1>:d    2:w             
         add (16|M0)              r30.0<1>:d    r4.1<0;1,0>:d     r30.0<8;8,1>:d   {Compacted}
         add (16|M16)             r32.0<1>:d    r4.1<0;1,0>:d     r32.0<8;8,1>:d  
         send (16|M0)             r34:w    r30     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         send (16|M16)            r36:w    r32     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         cmp (16|M0)   (gt)f1.0   null<1>:d     r26.0<8;8,1>:d    r34.0<8;8,1>:d  
         cmp (16|M16)  (gt)f1.0   null<1>:d     r28.0<8;8,1>:d    r36.0<8;8,1>:d  
(f1.0)   if (32|M0)                           L1352             L1352           
L1288:
         sends (16|M0)            null:w   r5      r34     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M16)           null:w   r12     r36     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M0)            null:w   r30     r26     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M16)           null:w   r32     r28     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
L1352:
         endif (32|M0)                        L1368                           
L1368:
         endif (32|M0)                        L1384                           
L1384:
         endif (32|M0)                        L1400                           
L1400:
(W)      send (8|M0)              r38      r3      0xA         0x219E000  //  wr:1h+?, rd:1, Memory Fence msc:32, to bti 0
(W)      mov (8|M0)               null<1>:ud    r38.0<8;8,1>:ud                  {Compacted}
(W)      and (8|M0)               r39.0<1>:ud   r3.2<0;1,0>:ud    0x8F000000:ud   
(W)      mov (1|M0)               n0.0<1>:ud    0x0:ud                           {Switch}
(W)      send (1|M0)              null     r39     0x3         0x2000004  //  wr:1+?, rd:0,  barrier
(W)      wait                                 n0.0<0;1,0>:ud                  
(W)      shr (1|M0)               r4.6<1>:d     r4.6<0;1,0>:ud    1:w             
(W)      cmp (16|M0)   (eq)f1.0   null<1>:d     r4.6<0;1,0>:d     0:w             
(W)      cmp (16|M16)  (eq)f1.0   null<1>:d     r4.6<0;1,0>:d     0:w             
(W&~f1.0) jmpi                                L536                            
L1552:
(W)      shl (1|M0)               r4.3<1>:d     r4.3<0;1,0>:d     1:w             
(W)      cmp (16|M0)   (lt)f0.0   null<1>:d     r10.0<0;1,0>:ud   r4.3<0;1,0>:ud  
(W)      cmp (16|M16)  (lt)f0.0   null<1>:d     r10.0<0;1,0>:ud   r4.3<0;1,0>:ud  
(f0.0)   break (32|M0)                        L1632             L1632           
L1616:
(W)      mov (1|M0)               r4.2<1>:q     r4.3<0;1,0>:ud                  
L1632:
         while (32|M0)                        L408                            
L1648:
(W)      mov (8|M0)               r127.0<1>:ud  r3.0<8;8,1>:ud                   {Compacted}
(W)      mov (1|M0)               null<1>:ud    f0.0<0;1,0>:ud                  
(W)      mov (1|M0)               null<1>:ud    f1.0<0;1,0>:ud                  
(W)      send (8|M0)              null     r127    0x27        0x2000010  {EOT} //  wr:1+?, rd:0,  end of thread
L1704:
