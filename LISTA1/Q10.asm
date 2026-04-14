#Faça um programa que leia um caractere minúsculo e imprima o seu equivalente maiúsculo.

.text

main :
addi $2, $0, 12
syscall

subi $4, $2, 32
addi $2, $0, 11
syscall