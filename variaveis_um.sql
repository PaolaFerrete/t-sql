--Declaração de variáveis

DECLARE @MATRICULA VARCHAR(5),
        @NOME VARCHAR(100),
        @PERCENTUAL FLOAT,
        @DATA DATE,
        @FERIAS BIT,
        @BAIRRO VARCHAR(50);

-- Atribuindo valores as variáveis
SET @MATRICULA = '00240';
SET @NOME = 'Claúdia Rodrigues';
SET @PERCENTUAL = 0.10;
SET @DATA = '2012-03-12';
SET @FERIAS = 1;
SET @BAIRRO = 'Jardins';

--Imprimindo as variáveis
PRINT @MATRICULA;
PRINT @NOME;
PRINT @PERCENTUAL;
PRINT @DATA;
PRINT @FERIAS;
PRINT @BAIRRO;

--Inserindo novos dados na tabela com o auxílio de variáveis

INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS, BAIRRO
) VALUES (
    @MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO
);

PRINT 'UM VENDEDOR INCLUIDO';

-- Alterando valor da variável
SET @MATRICULA = '00244';
SET @NOME = 'Roberto Araújo';

PRINT @MATRICULA;
PRINT @NOME;
PRINT @PERCENTUAL;
PRINT @DATA;
PRINT @FERIAS;
PRINT @BAIRRO;

--Inserindo novos dados na tabela
INSERT INTO TABELA_DE_VENDEDORES (
    MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS, BAIRRO
) VALUES (
    @MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO
);

PRINT 'UM VENDEDOR INCLUIDO';

SELECT * FROM TABELA_DE_VENDEDORES;


-- EXERCÍCIO
DECLARE @Cliente VARCHAR(10),
        @Idade INT,
        @DataNascimento DATE,
        @Custo FLOAT;

SET @Cliente = 'João';
SET @Idade = 10;
SET @DataNascimento = '2007-10-01';
SET @Custo = 10.23;

PRINT @Cliente;
PRINT @Idade;
PRINT @DataNascimento;
PRINT @Custo;