#language: pt

Funcionalidade: Criar turma
    Sendo eu um professor cadastrado no site
    Desejo criar uma turma
    Para que eu possa adicionar os alunos

    @criar_turma
    Cenário: Criar turmas com alunos
        Dado que acesso a página principal
            E submeto o login com meu cadastro: "professor@temp.vc" e "pwd123**"
        Quando inicio o processo de adicionar uma nova turma
            E coloco o nome da turma sendo: "Somos-Plurall"
            E cadastro meus alunos com o sequintes dados
            | nomes | alunoplurall01,alunoplurall02,alunoplurall03,alunoplurall04,naoalunoplurall |
        Então ao finalizar devo ver a lista dos meus alunos


