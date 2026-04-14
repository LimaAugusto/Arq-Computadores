#Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em uma linha diferente.

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
mflo $9

div $9, $8
mfhi $13 #me retorna o quarto algarismo
mflo $9

add $4, $0, $10
addi $2, $0, 1 #quarto algarismo
syscall

add $4, $0, '\n'
addi $2, $0, 11 #pula linha
syscall

add $4, $0, $11
addi $2, $0, 1 #terceiro algarismo
syscall

add $4, $0, '\n'
addi $2, $0, 11 #pula linha
syscall

add $4, $0, $12
addi $2, $0, 1 #segundo algarismo
syscall

add $4, $0, '\n'
addi $2, $0, 11 #pula lnha
syscall

add $4, $0, $13
addi $2, $0, 1 #primeiro algarismo
syscall