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
/
/
/
/
====================================================================
]]

-- Habilitar UTF-8 no terminal
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
local function obterBarraPregresso(atributo)
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
print("=============================================================================================================")
print("| NOME: "..nomePokemon,"","","TREINADOR: ".. nomeTreinador,"","","","","XP: "..xp,"","    |")
print("| ESPÉCIE: "..especie,"","Nº: "..numero,"","TIPO: "..tipo,"","DANO: "..dano,"    |")
print("|-----------------------------------------------------------------------------------------------------------|")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠉⢳⠴⢲⠂","","","     ATRIBUTOS PRIMÁRIOS","            |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⠤⠤⠤⠤⠤⠤⠤⠤⠤⠖⠊⠀⣠⠎⠀⡞⢹⠏","FORÇA:           "..obterBarraPregresso(forca).."   |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠊⠁⠀⠀⠀⠀⠀⢀⡠⠤⠄⠀⠀⠀⠁⠀⠀⢀⠀⢸","HABILIDADE:      "..obterBarraPregresso(habilidade).."   |")
print("| ⠀⠀⠀⠀⠀⠀⣠⠤⠤⠄⣀⠀⠀⠀⠀⢀⣌⠀⠀⠀⠀⠀⢀⣠⣆⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠘⡄","RESISTÊNCIA:     ".. obterBarraPregresso(resistencia).."   |")
print("| ⠀⠀⠀⠀⡴⠁⠀⠀⠐⠛⠉⠁⠀⠀⣉⠉⠉⠉⠑⠒⠉⠁⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⠀⠱⡀","ARMADURA:        "..obterBarraPregresso(armadura).."   |")
print("| ⠀⠀⠀⢰⣥⠆⠀⠀⠀⣠⣴⣶⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡆⠀⠑⡄","PODER DE FOGO:   "..obterBarraPregresso(podeFogo).."   |")
print("| ⠀⠀⢀⡜⠁⠀⠀⢀⠀⠻⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠀⠸⡀","                                                            |")
print("| ⠀⢀⣮⢖⣧⢠⠀⣿⠇⠀⠀⠁⠀⠀⠀⠀⠀⢀⣠⣴⣤⡀⠀⠀⠀⠈⡗⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢱","","","     ATRIBUTOS SECUNDÁRIOS","            |")
print("| ⠀⣼⠃⣼⣿⠘⠀⠀⠀⢠⣶⣿⡆⠀⠀⠁⣠⠊⣸⣿⣿⣿⡄⠀⠀⠀⡇⠀⢑⣄⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠸⡆","PONTOS DE VIDA:   "..obterBarraPregresso(pontoVida).."  |")
print("| ⠀⣿⢰⣿⣿⠀⠀⠀⠀⠀⠙⠻⠿⠁⠀⠀⠀⠠⠁⠀⣿⣿⣿⣿⡇⠀⠀⠀⠇⠀⢻⣿⣷⣦⣀⡀⣀⠠⠋⠀⠀⠀⢀⡇","PONTOS DE MAGIA:  "..obterBarraPregresso(pontoMagia).."  |")
print("| ⠈⠉⠺⠿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⢿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⢦⡀⠀⠀⠀⠀⡸","FORÇA DE DEFESA:  "..obterBarraPregresso(forcaDefesa).."  |")
print("| ⠘⣟⠦⢀⠀⠀⢠⠀⠀⡠⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠁⣀⠔⠀⠀⠀⠀⠀⠀⠀⠀⠛⠻⠟⠋⠀⠙⢦⠀⣠⠜","FORÇA DE ATAQUE:  "..obterBarraPregresso(forcaAtaque).."  |")
print("| ⠀⠈⠑⠤⡙⠳⣶⣦⣤⣤⣤⣤⣤⣤⣤⣤⣴⣶⡶⠞⠁⠀⠀⣠⠖⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠈⢯⠁","ATAQUE DISTÂNCIA: "..obterBarraPregresso(ataqueDistancia).."  |")
print("| ⠀⠀⠀⠀⠈⢳⠤⣙⡻⠿⣿⣿⣿⣿⣿⡿⠿⠛⠉⠀⢀⣀⡤⡚⠁⠀⠀⠀⠀⠀⠀⠀⣧⠖⣁⣤⣦⠀⠀⠈⢇","                                                            |")
print("| ⠀⠀⠀⠀⠀⢸⠀⢀⣩⣍⠓⠒⣒⠒⠒⠒⠒⠒⠊⠉⠁⢀⡟⠀⠀⣾⣷⠀⠀⠀⠀⠏⢴⣿⣿⣿⠀⠀⠀⢸","DESVANTAGENS:","                                            |")
print("| ⠀⠀⠀⠀⠀⠀⠘⣶⣿⣿⣿⠀⠀⠈⠒⢄⣀⡀⠀⠀⠀⣼⣶⣿⡇⠈⠋⠀⠀⠀⡼⠀⠈⠻⣿⡿⠀⠀⠀⢸",desvantagem.."    |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠹⡿⠿⠋⠀⠀⠀⠀⠀⡜⠁⠈⢯⡀⢺⣿⣿⣿⠃⠀⠀⢀⢀⣼⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞","                                                            |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⣿⣦⣄⣠⣀⣠⠞⠀⠀⠀⠈⠛⣿⡛⠛⠁⠀⠀⠀⣠⠊⠀⠈⢦⣄⣀⣀⣀⣀⣀⢀⡼⠁","TÉCNICAS(VANTAGENS):","                                    |")
print("| ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠉⠀⠀⠀⠀⠀⠀⠘⠛⠿⣿⠷⡾⠗⠊⠁⠀⠀⠀⠈⠉⠙⠛⠛⠛⠉",vantagem.."  |")
print("|","","","","","","","","","","","","","    |")
print("| CARACTERÍSTICAS:","","","","","","","","","","","    |")
print("| "..caracteristica.."    |")
print("=============================================================================================================")