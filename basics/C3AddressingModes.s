.global _start
_start:
     // addressing methods:
	 
     // to access data from stacks to load in the registers
	 // direct addrssing, initialised the location of the list
	 ldr r0,=list // placed address of the fist value in list variable into r0
	 
	 // register indirect addressing method
	 // moving the value of r0 to r1
	 ldr r1,[r0]  // [] tells the assembler, we are looking to find value 
	              // accociated with the address in r0
	 // lets move an index from 1 to 4
	 ldr r2,[r0,#4]
	 
	 // pre-incremet (!) addressing method
	 // like [r0+4], [r0] then move r0 to r2
	 ldr r2,[r0,#4]! // value of r0 will be changed in this case
	 
	 // post-increment addressing method
	 // like r[0] move r0 to r3, [r0+4] then change the address to next value
	 ldr r3,[r0],#4 // value of r3 will be same as r2 .: address will be changed 
	                // after the value of r0 is stored in r3
     
	 
.data
// declared a list variable
list:
   .word 1,4,-4,5,7,2,4,5 // stored words in the stack
   
// its like 
// list = [1,4,-4,5,7,2,4,5]
// list[r0]
// to move an index, list[r0 + 1]
// in arm we move by 4, list[r0 + 4] to move one index, [r0 + 8], to move 2 indexes, and so on.



	
	