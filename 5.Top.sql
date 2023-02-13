/*TOP: O comando TOP, basicamente, vai filtrar/limitar a quantidade de dados que é retornado de um 
select, retornando apenas um numero especifico de linhas/dados das colunas*/

/*SINTAXE:
    SELECT TOP 10 *
    FROM Person.Person;
*/

/*O comando TOP ´usado assim, onde a palavra reservada TOP indica que eu qero que aquele SELECT retorne/
exiba apenas um numero determinado de linhas das colunas ou de uma coluna especifica, e o numero 10
indica a quantidade de linhas/dados que esse SELECT irá retornar/exibir;*/
SELECT TOP 10 * --Será retornado/exibido apenas as primeiras 10 linhas/dados de todas as colunas da
                -- tabela person;
FROM Person.Person;

--Retornando/exibindo as prmeiras 5 linhas/dados de todas as colunas da tabela person;
SELECT TOP 5 *
FROM Person.person;

--Retornando apenas as 10 primeiras linas/dados da coluna FirstName da tabela Person;
SELECT TOP 5 FirstName
FROM person.person;


/*Logo, o comando TOP é usado junto com o SELECT para retornar apenas um numero especifico de linhas 
de uma ou mais colunas, ou ate todas as colunas de uma tabela espeficica do banco de daados, e o
numero dessas linhas/dados é especificado apos o comando TOP, e podemos especificar se é uma ou mais
colunas especificando apos o numero;