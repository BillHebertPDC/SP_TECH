function impar(numero) {
    return numero % 2 == 0 ? "par" : "impar"
}
function soma(...numeros) {
    /*
    let valor = 0
    for (let numero of numeros) {
        valor += numero
        }
        return valor
        */
    let valor = 0
    for (let item of numeros) {
        for (let numero = 0; numero < item; numero++) {
            if (numero % 2 == 0) { valor += numero }
        }
    }
    return valor
}
function contar_vetor(numero, vetor) {
    return vetor.reduce((acc, elemento) => elemento === numero ? acc + 1 : acc, 0);
}
let teste_impar = impar(2)
let teste_soma = soma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
let teste_contar_vetor = contar_vetor(10, [10, 20, 30, 10])
console.log(teste_impar, teste_soma, teste_contar_vetor)