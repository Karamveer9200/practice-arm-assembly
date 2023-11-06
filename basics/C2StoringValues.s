.global _start
_start:
     mov r0,#30 // 'immediate' addressing (giving a value to register)
	 mov r1,r0  // 'direct' addressing (moving values between registers) r1 = r0 
	       
	 mov r7,#1
	 swi 0
	 

	
	