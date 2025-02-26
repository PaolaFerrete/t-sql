--Utilizando While
DECLARE @LIMITE_MINIMO INT,
        @LIMITE_MAXIMO INT;

SET @LIMITE_MINIMO = 3;
SET @LIMITE_MAXIMO = 10;

WHILE @LIMITE_MAXIMO >= @LIMITE_MINIMO
BEGIN
    PRINT @LIMITE_MINIMO;
    SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1;
END;

--Contando o número de notas emitidas
DECLARE @DATA_INICIAL DATE,
        @DATA_FINAL DATE,
        @NUM_NOTAS INT;

SET @DATA_INICIAL = '2017-01-01';
SET @DATA_FINAL = '2017-01-10';

WHILE @DATA_INICIAL <= @DATA_FINAL
BEGIN
    PRINT @DATA_INICIAL
    SELECT @NUM_NOTAS = COUNT(*) FROM  NOTAS_FISCAIS WHERE DATA_VENDA = @DATA_INICIAL;
    PRINT(@NUM_NOTAS);
    SET @DATA_INICIAL = DATEADD(DAY, 1, @DATA_INICIAL);
END;

-- Utilizando o break
DECLARE @LIMITE_MINIMO INT;
DECLARE @LIMITE_MAXIMO INT;
DECLARE @NUM_LINHAS_MAX INT;
DECLARE @NUM_LINHAS_ESCRITAS INT;

SET @LIMITE_MINIMO = 3;
SET @LIMITE_MAXIMO = 30;
SET @NUM_LINHAS_MAX = 10;
SET @NUM_LINHAS_ESCRITAS = 0;

PRINT 'ENTREI NO LOOPING';
WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
    PRINT @LIMITE_MINIMO;
        SET @NUM_LINHAS_ESCRITAS = @NUM_LINHAS_ESCRITAS +1;
        IF @NUM_LINHAS_ESCRITAS = @NUM_LINHAS_MAX
        BEGIN
            PRINT 'SAI DO LOOPING POR CAUSA DO BREAK';
            BREAK;
        END;
    SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1;
END;
PRINT 'SAI DO LOOPING';