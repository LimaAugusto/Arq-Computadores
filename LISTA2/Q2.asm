#Faça um programa para ler um número inteiro. Se o número for positivo, imprima o dobro do número, 
#se for negativo, imprima o quadrado do número.
.text
main :

addi $2, $0, 5
syscall
add $8, $0, $2 # INT
srl $9, $8, 31 # Retorna o sinal do inteiro

testen : beq $9, $0, p # Se o sinal do meu inteiro == 0, segue equação pra negativo, senão vai pra p

#-------------CORPO DO LAÇO-------------

mul $8, $8, $8 # Eleva ao quadrado
add $4, $0, $8
addi $2, $0, 1
syscall

addi $2, $0, 10
syscall

#---------FIM DO CORPO DO LAÇO---------

p : 
mul $8, $8, 2 # Multiplica por 2
add $4, $0, $8
add $2, $0, 1
syscall