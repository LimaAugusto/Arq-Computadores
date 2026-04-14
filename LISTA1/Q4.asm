#Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral. Esse programa deverá apresentar a média desse aluno, após as duas provas.

.text

main :
addi $2, $0, 5
syscall
add $8, $0, $2
addi $2, $0, 5
syscall
add $8, $8, $2
div $8, $8, 2
add $4, $0, $8
addi $2, $0, 1
syscall