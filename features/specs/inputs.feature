#language: pt

Funcionalidade: Inputs

    @radio
    Cenario: Radio Button
        Dado que acesso a tela Botões de Radio
        Quando eu escolho a opção "Ruby"
        Então "Ruby" deve ser marcada

    @checkbox
    Cenario: Checkbox
        Dado que acesso a tela Checkbox
        Quando eu marco a opção "Ruby"
        Então "Ruby" deve estar marcada

    @allCheckbox
    Cenario: Todas as techs que usam o Appium
        Dado que acesso a tela Checkbox
        Quando eu marco as seguintes techs:
            | tech            |
            | Ruby            |
            | Java            |
            | Python          |
            | Javascript      |
            | C#              |
            | Robot Framework |
        Então todas essas opções devem estar marcadas