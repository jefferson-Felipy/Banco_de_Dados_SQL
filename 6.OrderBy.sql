/*
    O ORDER BY vai nos permitir que, basicamente, eu ordene os resultados/dados retornados por alguma
    coluna em ordem crescente ou decrescente, sendo crescente representado por 'asc' e o decrescente 
    representado por 'desc';
    Ou seja, o ORDER BY vai retornar os dados de uma coluna ordenados em ordem crescente ou decrescente;
*/

/*Sintaxe:
    SELECT FirstName
    FROM Person.Person
    ORDER BY Firstname asc;    
*/

--Estou ordenando a coluna Firstname de forma crescente, sendo os nome de A a Z_
SELECT FirstName
FROM Person.person 
ORDER BY FirstName asc; --Nesse cao é: ORDER BY NomeDaColuna asc/desc; vai exibir os nomes em forma asc;

/*
.Em caso de string, o ORDER BY irá ordenar de forma crescente(asc) sendo nomes que comecam com o caracter
 A ao Z; ou de forma decrescente(desc) com nomes que do Z ao A;
.Em caso de numeros, crescente(asc) vai do menor número ao maior número; Ou de forma decrescente(desc),
do maior numero ao menor numero;
 */

--Ordenando o Lastname da tabela person em ordem decrescente_
SELECT * 
FROM person.person
ORDER BY LastName desc;

--Também posso filtrar/ordenar por duas colunas_
SELECT *
FROM person.person
ORDER BY FirstName,LastName asc;--Coloquei as duas colunas que eu quero ordenar;

--Ordenando dois campos diferentes_
SELECT FirstName,EmailPromotion
FROM person.person
ORDER BY FirstName asc, EmailPromotion desc;

/*
    EXERCICIO:
        1- Obter o productId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro
        para o mais barato.
        2- Obter o nome e número dos produtos que tem o ProductID entre 1~4.
*/
        --Resolução 1:
            SELECT TOP 10 * productID
            FROM Production.Product 
            ORDER BY ListPrice desc;
            --Irá retornar os 10 productID dos produtos mais caros;

        --Resolução 2:
            SELECT TOP 4 Name,ProductNumber
            FROM Production.Product
            ORDER BY productID asc;
            /*Exibindo/retornando os 4 primeiros dados, que tenha o ProductID entre 1 e 4 da coluna 
            Name e da coluna ProductNumber da tabela production.product, e ordenando pela ProductID
            desses 4 produtos de forma crescente(asc);
            /*/

/*
Importante lembrar que quando o ORDER BY vai ordenar uma coluna de preços, ele ordena os preços do 
mais caro ao mais barato, ou do mais barato ao mais caro;
*/