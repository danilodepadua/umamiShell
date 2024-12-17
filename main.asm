.text
main:

    addi $v0, $0, 4 # printando a string > que fica sempre no início do Shell
    la $a0, label
    syscall
    
    addi $v0, $0, 5 # recebendo um valor inteiro, é temporário, enquanto não é implementado em strings
    syscall

    beq $v0, $0, exit # sai do loop se 0 for pressionado
    j main # continua o loop
    
exit:
    addi $v0, $0, 10 # saída do loop
    syscall



.data
label: .asciiz
">"
zero: .asciiz # para uso futuro (quando o loop receber strings)
"0"
