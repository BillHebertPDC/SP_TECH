var conversao = {
    conversao:()=>{
        console.log("5" + 2); // "52" (String + Number → String)
        console.log("5" - 2); // 3 (String - Number → Number)
        console.log(true + 1); // 2 (Boolean → Number)
        console.log(false + "1"); // "false1" (Boolean → String)
        console.log(10 == "10"); // true (coerção automática)
        console.log(10 === "10"); // false (sem coerção)
    }
}
export default conversao;