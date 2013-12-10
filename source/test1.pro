@00
//address statement
    111_00000     // 00    BEGIN:     JMP TST_JMP
	0011_1100     
	000_00000     // 02               HLT   //JMP did not work at all
	0000_0000
	000_00000     // 04               HLT   //JMP did not load PC,it skipped
	0000_0000     
	101_11000     // 06    JMP_OK:    LDA DATA_1
	0000_0000     
	001_00000     // 08               SKZ
	0000_0000
	000_00000     // 0a               HLT   //SKZ or LDA did not work
	0000_0000     
	101_11000     // 0c               LDA DATA_2
	0000_0001     
	001_00000     // 0e               SKZ
	0000_0000    
	111_00000     // 10               JMP SKZ_OK
	0001_0100
	000_00000     // 12               HLT   //SKZ or LDA did not work
	0000_0000     
	110_11000     // 14     SKZ_OK:   STO TEMP   //store non-zero value in TEMP
	0000_0010
	101_11000     // 16               LDA DATA_1
	0000_0000
	110_11000     // 18               STO TEMP   //store zero value in TEMP
	0000_0010
	101_11000     // 1a               LDA TEMP
	0000_0010   
	001_00000     // 1c               SKZ   //check to see if STO worked
	0000_0000
	000_00000     // 1e               HLT   //STO did not work
	0000_0000   
	100_11000     // 20               XOR DATA_2
	0000_0001
	001_00000     // 22               SKZ   //check to see if XOR worked
	0000_0000
	111_00000     // 24               JMP XOR_OK
	0010_1000     
	000_00000     // 26               HLT   //XOR did not work at all
	0000_0000  
	100_11000     // 28      XOR_OK:  XOR DATA_2
	0000_0001     
	001_00000     // 2a               SKZ
	0000_0000
	000_00000     // 2c               HLT   //XOR did not switch all bits
	0000_0000
	000_00000     // 2e      END:     HTL   //CONGRATULATIONS-TEST1 PASSED!
	0000_0000
	111_00000     // 30               JMP BEGIN  //run test again
	0000_0000
	
@3c
    111_00000     // 3c      TST_JMP: JMP JMP_OK
	0000_0110
	000_00000     // 3e               HLT   //JMP is broken
//----------------------------test1.pro����-------------------------------



//----------------------------test1.dat��ʼ-------------------------------
@00               //address statement at RAM
    00000000      //1800     DATA_1:        //constant00(hex)
	11111111      //1801     DATA_2:        //constantFF(hex)
	10101010      //1802     TEMP:          //variable - starts with AA(hex)
//----------------------------test1.dat����-------------------------------
	