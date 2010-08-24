# language: pt
Funcionalidade: testar página principal para ver se todas as listagens e links aparecem corretamente

@selenium
Cenário: Teste da primeira lista
Dado que tenha conhecimentos cadastrados
E que eu esteja na home
Então a tabela "conhecimentos" deve ter ao menos 2 linhas

@selenium
Cenário: Teste da segunda lista da home
Dado que tenha autores cadastrados
E que eu esteja na home
Então a tabela "lista_autores" deve ter ao menos 2 linhas
