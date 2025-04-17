var arrays = {
    arrays: () => {
        let numeros1 = [1, 2, 3, 4, 5];
        let misto = [1, "dois", true, { chave: "valor" }];
        let arr = new Array(1, 2, 3, 4, 5);

        let numeros3 = [1, 2, 3];
        numeros3.push(4); // numeros agora é [1, 2, 3, 4]
        let numeros4 = [1, 2, 3];
        let ultimo = numeros4.pop(); // ultimo é 3, numeros agora é [1, 2]
        let numeros5 = [1, 2, 3];
        let primeiro = numeros5.shift(); // primeiro é 1, numeros agora é [2, 3]
        let numeros6 = [2, 3];
        numeros6.unshift(1); // numeros agora é [1, 2, 3]
        let numeros7 = [1, 2, 3];
        console.log(numeros7.length); // Saída: 3
        let numeros8 = [1, 2, 3, 2];
        console.log(numeros8.indexOf(2)); // Saída: 1
        console.log(numeros8.indexOf(4)); // Saída: -1
        let numeros9 = [1, 2, 3, 4, 5];
        let parte = numeros9.slice(1, 4); // parte é [2, 3, 4]
        let numeros10 = [1, 2, 3, 4, 5];
        let removidos = numeros10.splice(2, 2, 6, 7); // numeros é [1, 2, 6, 7, 5], removidos é [3, 4]
        let numeros11 = [1, 2, 3];
        let numeros12 = [4, 5, 6];
        let todosNumeros = numeros11.concat
    }
}
export default arrays