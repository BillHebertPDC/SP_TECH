var f_tipo = {
    f_string: () => {
        let texto1 = "Olá, mundo!";
        console.log(texto1.length); // Saída: 12
        let texto2 = "Olá, mundo!";
        console.log(texto2.toUpperCase()); // Saída: OLÁ, MUNDO!
        let texto3 = "Olá, mundo!";
        console.log(texto3.toLowerCase()); // Saída: olá, mundo!
        let texto4 = "   Olá, mundo!   ";
        console.log(texto4.trim()); // Saída: Olá, mundo!
        let texto5 = "Olá, mundo!";
        console.log(texto5.replace("mundo", "JavaScript")); // Saída: Olá, JavaScript!
        let texto6 = "Olá, mundo! Mundo!";
        console.log(texto6.replace(/mundo/g, "JavaScript")); // Saída: Olá, JavaScript! JavaScript!
        let texto7 = "Olá, mundo!";
        console.log(texto7.split(" ")); // Saída: ["Olá,", "mundo!"]
        let texto8 = "Olá, mundo!";
        console.log(texto8.substring(0, 3)); // Saída: Olá
        let texto9 = "Olá, mundo!";
        console.log(texto9.indexOf("mundo")); // Saída: 5
    },
    f_numero: () => {
        let numero1 = 3.14159;
        console.log(numero1.toFixed(2)); // Saída: "3.14"
        let numero2 = 123.456;
        console.log(numero2.toPrecision(4)); // Saída: "123.5"
        console.log(Math.random()); // Saída: Um número entre 0 e 1
        console.log(Math.floor(3.9)); // Saída: 3
        console.log(Math.ceil(3.1)); // Saída: 4
        console.log(Math.round(3.4)); // Saída: 3
        console.log(Math.round(3.5)); // Saída: 4
        console.log(Math.max(10, 5, 20)); // Saída: 20
        console.log(Math.min(10, 5, 20)); // Saída: 5
    }

}
export default f_tipo;