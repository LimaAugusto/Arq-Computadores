#Faça um programa que leia um número inteiro entre 0 e 999 e imprima a soma dos algarismos desse número. Ex.: 358 gera uma saída de 16, pois 3+5+8 = 16

.text

main :
addi $8, $0, 10
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
mflo $9

add $8, $10, $11
add $8, $8, $12 #soma os algarismos
add $4, $0, $8
addi $2, $0, 1
syscall