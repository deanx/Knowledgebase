#language:pt

Funcionalidade: testar inserções/alterações/exclusoes dos conhecimentos

@javascript
Cenário: Apagar conhecimento da home
Dado que tenha conhecimentos cadastrados
E que eu esteja na home
Quando eu clico "del_conhecimento_1"
Então eu não devo ver "Apagar" dentro de "#conhecimentos"




