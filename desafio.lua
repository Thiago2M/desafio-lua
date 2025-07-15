--[[
===================================================================
/NOME:                  TREINADOR:                   XP:
/ESPECIE:               Nº:       TIPO:            DANO:
/
/                      PRIMARIAS              SECUNDARIAS
/                      * Força                * Pontos de Vida
/     Foto             * HAbilidade           * Pontos de Magia
/                      * Resistencia          * Força de Defesa
/                      * Armadura             * Força de Ataque
/                      * Poder de Fogo        * Ataque Distancia
/
/ CARACTERISTICAS       DESVANTAGENS           TECNICAS (VANTAGENS)
====================================================================
]]

-- Para habilitar caracteres UTF-8 no terminal do Windows
os.execute("chcp 65001")

-- Pokemon
local nomePokemon = "SUE"
local nomeTreinador = "THIAGO"
local especie = "BUBASAUR"
local numero = "#0001"
local tipo = "PLANTA/VENENOSO"
local dano = "PLANTA"
local xp = 85

-- Atributos primários
local forca = 4
local habilidade = 3
local resistencia = 5
local armadura = 3
local podeFogo = 0

-- Atributos secundário
local pontoVida = 15
local pontoMagia = 15
local forcaDefesa = 5
local forcaAtaque = 4
local ataqueDistancia = 2

-- Características
local caracteristica = "Uma semente foi plantada em seu lombo. Ao absorver a energia solar, a semente cresce progressivamente."

-- Desvantagem
local desvantagem = "Inculto, Modelo Especial, Vulnerabilidade(Fogo, Voador)."

-- Vantagens
local vantagem = "Armadura Extra(Água), Chicote de Vinha(Membros Elásticos)."

-- Função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function obterBarraProgresso(atributo)
    local barraCheia = "⚪"
    local barraVazia = "⚫"

    local result = ""
    for i = 1, 20, 1 do
        if i <= atributo then
            result = result .. barraCheia
        else
            result = result .. barraVazia
        end
    end
    return result
end

-- função que imprime linha de separação
local function printSeparador(caractere, comprimento)
    caractere = caractere or "="                  -- caractere padrão é "="
    comprimento = comprimento or 100              -- comprimento padrão é 100
    return string.rep(caractere, comprimento)
end

