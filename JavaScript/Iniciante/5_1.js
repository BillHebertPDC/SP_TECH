var funcoes={
    funcoes:()=>{
        function saudacao() {               // funcao void
            console.log("Olá, mundo!");
        }
        saudacao(); // "Olá, mundo!"
        function soma(a, b) {               // funcao retorno
            return a + b;
        }
        
        console.log(soma(3, 5)); // 8
        const subtrair = function (a, b) {  // funcao anonima
            return a - b;
        };
        
        console.log(subtrair(10, 3)); // 7
        
        const dobrar = x => x * 2;          // funcao arrow
        console.log(dobrar(5)); // 10
        const dividir = (a, b) => {
            return a / b;
        };
    }
}
export default funcoes;