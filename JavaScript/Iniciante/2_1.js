var variaveis = {
    var:()=>{
        try {
            //exemplo var
            console.log(varialvel_a_var_exemplo); // undefined (hoisting)
            var varialvel_a_var_exemplo = 10;
            if (true) {
                var varialvel_b_var_exemplo = 20;
            }
            console.log(varialvel_b_var_exemplo); // 20 (não tem escopo de bloco)
            
            function test() {
                var varialvel_c_var_exemplo = 30;
            }
            console.log(varialvel_c_var_exemplo); // ReferenceError (c só existe dentro da função)            
        } catch (e) {console.log(e)}
    },
    let:()=>{
        try {
            console.log(x); // ReferenceError (não inicializada)
            let x = 10;
        } catch (e) {console.log(e)}
        try {
            if (true) {
                let y = 20;
            }
            console.log(y); // ReferenceError (y só existe dentro do bloco)            
        } catch (e) {console.log(e)}
        try {
            //let z = 30;
            let z = 40; // SyntaxError (não pode ser redeclarada)
        } catch (e) {console.log(e)}
    },
    const:()=>{
        try {
            const PI = 3.14;
            PI = 3.1415; // TypeError (não pode ser reatribuída)
        } catch (e) {console.log(e)}
        try {
            const obj = { nome: "João" };
            obj.nome = "Maria"; // Permitido (mutação do objeto)
            obj = { idade: 25 }; // TypeError (não pode ser reatribuído)            
        } catch (e) {console.log(e)}
    }
}
export default variaveis;
