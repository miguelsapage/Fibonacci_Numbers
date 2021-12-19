.data 
    numbers: .zero 40     # allocate 40 bytes
    
.text
 # develop your code here
 li x10 1            #x
 li x11 1            #y
 li x12 0            #z
 li x14 1            #loop counter
 li x15 10           #number total of loops
 
 sw x11 0(gp)        #saves first number in memory
 blt x14 x15 loop
 
loop:
    addi gp gp 4        #increments pointer in 4 bits
    sw x11 0(gp)        #saves y in memory
    mv x12 x11          #z=y
    add x11 x11 x10     #y=y+x
    mv x10 x12          #x=z
    addi x14 x14 1      #increments loop counter
    bgt x15 x14 loop    #check number of cycles
    
end:                    # exit your program with this sequence
    li a7 10            # sets register a7 (x17) to 10
    ecall               # system call: exit the program with code 0