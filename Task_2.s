.section .bss
.globl ram
.lcomm ram, 256
.section .text
.globl destination

destination:

    lea ram+0x50, %esi #this is where the starting ram is


    movl $0, %eax # this is where the counter is 

    loop_start:
        cmpl $9, %eax
        
        jge loop_end
        
        movb $0xFF, (%esi)

        incl %esi

        incl %eax
        jmp loop_start

    #increment the register

    #$0xFF = eax = source
    #ram+0c5? = destination

    loop_end:
        ret

.section .note.GNU-stack,"",@progbits
