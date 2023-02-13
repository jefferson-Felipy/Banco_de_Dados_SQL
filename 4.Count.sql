/*COUNT: basicamente serve para retornar/dar o numero de linhas e baixo composição que foi definida ali;
Basicamente COUNT irá me retornar a quantidade de linhas qua há em uma coluna, ou que ha em todas as
colunas de uma determinada tabela;
*/

/* Sintaxe:
    SELECT COUNT(*)
    FROM person.person;
*/

/*Selecionando a quantidade de linhas que há na tabela person.person, se baseando em todas as 
colunas da tabela;*/
SELECT COUNT(*)--Quantidade de linhas Que tem nas colunas da tabela person.person
FROM Person.Person; --19972

/*Selecionando a quantidade de linhas que tem na coluna FirstName da tabela person.person, onde vai
 me reornar apenas a quantidade de dados/linhas que há nessa coluna;*/
SELECT COUNT(FirtsName)
FROM person.person; --19972

/*Selecionando e retornando a quantidade de linhas que ha na coluna Firstname da tabela person.person
removendo os nomes duplicados por meio do comando DISTINCT e retornando apenas os valores reais;*/
SELECT COUNT(DISTINCT FirtsName)
FROM person.person; --1018

SELECT COUNT(Title)
FROM Person.person; --1009

SELECT COUNT(DISTINCT Title)
FROM Person.Person; --6

/* EXERCICIO:
    1- Eu quero saber quantos produtos nos temos cadastrados em nossa tabela de produtos;
    2- Quantos tamanhos de produtos temos cadastrados na nossa tabela;
    3- Eu quero saber quantos tamanhos diferentes de produtos eu tenho cadastrado na nossa tabela;
*/

    --RESOLUÇAO 1:
        SELECT COUNT(*)
        FROM Production.Product; --504

    --RESOLUÇAO 2:
        SELECT COUNT(Size)
        FROM Production.Product; --211

    --RESOLUÇAO 3:
        SELECT COUNT(DISTINCT Size)
        FROM Production.product; --18

/*Logo, não significa que uma determinaa coluna irá ter a mesma quantidade de linhas que as outras,
uma terá mais linhas, outras terá menos linhas, pode ater ter o mesmo numeo de linhas, mas a maioria
das linhas esta´ra preenchida com o valor NULL, o que corresponde a nehum valor;