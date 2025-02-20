--Uso de Tabelas Temporárias
--# usada apenas na conexão em que é criada
--## usada em outras conexão, porém se for desconectado ela desaparece
-- @ tabela usada como uma variável que é excluida após o procedimento

--Cria um script para inserir valores em uma tabela em loop | Comparando os dois tipos de tabelas temporárias


CREATE TABLE #TABELA_DE_NUMEROS (NUMERO INT, [STATUS] VARCHAR(20)); 

DECLARE @NUMERO_INICIAL_SEQUENCIA INT,
        @NUMERO_FINAL_SEQUENCIA INT,
        @NOTA_FISCAL_TESTE INT;
DECLARE @TABELA_DE_NUMEROS TABLE (NUMERO INT, [STATUS] VARCHAR(20));

SET @NUMERO_INICIAL_SEQUENCIA = 1;
SET @NUMERO_FINAL_SEQUENCIA = 200;

WHILE @NUMERO_INICIAL_SEQUENCIA <= @NUMERO_FINAL_SEQUENCIA
BEGIN
    SELECT @NOTA_FISCAL_TESTE = COUNT(*) FROM NOTAS_FISCAIS WHERE NUMERO = @NUMERO_INICIAL_SEQUENCIA;
    IF @NOTA_FISCAL_TESTE = 1
    BEGIN
        INSERT INTO #TABELA_DE_NUMEROS (
            NUMERO, [STATUS]
            ) VALUES (
                @NUMERO_INICIAL_SEQUENCIA, 'É uma nota fiscal');
         INSERT INTO @TABELA_DE_NUMEROS (
            NUMERO, [STATUS]
            ) VALUES (
                @NUMERO_INICIAL_SEQUENCIA, 'É uma nota fiscal');
    END;
    ELSE
    BEGIN
        INSERT INTO #TABELA_DE_NUMEROS(
            NUMERO, [STATUS]
            ) VALUES (
                @NUMERO_INICIAL_SEQUENCIA, 'Não é uma nota fiscal');
         INSERT INTO @TABELA_DE_NUMEROS(
            NUMERO, [STATUS]
            ) VALUES (
                @NUMERO_INICIAL_SEQUENCIA, 'Não é uma nota fiscal');
    END;
    SET @NUMERO_INICIAL_SEQUENCIA = @NUMERO_INICIAL_SEQUENCIA + 1;
END;


SELECT * FROM @TABELA_DE_NUMEROS;
SELECT * FROM #TABELA_DE_NUMEROS;




