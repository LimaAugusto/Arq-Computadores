#Faça um programa que leia um número inteiro entre 0 e 999 e imprima esse número com 3 algarismos. Ex.: 23 gera uma saída 023. 8 gera uma saída 008.

.text

main :
addi $8, $0, 10 #separa o 10

addi $2, $0, 5
syscall
add $9, $0, $2

div $9, $8 #me retorna primeiro algarismo
mfhi $10
mflo $9

div $9, $8 #me retorna segundo algarismo
mfhi $11
mflo $9

div $9, $8 #me retorna terceiro algarismo
mfhi $12

add $4, $0, $12
addi $2, $0, 1
syscall

add $4, $0, $11
addi $2, $0, 1
syscall

add $4, $0, $10
addi $2, $0, 1
syscall