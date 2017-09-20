#include <stdio.h>

int main() {
	// -----------------------
	// NOTES: 
	// -----------------------
	// 0) push %rbp
	//    mov  %rsp,%rbp 
	//    STACK FRAME SETUP: THESE CAN BE SAFELY IGNORED FOR THE BOMB LAB.
	
	// 1) variables local to a given function (in this case, the main function) 
	//    are stored as negative offsets from %rbp. 
	//    -0x8(%rbp) ==> d
	//    -0xc(%rbp) ==> a 
	
	// 2) cmpq $0x0,-0x8(%rbp)
	//    instruction subtracts source, i.e., $0x0 from the target, i.e. -0x8(%rbp) (variable d).
	
	// 3) Any addition, subtraction, etc. sets the flags
	//    ZF (zero flag), SF (sign flag), CF (carry flag)    
	//    In our example, we are interested in the ZF. 
	
	// 4) jne 0x4004f2 (jump if not equal) 
	//    If subtraction of step 2) gives the result as zero, then ZF is set to 1, else it is set to 0. 
	//    jne tests the ZF and we take the jump to the label (0x4004f2) if ZF is set to 0. 
	
	// 5) movl $0x0,-0xc(%rbp)
	//    sets variable a to 0 if we do not take the jump of step 4). 
	//    this should not happen when the code is executed since we know that d equals 10 and not 0. 
	
	// 6) pop %rbp
	//    retq
	//    STACK FRAME TEAR DOWN: THESE CAN ALSO BE SAFELY IGNORED FOR THE BOMB LAB.
	
	
	// movq  $0xa,-0x8(%rbp)
	long int d = 10;
	
	int a;
	
	// local variables are stored 
	
	
	
	if (d == 0) {
		// movl $0x0,-0xc(%rbp)
		a = 0;
	}
	
	
	else {
		
		// 	mov -0x8(%rbp),%rax
		//  The above moves d to some temporary storage %rax
		
		//  add %eax,%eax
		//  Effectively doubles lower value stored in lower 32 bits of %rax, i.e., %eax. 
		
		//  mov %eax,-0xc(%rbp)
		//  We now store the doubled value to the variable a, i.e., -0xc(%rbp)
		 
		a = d*2; 
	}
	
	// Finally, we have 
	// mov -0xc(%rbp), %eax. 
	// 
	// Since %eax or %rax is the default register to store return value from any function, 
	// we store the variable a, back to %eax. 
	
	return a; 
}
