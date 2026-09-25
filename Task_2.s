.section .bss
.globl ram
.lcomm ram, 256
.section .text
.globl destination

destination:

    #load effective address
    #loads the memory address of ram, base address
    #0x50 is the offset
    #%esi hold the ram memory [kinda like a pointer] ex if ram = 256, it would be moving the 256+0x50
    lea ram+0x50, %esi #this is where the starting ram is

    #movl
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
