#language: pt

Funcionalidade: Remover Usuário de uma Turma
    Sendo eu um professor cadastrado no site
    Desejo selecionar uma turma específica
    Para que eu possa remover um usuário

    @remover_usuario
    Cenário: Remover usuário
        Dado que acesso a página principal
            E submeto o login com meu cadastro: "professor@temp.vc" e "pwd123**"
        Quando seleciono uma turma "Somos-Plurall"
            E inicio o processo de remoção do usuário "naoalunoplurall"
        Então ao finalizar não devo ver o usuário presente na lista de alunos atuais

