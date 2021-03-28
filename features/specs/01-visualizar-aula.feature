#language: pt

Funcionalidade: Visualizar Aula
    Sendo eu um aluno que possou o codigo da turma
    Desejo entrar no cursos
    Para que eu possa visualizar uma aula de uma determinada disciplina

    @visualizar_aula
    Cenário: Visualizar aula
        Dado que acesso a página principal
            E submeto o login com meu cadastro: "aluno@temp.vc" e "pwd123**"
        Quando entro em um curso de determinada disciplina: "Programação"
            E visualizo uma aula
        Então devo ver a pagina da aula

