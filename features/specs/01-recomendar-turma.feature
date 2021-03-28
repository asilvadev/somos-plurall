#language: pt

Funcionalidade: Recomendar Conteúdo
    Sendo eu um professor cadastrado no site
    Desejo selecionar uma turma
    Para que eu possa recomendar conteúdos

    @recomendar_conteudo
    Cenário: Recomendar 15 conteúdos
        Dado que acesso a página principal
            E submeto o login com meu cadastro: "professor@temp.vc" e "pwd123**"
        Quando seleciono uma turma existente
            E recomendo 15 conteúdos
        Então ao finalizar devo ver o painel de Administrar recomendações com 15 recomendações