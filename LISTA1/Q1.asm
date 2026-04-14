#Faça um programa para ler um número inteiro e imprimir o dobro desse número.

.text

main : 
addi $2, $0, 5
syscall
mul $8, $2, 2
add $4, $0, $8
addi $2, $0, 1
syscall