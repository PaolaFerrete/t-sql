-- Declaração de variáveis
DECLARE @CPF VARCHAR(50),
        @NOME VARCHAR(100),
        @DATA_NASCIMENTO DATE,
        @IDADE INT;

-- Atribuição
SET @CPF = '19290992743';

--Atribuindo as variáveis com o valor da tabela de clientes
SELECT @NOME = NOME, @DATA_NASCIMENTO = DATA_DE_NASCIMENTO, @IDADE = IDADE FROM TABELA_DE_CLIENTES WHERE CPF = @CPF

--Imprimindo na tela os valores
PRINT @NOME;
PRINT @DATA_NASCIMENTO;
PRINT @IDADE

-- Declaração de variáveis
DECLARE @CPF VARCHAR(50),
        @NOME VARCHAR(100),
        @DATA_NASCIMENTO DATE,
        @IDADE INT;

SET @CPF = '1471156710';

--Atribuindo as variáveis com o valor da tabela de clientes
SELECT @NOME = NOME, @DATA_NASCIMENTO = DATA_DE_NASCIMENTO, @IDADE = IDADE FROM TABELA_DE_CLIENTES WHERE CPF = @CPF

--Imprimindo na tela os valores
PRINT @NOME;
PRINT @DATA_NASCIMENTO;
PRINT @IDADE

-- Declaração de variáveis
DECLARE @CPF VARCHAR(50),
        @NOME VARCHAR(100),
        @DATA_NASCIMENTO DATE,
        @IDADE INT;

SET @CPF = '2600586709';

--Atribuindo as variáveis com o valor da tabela de clientes
SELECT @NOME = NOME, @DATA_NASCIMENTO = DATA_DE_NASCIMENTO, @IDADE = IDADE FROM TABELA_DE_CLIENTES WHERE CPF = @CPF

--Imprimindo na tela os valores
PRINT @NOME;
PRINT @DATA_NASCIMENTO;
PRINT @IDADE

--Contando o número de notas emitidas no dia 01/01/2027
DECLARE @NUMNOTAS INT

SELECT @NUMNOTAS = COUNT(*) FROM NOTAS_FISCAIS
    WHERE DATA_VENDA = '20170101'

PRINT @NUMNOTAS

--Usando a função print com outras funções
--Entendendo as funções charindex e substring
SELECT NOME, CHARINDEX(' ', NOME), SUBSTRING(NOME, 1, CHARINDEX(' ', NOME) - 1) FROM TABELA_DE_CLIENTES; 

-- Declaração de variáveis
DECLARE @CPF VARCHAR(50),
        @NOME VARCHAR(100),
        @DATA_NASCIMENTO DATE,
        @IDADE INT;

SET @CPF = '2600586709';

SELECT @NOME = NOME, @DATA_NASCIMENTO = DATA_DE_NASCIMENTO, @IDADE = IDADE FROM TABELA_DE_CLIENTES WHERE CPF = @CPF

PRINT 'O primeiro nome do cliente '+ @NOME + ' cujo o CPF é ' + @CPF + ', corresponde a ' + SUBSTRING(@NOME, 1, CHARINDEX(' ', @NOME) - 1)

--Usar função de data na função print
DECLARE @CPF VARCHAR(15);
DECLARE @DATA_NASCIMENTO DATE;


SET @CPF = '1471156710';

SELECT @DATA_NASCIMENTO = DATA_DE_NASCIMENTO FROM TABELA_DE_CLIENTES WHERE CPF = @CPF;

PRINT DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());

--Variável de saída
-- Declaração de variáveis
DECLARE @CPF VARCHAR(50),
        @NOME VARCHAR(100),
        @DATA_NASCIMENTO DATE,
        @IDADE INT,
        @SAIDA VARCHAR(100);

SET @CPF = '2600586709';


SELECT @NOME = NOME, @DATA_NASCIMENTO = DATA_DE_NASCIMENTO, @IDADE = IDADE FROM TABELA_DE_CLIENTES WHERE CPF = @CPF;

SET @SAIDA = 'O primeiro nome do cliente '+ @NOME + ' cujo o CPF é ' + @CPF + ', corresponde a ' + SUBSTRING(@NOME, 1, CHARINDEX(' ', @NOME) - 1);

PRINT @SAIDA;