var consoles = {
    log:(mensagem)=>{
        console.log(mensagem)
    },
    error:(mensagem)=>{
        console.error(mensagem);
    },
    warn:(mensagem)=>{
        console.warn(mensagem);
    },
    info:(mensagem)=>{
        console.info(mensagem);
    },
    table:(table)=>{
        console.table(table);
    },
    group:async(grupo,funcao)=>{
        console.group(grupo);
        await funcao()
        console.groupEnd();
    },
    time:async(nome,funcao)=>{
        console.time(nome);
        await funcao
        console.timeEnd(nome);
    },
    clear:()=>{
        console.clear();
    }
};
export default consoles;