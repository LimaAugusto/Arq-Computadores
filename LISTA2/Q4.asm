#Faça um programa que leia dois números e escreva a relação de grandeza entre eles.
#Ex. 345 e 23 gera a saída 345>23. Ex.: 24 e 38 gera a saída 24<38. Ex.: 12 e 12 gera a saída 12=12
.text
main :
addi $2, $0, 5
syscall
add $8, $0, $2 # INT 1

addi $2, $0, 5
syscall
add $9, $0, $2 # INT 2

slt $10, $8, $9 # (INT 1 < INT 2)? 1 = SIM, 0 = NÃO


teste1 : beq $10, $0, teste2
#-------------CORPO DO LAÇO-------------


add $4, $0, $8
addi $2, $0, 1
syscall         # Printa INT 1 OU 2

addi $4, $0, '<'
addi $2, $0, 11
syscall         # Printa sinal de menor

add $4, $0, $9
addi $2, $0, 1
syscall         # Printa INT 1 0U 2

addi $2, $0, 10
syscall

#-------------CORPO DO LAÇO-------------

teste2 : beq $8, $9, fim

#-------------CORPO DO LAÇO-------------

add $4, $0, $8
addi $2, $0, 1
syscall # Printa INT 1 OU 2

addi $4, $0, '>'
addi $2, $0, 11
syscall # Printa sinal de maior

add $4, $0, $9
addi $2, $0, 1
syscall # Printa INT 1 OU 2

addi $2, $0, 10
syscall

#-------------CORPO DO LAÇO-------------

fim :
add $4, $0, $8
addi $2, $0, 1
syscall # Printa INT 1 OU 2

addi $4, $0, '='
addi $2, $0, 11
syscall # Printa sinal de igual

add $4, $0, $9
addi $2, $0, 1
syscall # Printa 1 OU 2

addi $2, $0, 10
syscall
