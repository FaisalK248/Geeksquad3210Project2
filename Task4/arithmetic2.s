@ secondprogram:register = val2+9+val3-val1
.section .data
val1: .word 6
val2: .word 11
val3: .word 16
register: .word 0
.section .text
.globl  _start
_start:
ldr r1, =val1 //Load the memory address of val1 into r1
ldr r1, [r1]  //Load the value val1 into r1
ldr r2, =val2 //Load the memory address of val2 into r2
ldr r2, [r2]  //Load the value val2 into r2
ldr r3, =val3 //Load the memory address of val3 into r3
ldr r3, [r3]  //Load the value val3 into r3
mov r4, #9
add r2, r4,r2  //Add 9 to r2 and store into r2
add r2, r3,r2 //Add r3 to r2 amd store into r2
sub r2, r2,r1 //Subtract r1 from r2 and store into r2
ldr r1, =register //
str r2, [r1]

mov r7, #1
svc #0
.end
