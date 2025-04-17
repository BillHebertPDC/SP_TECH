var operadores = {
    operadores: () => {
        const operadores = [
            { precedencia: 20, operador: '()', descricao: 'Agrupamento', associatividade: 'n/a' },
            { precedencia: 19, operador: '. [] ?.', descricao: 'Acesso a propriedade / Optional chaining', associatividade: 'Esquerda' },
            { precedencia: 18, operador: 'new (com args)', descricao: 'Instanciação de objeto', associatividade: 'n/a' },
            { precedencia: 17, operador: '()', descricao: 'Chamada de função', associatividade: 'Esquerda' },
            { precedencia: 16, operador: '++ -- (pós-fixado)', descricao: 'Incremento/Decremento', associatividade: 'n/a' },
            { precedencia: 15, operador: '! ~ + - typeof void delete await', descricao: 'Operadores unários', associatividade: 'Direita' },
            { precedencia: 14, operador: '**', descricao: 'Exponenciação', associatividade: 'Direita' },
            { precedencia: 13, operador: '* / %', descricao: 'Multiplicação, Divisão, Módulo', associatividade: 'Esquerda' },
            { precedencia: 12, operador: '+ -', descricao: 'Adição e Subtração', associatividade: 'Esquerda' },
            { precedencia: 11, operador: '<< >> >>>', descricao: 'Deslocamento de bits', associatividade: 'Esquerda' },
            { precedencia: 10, operador: '< <= > >= in instanceof', descricao: 'Comparação', associatividade: 'Esquerda' },
            { precedencia: 9, operador: '== != === !==', descricao: 'Igualdade', associatividade: 'Esquerda' },
            { precedencia: 8, operador: '&', descricao: 'AND bit a bit', associatividade: 'Esquerda' },
            { precedencia: 7, operador: '^', descricao: 'XOR bit a bit', associatividade: 'Esquerda' },
            { precedencia: 6, operador: '|', descricao: 'OR bit a bit', associatividade: 'Esquerda' },
            { precedencia: 5, operador: '&&', descricao: 'AND lógico', associatividade: 'Esquerda' },
            { precedencia: 4, operador: '||', descricao: 'OR lógico', associatividade: 'Esquerda' },
            { precedencia: 3, operador: '??', descricao: 'Nullish coalescing', associatividade: 'Esquerda' },
            { precedencia: 2, operador: '? :', descricao: 'Operador ternário', associatividade: 'Direita' },
            { precedencia: 1, operador: '= += -= *= /= %= **= <<= >>= >>>= &= ^= |= ??= ||= &&=', descricao: 'Atribuição', associatividade: 'Direita' },
            { precedencia: 0, operador: ',', descricao: 'Separador de expressões', associatividade: 'Esquerda' }
        ];
        console.table(operadores);
        let a = null;
        a ??= 10;
        console.log(a); // 10 (atribui porque `a` é `null`)

        let b = 0;
        b ||= 20;
        console.log(b); // 20 (atribui porque `0` é `falsy`)

        let c = true;
        c &&= 'ativo';
        console.log(c); // "ativo" (atribui porque `true` é `truthy`)
        console.log(false && "Olá"); // false (não executa "Olá")
        console.log(true || "Mundo"); // true (não executa "Mundo")
        let idade = 20;
        let status = (idade >= 18) ? "Maior de idade" : "Menor de idade";
        console.log(status); // "Maior de idade"
    }
}

export default operadores

