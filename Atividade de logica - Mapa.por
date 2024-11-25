programa
{
    funcao inicio()
    {
        // Variáveis
        inteiro qturmas
        inteiro qalunos
        inteiro cont_t
        inteiro cont_a
        inteiro cont_empate
        real nota
        real nota_turma
        real media_turma
        real melhor_media
        cadeia aluno
        cadeia turma
        cadeia melhor_turma
        cadeia turmas_empate

        // Início
        escreva("Bem-vindo ao sistema de conferência de média das turmas participantes do projeto Superação!\n")
        escreva("Digite a quantidade de turmas participantes: \n")
        leia(qturmas)
        melhor_media=0
        melhor_media=0
        melhor_turma=""
        turmas_empate=""
        cont_empate=0
        

        para (cont_t=1; cont_t<=qturmas; cont_t++){
        	escreva("Para facilitar a identificação, digite o nome da turma ", cont_t, ": \n")
          leia(turma)
          escreva("Digite a quantidade de alunos da turma ", turma, ": \n")
          leia(qalunos)

          nota_turma = 0
          
          para (cont_a=1; cont_a<=qalunos; cont_a++){
          	escreva("Digite o nome do aluno ", cont_a, " da turma ", turma,": \n")
               leia(aluno)
               escreva("Digite a nota de ", aluno, ": \n")
               leia(nota)

               nota_turma = nota_turma + nota
          }
          media_turma = (nota_turma / qalunos)
          escreva("A média desta turma é: ", media_turma, "\n")

          se (media_turma > melhor_media)
            {
                melhor_media = media_turma
                melhor_turma = turma
                cont_empate=0
                
            }
          senao se(media_turma == melhor_media)
          {
          	turmas_empate= melhor_turma + "e" + turma + turmas_empate
          	cont_empate++
          }
          senao 
          {
          	escreva("A nota desta turma não é maior ou igual as anteriores. \n")
          }
    }
    se (cont_empate==0)
    {
    escreva ("A turma com a melhor média é: ", melhor_turma, " , com média ", melhor_media, "\n")
    } 
    senao{
    	escreva("Houve empate entre turmas!\n")
    	escreva(turmas_empate)
    	
    }
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 571; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */