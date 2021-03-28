#language: pt

Funcionalidade: Excluir resquícios
    Sendo eu o QA
    Desejo limpar os resquícios
    Para que eu possa rodas os testes usando sempre as mesmas contas

    @excluir_resquicios_professor
    Cenário: Excluir resquícios da automação Professor
        Dado que acesso a página principal
            E submeto o login com meu cadastro: "professor@temp.vc" e "pwd123**"
        Quando inicio o processo de limpa de resquício
        Então ao finalizar não devo ter nenhuma turma criada

    @excluir_resquicios_aluno
    Cenário: Excluir resquícios da automação Aluno
        Dado que acesso a página principal
            E submeto o login com meu cadastro: "aluno@temp.vc" e "pwd123**"
        Quando inicio o processo de limpa de resquício
        Então ao finalizar não devo ter nenhuma disciplina de "Programação"


