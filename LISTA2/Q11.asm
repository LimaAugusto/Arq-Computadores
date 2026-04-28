.text

main:
    # 1. LER OS TRÊS NÚMEROS (a, b, c)
    li $v0, 5           # Ler 'a'
    syscall
    move $t0, $v0       

    li $v0, 5           # Ler 'b'
    syscall
    move $t1, $v0       

    li $v0, 5           # Ler 'c'
    syscall
    move $t2, $v0       


    # 2. VERIFICAR PICO POSITIVO (a < b E c < b)
    slt $t3, $t0, $t1   
    slt $t4, $t2, $t1   
    and $t5, $t3, $t4   
    bnez $t5, pico_pos  


    # 3. VERIFICAR PICO NEGATIVO (b < a E b < c)
    slt $t3, $t1, $t0   
    slt $t4, $t1, $t2   
    and $t5, $t3, $t4   
    bnez $t5, pico_neg  


    # 4. CASO NÃO SEJA PICO (Imprime 'N')
    li $a0, 78          # 78 é o código ASCII para 'N'
    li $v0, 11          # Syscall 11: Imprimir caractere
    syscall
    j fim               


# --- RÓTULOS DE IMPRESSÃO DE CARACTERES ---

pico_pos:
    # Imprimir 'P'
    li $a0, 80          # 80 é o código ASCII para 'P'
    li $v0, 11          
    syscall
    
    # Imprimir '+'
    li $a0, 43          # 43 é o código ASCII para '+'
    li $v0, 11          
    syscall
    
    j fim               

pico_neg:
    # Imprimir 'P'
    li $a0, 80          # 80 é o código ASCII para 'P'
    li $v0, 11          
    syscall
    
    # Imprimir '-'
    li $a0, 45          # 45 é o código ASCII para '-'
    li $v0, 11          
    syscall

fim:
    li $v0, 10          # Syscall 10: Encerrar o programa
    syscall