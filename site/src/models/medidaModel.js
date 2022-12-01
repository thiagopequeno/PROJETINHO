var database = require("../database/config");

function buscarUltimasMedidas(fkpersonagem) {

         var instrucaoSql = `select nomepersonagem,count(*) as dados from usuario join personagem_cadastrado on idpersonagem=fkpersonagem group by nomepersonagem;`


    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(fkpersonagem) {
        var instrucaoSql =
        `select nomepersonagem,count(*) as dados from usuario join personagem_cadastrado on idpersonagem=fkpersonagem group by nomepersonagem;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}
