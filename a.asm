	      INT   0, 32
	      SUP   0, main
	      RET   0, 0
main:
	      INT   0, 20
	      LDA   1, 12
	     LITI   0, 10
	      STX   0, 1
	      POP   0, 1
	      LDA   1, 16
	     LITI   0, 0
	      STX   0, 1
	      POP   0, 1
L2:
	      LOD   1, 12
	     LITI   0, 0
	     GTRI   0, 0
	      JPC   0, L3
	      LOD   1, 12
	     LITI   0, 5
	     EQLI   0, 0
	     JPTR   0, L4
	      LOD   1, 16
	     LITI   0, 20
	     GEQI   0, 0
L4:
	      JPC   0, L5
	      INT   0, 12
	      LDA   0, 12
	      LOD   1, 12
	      LOD   1, 16
	      POP   0, 6
	     ADDR   0, printf
	      CAL   0, 0
	      JMP   0, L3
L5:
	      LDA   1, 16
	      LOD   1, 16
	      LOD   1, 12
	     ADDI   0, 0
	      STX   0, 1
	      POP   0, 1
	      LOD   1, 12
	      LDA   1, 12
	      LDX   0, 1
	     DECI   0, 0
	      STO   0, 1
	      POP   0, 1
L1:
	      JMP   0, L2
L3:
	      LDA   1, -4
	     LITI   0, 0
	      STO   0, 1
	      RET   0, 0
	      RET   0, 0
.literal    12  "a: %d, sum: %d\n"

