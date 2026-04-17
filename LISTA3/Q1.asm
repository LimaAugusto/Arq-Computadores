#Faça um programa que calcule e mostre os 10 primeiros números múltiplos de 3, considerando valores maiores que 0

.text

main :
addi $8, $0, 3 # O Número 3
addi $9, $0, 1 # i = 1
addi $15, $0, 11

teste : beq $9, $15, fim # Se i == 11 vai pro fim, se não segue o laço

#-------------CORPO DO LAÇO-------------
mul $10, $8, $9
add $4, $0, $10
addi $2, $0, 1
syscall

addi $4, $0, ' '
add $2, $0, 11
syscall

addi $9, $9, 1
j teste
#---------FIM DO CORPO DO LAÇO---------

fim : addi $2, $0, 10
syscall

#---------------OU---------------------

#Faça um programa que calcule e mostre os 10 primeiros números múltiplos de 3, considerando valores maiores que 0

.text

main :
addi $8, $0, 3 # O Número 3
addi $9, $0, 10 # i = 10

teste : beq $9, $0, fim # Se i == 0 vai pro fim, se não segue o laço

#-------------CORPO DO LAÇO-------------
mul $10, $8, $9
add $4, $0, $10
addi $2, $0, 1
syscall

addi $4, $0, ' '
add $2, $0, 11
syscall

subi $9, $9, 1
j teste
#---------FIM DO CORPO DO LAÇO---------

fim : addi $2, $0, 10
syscall
