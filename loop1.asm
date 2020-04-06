SOURCE
####################################################
if (comp > tid) {
    if ((tid & i) == 0) {
        if (acc[tid] > acc[comp]) {
            std::swap(acc[tid], acc[comp]);
        }
    }
    else {
        if (acc[tid] < acc[comp]) {
            std::swap(acc[tid], acc[comp]);
        }
    }
}
###################################################





L456:
(W)      shr (1|M0)               r4.6<1>:d     r4.3<0;1,0>:ud    1:w             
         and (8|M0)    (eq)f0.0   null<1>:q     r36.0<4;4,1>:q    r4.2<0;1,0>:q   
         and (8|M8)    (eq)f0.0   null<1>:q     r38.0<4;4,1>:q    r4.2<0;1,0>:q   
         and (8|M16)   (eq)f0.0   null<1>:q     r40.0<4;4,1>:q    r4.2<0;1,0>:q   
         and (8|M24)   (eq)f0.0   null<1>:q     r42.0<4;4,1>:q    r4.2<0;1,0>:q   
L536:
         xor (8|M0)               r44.0<1>:q    r36.0<4;4,1>:q    r4.6<0;1,0>:ud  
         xor (8|M8)               r46.0<1>:q    r38.0<4;4,1>:q    r4.6<0;1,0>:ud  
         xor (8|M16)              r48.0<1>:q    r40.0<4;4,1>:q    r4.6<0;1,0>:ud  
         xor (8|M24)              r50.0<1>:q    r42.0<4;4,1>:q    r4.6<0;1,0>:ud  
         cmp (8|M0)    (gt)f1.0   null<1>:uq    r44.0<4;4,1>:uq   r36.0<4;4,1>:uq 
         cmp (8|M8)    (gt)f1.0   null<1>:uq    r46.0<4;4,1>:uq   r38.0<4;4,1>:uq 
         cmp (8|M16)   (gt)f1.0   null<1>:uq    r48.0<4;4,1>:uq   r40.0<4;4,1>:uq 
         cmp (8|M24)   (gt)f1.0   null<1>:uq    r50.0<4;4,1>:uq   r42.0<4;4,1>:uq 
(f1.0)   if (32|M0)                           L1168             L1168           
L680:
         mov (8|M0)               r18.0<1>:d    r44.0<2;1,0>:d                  
         mov (8|M8)               r19.0<1>:d    r46.0<2;1,0>:d                  
         mov (8|M16)              r20.0<1>:d    r48.0<2;1,0>:d                  
         mov (8|M24)              r21.0<1>:d    r50.0<2;1,0>:d                  
         send (16|M0)             r14:w    r5      0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         send (16|M16)            r16:w    r12     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         shl (16|M0)              r18.0<1>:d    r18.0<8;8,1>:d    2:w             
         shl (16|M16)             r20.0<1>:d    r20.0<8;8,1>:d    2:w             
         add (16|M0)              r18.0<1>:d    r4.1<0;1,0>:d     r18.0<8;8,1>:d   {Compacted}
         add (16|M16)             r20.0<1>:d    r4.1<0;1,0>:d     r20.0<8;8,1>:d  
         send (16|M0)             r22:w    r18     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
         send (16|M16)            r24:w    r20     0xC         0x4205E00  //  wr:2+?, rd:2, Untyped Surface Read msc:30, to bti 0
(~f0.0)  if (32|M0)                           L1024             L1152           
L880:
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
         else (32|M0)                         L1152             L1152           
L1024:
         cmp (16|M0)   (gt)f1.0   null<1>:d     r14.0<8;8,1>:d    r22.0<8;8,1>:d  
         cmp (16|M16)  (gt)f1.0   null<1>:d     r16.0<8;8,1>:d    r24.0<8;8,1>:d  
(f1.0)   if (32|M0)                           L1136             L1136           
L1072:
         sends (16|M0)            null:w   r5      r22     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M16)           null:w   r12     r24     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M0)            null:w   r18     r14     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
         sends (16|M16)           null:w   r20     r16     0x8C        0x4025E00  //  wr:2+2, rd:0, Untyped Surface Write msc:30, to bti 0
L1136:
         endif (32|M0)                        L1152                           
L1152:
         endif (32|M0)                        L1168                           
L1168:
         endif (32|M0)                        L1184                           
L1184:
(W)      send (8|M0)              r26      r3      0xA         0x219E000  //  wr:1h+?, rd:1, Memory Fence msc:32, to bti 0
(W)      mov (8|M0)               null<1>:ud    r26.0<8;8,1>:ud                  {Compacted}
(W)      and (8|M0)               r27.0<1>:ud   r3.2<0;1,0>:ud    0x8F000000:ud   
(W)      mov (1|M0)               n0.0<1>:ud    0x0:ud                           {Switch}
(W)      send (1|M0)              null     r27     0x3         0x2000004  //  wr:1+?, rd:0,  barrier
(W)      wait                                 n0.0<0;1,0>:ud                  

