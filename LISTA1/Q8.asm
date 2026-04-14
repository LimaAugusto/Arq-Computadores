#Faça um programa que leia três números inteiros, representando a duração em horas, minutos e segundos de um experimento científico 
#e informe essa duração em segundos.

main :
addi $2, $0, 5
syscall
add $8, $0, $2 # lê horas

addi $2, $0, 5
syscall
add $9, $0, $2 # lê minutos

addi $2, $0, 5
syscall
add $10, $0, $2 # lê segundos

mul $8, $8, 3600 # transforma horas em segundos
mul $9, $9, 60 # transforma minutos em sgundos

add $8, $8, $9
add $8, $8, $10 # soma tudo com os segundos restantes

add $4, $0, $8
addi $2, $0, 1
syscall