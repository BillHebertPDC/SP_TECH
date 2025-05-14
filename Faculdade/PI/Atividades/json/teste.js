let exemplos = [
    {
        "email": "email1",
        "senha": "123",
        "nome": ""
    },
    {
        "email": "email2",
        "senha": "123",
        "nome": ""
    },
    {
        "email": "email3",
        "senha": "123",
        "nome": ""
    },
    {
        "email": "email4",
        "senha": "123",
        "nome": ""
    },
    {
        "email": "email5",
        "senha": "123",
        "nome": ""
    }
]
function oi() {
    console.log("oi")
}
var dizerOla = setInterval(oi,1000)
clearInterval(dizerOla)
clearTimeout(dizerOla)
console.log(exemplos[0].email)
function conta (){
    let valor1=0;
    let valor2=1;
    function consolelog(b,a){
        console.log(`parametro 1:${b} parametro 2:${a}`,b+a)
    }
    consolelog(valor2,valor1)
}
conta()
