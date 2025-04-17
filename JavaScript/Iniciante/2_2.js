var tipos_primitivos ={
    tipos:()=>{
        let str1 = "Olá, mundo!";       //string
        let inteiro = 42;               //inteiro
        let decimal = 3.14;             //float
        let notacaoCientifica = 1.5e5;  //bigint
        let nao_numero = NaN            //não é numero
        let ativo = true;               // boleano
        let vazio = null;               // nulo
        let indefinido;                 //indefinido
        const sym1 = Symbol("id");      //simbolo
        const usuario = {               // objeto
            nome: "Ana",                //
            [sym1]: 123                 // Propriedade privada usando Symbol
        };                              //
        
        console.log(Number.MAX_SAFE_INTEGER); // 9007199254740991
        console.log(Number.MIN_SAFE_INTEGER); // -9007199254740991
        console.log(Number.isInteger(42)); // true
        console.log(Number.isNaN("abc" / 2)); // true (NaN)
        console.log(Boolean(0));        // false
        console.log(Boolean(""));       // false (string vazia)
        console.log(Boolean(null));     // false
        console.log(Boolean(undefined));// false
        console.log(Boolean(NaN));      // false
        console.log(Boolean(1));        // true
        console.log(Boolean("Hello"));  // true
        console.log(Boolean([]));       // true (arrays vazios são truthy)
        console.log(Boolean({}));       // true (objetos vazios são truthy)
        console.log(vazio); // null
        console.log(typeof null); // "object" (bug histórico do JS)
        console.log(indefinido); // undefined
        const sym2 = Symbol("id");
        console.log(sym1 === sym2); // false (símbolos sempre são únicos)
        console.log(usuario); // { nome: "Ana", [Symbol(id)]: 123 }
        let numGrande = 9007199254740992n; // Notação com "n"
        let outroBigInt = BigInt(9007199254740993);
        console.log(numGrande + 2n); // 9007199254740994n
        try {
            console.log(10n + 5); // TypeError (mistura de tipos)
        } catch (e) {}
    }
};
export default tipos_primitivos;