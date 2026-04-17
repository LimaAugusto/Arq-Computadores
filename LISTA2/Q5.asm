#Faça um programa que receba três notas (entre 0 e 100) e calcule a média ponderada dessas notas com pesos 1, 2 e 3. Informe a média e se o aluno foi aprovado,
#escreva após a média a letra A. Caso o aluno seja reprovado, informe, após a média, a letra R. A média para aprovação é 60.
.text
main :
addi $11, $0, 6 # SOMA DOS PESOS
addi $2, $0, 5
syscall
add $8, $0, $2 # INT 1 OU NOTA 1

addi $2, $0, 5
syscall
add $9, $0, $2 # INT 2
mul $9, $9, 2  # NOTA 2

addi $2, $0, 5
syscall
add $10, $0, $2 # INT 3
mul $10, $10, 3 # NOTA 3

add $8, $8, $9
add $8, $8, $10 # SOMA TOTAL

div $8, $8, $11 # MÉDIA

addi $9, $0, 6 # APROVAÇÃO

slt $10, $8, $9 # APROVA OU NÃO?

teste1 : beq $10, $0, fim # SE FOR APROVADO, PULA PRO FIM
#-------------CORPO DO LAÇO1-------------

add $4, $0, $8
addi $2, $0, 1
syscall

addi $4, $0, ' '
addi $2, $0, 11
syscall

addi $4, $0, 'R'
addi $2, $0, 11