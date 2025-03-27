function calcular() {
    var preco = Number(ipt_preco.value);
    var quantidade = Number(ipt_quantidade.value);
    var dia = Number(ipt_dia.value);
    var total = preco * quantidade * dia * 0.15;

    div_resultado.innerHTML = ("Você evitará prejuízo de:<br> R$" + total.toFixed(2).replace('.' , ','));  
}