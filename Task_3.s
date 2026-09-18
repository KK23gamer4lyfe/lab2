.section .bss
.globl ram
.lcomm ram, 256
.section .text
.globl clear

clear:
    lea ram+0x50, %esi #this is where the starting ram is

    movb $0x00, ram+0x50

    lea ram+0x50, %esi #this is where the starting ram is

    movl $0, %eax # this is where the counter is 

    loop_begin:
        cmpl $9, %eax

        jge loop_finish

        movb $0x00, (%esi)

        
        incl %esi

        incl %eax
        jmp loop_begin


    #$0xFF = eax = source
    #ram+0c5? = clear

    loop_finish:
        ret

.section .note.GNU-stack,"",@progbits
