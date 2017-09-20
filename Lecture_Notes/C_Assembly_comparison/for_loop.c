#include <stdio.h>

int main() {
	
	
	// --------------
	// NOTES:
	// --------------
	// 1) line <+52>
	//    jmp  unconditional jump. 
	//    We have to take this jump if this instructions is executed. 
	
	// 2) line <+54>
	//    mov -0x8(%rbp), %rax
	//    Copy the content at address %rbp-0x8 into %rax register. 
	//    Thus copy the value of i into %rax. 
	//    -0x8 ==> long int i (loop index). 
	//    %rax is thus storing i temporarily. 
	
	// 3) line <+58>
	//    -0x30(%rbp,%rax,8),%rax
	//    Copy the content at address %rbp+(8 * %rax)-0x30, 
	//    into the %rax register. 
	//    At this stage, we copy a[i] into %rax. 
	
	
	// 4) line <+63>
	//    lea 0x1(%rax), %rdx
	//    Add 1 to %rax and store it in %rdx. 
	//    This is where load effective address (lea) instruction helps.
	//    We perform and addition and an assignment in one instruction!
	//    Thus, we stored a[i] + 1 into %rdx. 
	
	
	// 5) line <+67>
	//    mov -0x8(%rbp), %rax
	//    Reset %rax to the loop index i. 
	
	// 6) line <+71>
	//    mov    %rdx,-0x60(%rbp,%rax,8)
	//    Move the result a[i] + 1 into some address in memory.
	//    We can thus infer that %rbp-0x60 is the start of array b, i.e., b[0]. 
	
	// 7) line <+76>
	//    addq  $0x1,-0x8(%rbp)
	//    increment i, i.e., i++ inside the loop.
	
	// 8) line <+81> and line <86>
	//    cmpq $0x4, -0x8(%rbp)
	//    jle  $0x40050c
	//    jle ==> jump if less than or equal. 
	//    These instructions together test if i<=4, i.e., i<5
	
	// 9) Note that taking the jump takes us back to step 2) outlined here. 
	
	
	
	
	long int a[5] = {10, 20, 30, 40, 50}; 
	// 	movq   $0xa,-0x30(%rbp)   -0x30(%rbp) ==> a[0]
	//  movq   $0x14,-0x28(%rbp)  -0x28(%rbp) ==> a[1]    
	//  movq   $0x1e,-0x20(%rbp)  -0x20(%rbp) ==> a[1]
	//  movq   $0x28,-0x18(%rbp)  -0x18(%rbp) ==> a[1]
	//  movq   $0x32,-0x10(%rbp)  -0x10(%rbp) ==> a[1]
	
	long int b[5]; 
	
	// movq $0x0,-0x8(%rbp)
	
	// What can be -0x8(%rbp)? 
	// Could it be loop variable i? 
	
	
	for (long int i=0; i<5; i++) {
		b[i] = a[i] + 1; 
	}
	
	// --------
	// output:
	// --------
	// a = {10, 30, 60, 100, 150}
	
	
	// mov    $0x0,%eax
	// Since %eax or %rax stores the return value. 
	return 0;
}
