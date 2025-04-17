var estrutura = {
    estrutura:()=>{
        for (let i = 0; i < 5; i++) {
            console.log("Iteração:", i);
        }
        
        let contador = 0;
        
        while (contador < 3) {
            console.log("Contador:", contador);
            contador++;
        }
        
        let num = 5;
        
        do {
            console.log("Número:", num);
            num--;
        } while (num > 0);
        const pessoa = { nome: "Ana", idade: 25, cidade: "São Paulo" };
        for (let chave in pessoa) {
            console.log(`${chave}: ${pessoa[chave]}`);
        }
        const numeros = [1, 2, 3, 4, 5];
        for (let numero of numeros) {
            console.log(numero);
        }
        const frutas = ["maçã", "banana", "uva"];
        frutas.forEach((fruta, indice) => {
            console.log(`${indice + 1}: ${fruta}`);
        });
    },
    break_continue:()=>{
        for (let i = 1; i <= 10; i++) {
            if (i === 5) {
                console.log("Parando no 5");
                break;
            }
            console.log(i);
        }
        for (let i = 1; i <= 5; i++) {
            if (i === 3) continue;
            console.log(i);
        }
                
    }
}
export default estrutura;