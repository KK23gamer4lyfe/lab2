.section .bss
.globl ram
.lcomm ram, 256
.section .text
.globl increment

increment:

    lea ram+0x50, %esi

    movl $0, %ebx
    movl $0, %eax
    loop_born:
        cmpl $10, %eax

        jge loop_death

 
        incl %eax

        addl %eax, %ebx
        

        jmp loop_born



    #$0xFF = eax = source
    #ram+0c5? = increment
    loop_death:
        movl %ebx, (%esi)
        movl $0xFF, %ebx
        ret

.section .note.GNU-stack,"",@progbits
