#Faça um programa que leia um número inteiro, representando a duração em segundos de um experimento científico e imprima o tempo decorrido nesse experimento no
#formato h:m:s. Exemplo: 3755 gera uma saída 1:2:35

.text

main :
addi $2, $0, 5
syscall
add $8, $0, $2 # lê inteiro em segundos

div $9, $8, 60
mfhi $8 # o primeiro resto = segundos
mflo $9

div $10, $9, 60 # quociente = horas
mfhi $9 # o segundo resto = minutos

# construção do formato h:m:s

#horas
add $4, $0, $10
addi $2, $0, 1 
syscall

add $4, $0, ':'
addi $2, $0, 11
syscall

#minutos
add $4, $0, $9
addi $2, $0, 1
syscall

add $4, $0, ':'
addi $2, $0, 11
syscall

#segundos
add $4, $0, $8
addi $2, $0, 1
syscall