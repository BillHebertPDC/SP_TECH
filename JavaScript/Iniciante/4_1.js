var condicionais ={
    condicionais:()=>{
        let idade_ = 20;
        if (idade_ < 18) {
            console.log("Menor de idade");
        } else if (idade_ >= 18 && idade_ < 65) {
            console.log("Adulto");
        } else {
            console.log("Idoso");
        }
        
        let dia = 3;
        
        switch (dia) {
            case 1:
                console.log("Domingo");
                break;
            case 2:
                console.log("Segunda-feira");
                break;
            case 3:
                console.log("Terça-feira");
                break;
            default:
                console.log("Dia inválido");
        }
        const logado = true;
        logado && console.log("Usuário autenticado.");
        const nome = null;
        const resultado = nome ?? "Nome padrão";
        console.log(resultado); // "Nome padrão"
        const idade = 20;
        const status = idade >= 18 ? "Maior de idade" : "Menor de idade";
        console.log(status); // "Maior de idade"
    }
}
export default condicionais;