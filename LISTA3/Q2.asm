#Faça um programa que solicite ao usuário um número para ser a referência e outro
#para ser a quantidade de valores a ser impresso no caso do programa da Q1. Para a
#mesma resposta, por exemplo, o usuário forneceria a referência 3 e a quantidade 10.

.text
main :
addi $15, $0, 1 # número chave pro laço acontecer

addi $2, $0, 5
syscall
add $8, $0, $2 # referência

addi $2, $0, 5 
syscall
addi $9, $2, 1 # qtd

teste : beq $15, $9, fim # quando chave == qtd+1, vai pro fim e para o laço. Enquanto não, continua o laço.

mul $10, $8, $15

add $4, $0, $10
addi $2, $0, 1
syscall

addi $4, $0, ' '
addi $2, $0, 11
syscall

addi $15, $15, 1 #retorna qtd + 1
j teste

fim :
addi $2, $0, 10
syscall
