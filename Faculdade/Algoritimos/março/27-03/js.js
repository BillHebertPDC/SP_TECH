
var textos = {
    resultado: "",
    inicial: (marinheiro, carne) => { return `-----------------------------------------------------------------------<br>Quantidade de marinheiros: ${marinheiro}<br>Quantidade de carnes: ${carne}<br>` },
    batalha: (numero, carne, energia) => { return `-----------------------------------------------------------------------<br>${numero}º Batalha:<br> Quantidade carne ${carne} Quantidade energia ${energia}<br>` },
    perdeu: () => { return "Perdeu a batalha <br>" },
    perdeu_batalha: () => { return "Perdeu a luta <br>Perdeu a batalha<br>" },
    comeu: () => { return "Comeu uma carne<br>" },
    luta: (numero, energia, carnes) => { return `Iniciou a Luta com o ${numero}º marinheiro com energia:${energia} carnes:${carnes} <br>` },
    terminou: (numero, energia, carne) => { return `terminou a Luta com o ${numero}º marinheiro com energia:${energia} carnes:${carne}<br> <br>` }
}
var personagem = {
    atributos: {
        energia: 100,
        carnes: 0,
        perdeu: 0,
        ganhou: 0
    },
    funcoes: {
        reset: () => {
            let recuperar = (personagem.atributos.energia <= 0 && personagem.atributos.carnes > 0) ? true : false
            if (recuperar) {
                personagem.atributos.carnes--
                personagem.atributos.energia = 100
                textos.resultado += textos.comeu
            }
        }
    }
}
var cenario = {
    atributos: {
        marinheiros: 0,
        batalhas: 0
    },
    funcoes: {
        reset_cenario: () => {
            resposta.innerHTML = ``
            textos.resultado = ""
            personagem.atributos.carnes = Number(var3.value)
            cenario.atributos.marinheiros = Number(var1.value)
            personagem.atributos.energia = 100
        }
    }
}
var resultado = ""



function batalha() {
    cenario.funcoes.reset_cenario()
    textos.resultado += textos.inicial(cenario.atributos.marinheiros, personagem.atributos.carnes)
    for (let i = 0; i < var2.value; i++) {
        if (personagem.atributos.perdeu >= 0) {
            textos.resultado += textos.batalha(i + 1, personagem.atributos.carnes, personagem.atributos.energia)
            if (personagem.atributos.energia <= 10) {
                personagem.funcoes.reset()
                if (energia <= 0) {
                    textos.resultado += textos.perdeu()
                    break
                }
            }
            personagem.atributos.energia = i > 0 ? personagem.atributos.energia - 10 : personagem.atributos.energia
            luta()
        }
    }
    textos.resultado += `ganhou ${personagem.atributos.ganhou} perdeu ${personagem.atributos.perdeu}<br>`
    resposta.innerHTML = textos.resultado
}


function luta() {
    for (let e = 0; e < var1.value; e++) {
        textos.resultado += textos.luta(e + 1, personagem.atributos.energia, personagem.atributos.carnes)
        if (personagem.atributos.energia <= 5) {
            personagem.funcoes.reset()
            if (personagem.atributos.energia < 5) {
                textos.resultado += textos.perdeu_batalha()
                personagem.atributos.perdeu++
                return
            }
        }

        personagem.atributos.energia += -5
        if (personagem.atributos.energia <= 0) {
            personagem.funcoes.reset()
        }
        personagem.atributos.ganhou++
        textos.resultado += textos.terminou(e + 1, personagem.atributos.energia, personagem.atributos.carnes)
    }
}