print(printSeparador("=", 109))
print("| NOME: "..nomePokemon,"","","TREINADOR: ".. nomeTreinador,"","","","","XP: "..xp,"","    |")
print("| ESPÉCIE: "..especie,"","Nº: "..numero,"","TIPO: "..tipo,"","DANO: "..dano,"    |")
print("|"..printSeparador("-", 107).."|")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠉⢳⠴⢲⠂","","","     ATRIBUTOS PRIMÁRIOS","            |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⠤⠤⠤⠤⠤⠤⠤⠤⠤⠖⠊⠀⣠⠎⠀⡞⢹⠏","FORÇA:           "..obterBarraProgresso(forca).."   |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠊⠁⠀⠀⠀⠀⠀⢀⡠⠤⠄⠀⠀⠀⠁⠀⠀⢀⠀⢸","HABILIDADE:      "..obterBarraProgresso(habilidade).."   |")
print("| ⠀⠀⠀⠀⠀⠀⣠⠤⠤⠄⣀⠀⠀⠀⠀⢀⣌⠀⠀⠀⠀⠀⢀⣠⣆⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠘⡄","RESISTÊNCIA:     ".. obterBarraProgresso(resistencia).."   |")
print("| ⠀⠀⠀⠀⡴⠁⠀⠀⠐⠛⠉⠁⠀⠀⣉⠉⠉⠉⠑⠒⠉⠁⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⠀⠱⡀","ARMADURA:        "..obterBarraProgresso(armadura).."   |")
print("| ⠀⠀⠀⢰⣥⠆⠀⠀⠀⣠⣴⣶⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡆⠀⠑⡄","PODER DE FOGO:   "..obterBarraProgresso(podeFogo).."   |")
print("| ⠀⠀⢀⡜⠁⠀⠀⢀⠀⠻⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠀⠸⡀","                                                            |")
print("| ⠀⢀⣮⢖⣧⢠⠀⣿⠇⠀⠀⠁⠀⠀⠀⠀⠀⢀⣠⣴⣤⡀⠀⠀⠀⠈⡗⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢱","","","     ATRIBUTOS SECUNDÁRIOS","            |")
print("| ⠀⣼⠃⣼⣿⠘⠀⠀⠀⢠⣶⣿⡆⠀⠀⠁⣠⠊⣸⣿⣿⣿⡄⠀⠀⠀⡇⠀⢑⣄⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠸⡆","PONTOS DE VIDA:   "..obterBarraProgresso(pontoVida).."  |")
print("| ⠀⣿⢰⣿⣿⠀⠀⠀⠀⠀⠙⠻⠿⠁⠀⠀⠀⠠⠁⠀⣿⣿⣿⣿⡇⠀⠀⠀⠇⠀⢻⣿⣷⣦⣀⡀⣀⠠⠋⠀⠀⠀⢀⡇","PONTOS DE MAGIA:  "..obterBarraProgresso(pontoMagia).."  |")
print("| ⠈⠉⠺⠿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⢿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⢦⡀⠀⠀⠀⠀⡸","FORÇA DE DEFESA:  "..obterBarraProgresso(forcaDefesa).."  |")
print("| ⠘⣟⠦⢀⠀⠀⢠⠀⠀⡠⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠁⣀⠔⠀⠀⠀⠀⠀⠀⠀⠀⠛⠻⠟⠋⠀⠙⢦⠀⣠⠜","FORÇA DE ATAQUE:  "..obterBarraProgresso(forcaAtaque).."  |")
print("| ⠀⠈⠑⠤⡙⠳⣶⣦⣤⣤⣤⣤⣤⣤⣤⣤⣴⣶⡶⠞⠁⠀⠀⣠⠖⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠈⢯⠁","ATAQUE DISTÂNCIA: "..obterBarraProgresso(ataqueDistancia).."  |")
print("| ⠀⠀⠀⠀⠈⢳⠤⣙⡻⠿⣿⣿⣿⣿⣿⡿⠿⠛⠉⠀⢀⣀⡤⡚⠁⠀⠀⠀⠀⠀⠀⠀⣧⠖⣁⣤⣦⠀⠀⠈⢇","                                                            |")
print("| ⠀⠀⠀⠀⠀⢸⠀⢀⣩⣍⠓⠒⣒⠒⠒⠒⠒⠒⠊⠉⠁⢀⡟⠀⠀⣾⣷⠀⠀⠀⠀⠏⢴⣿⣿⣿⠀⠀⠀⢸","DESVANTAGENS:","                                            |")
print("| ⠀⠀⠀⠀⠀⠀⠘⣶⣿⣿⣿⠀⠀⠈⠒⢄⣀⡀⠀⠀⠀⣼⣶⣿⡇⠈⠋⠀⠀⠀⡼⠀⠈⠻⣿⡿⠀⠀⠀⢸",desvantagem.."    |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠹⡿⠿⠋⠀⠀⠀⠀⠀⡜⠁⠈⢯⡀⢺⣿⣿⣿⠃⠀⠀⢀⢀⣼⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞","                                                            |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⣿⣦⣄⣠⣀⣠⠞⠀⠀⠀⠈⠛⣿⡛⠛⠁⠀⠀⠀⣠⠊⠀⠈⢦⣄⣀⣀⣀⣀⣀⢀⡼⠁","TÉCNICAS(VANTAGENS):","                                    |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠉⠀⠀⠀⠀⠀⠀⠘⠛⠿⣿⠷⡾⠗⠊⠁⠀⠀⠀⠈⠉⠙⠛⠛⠛⠉",vantagem.."  |")
print("|","","","","","","","","","","","","","    |")
print("| CARACTERÍSTICAS:","","","","","","","","","","","    |")
print("| "..caracteristica.."    |")
print(printSeparador("=", 109))