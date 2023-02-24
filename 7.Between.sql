/*
 between, basicamente, é usado para encontrar um valor entre um valor minimo e um valor maximo;
 O significado da palavra Between é 'Entre', e é exatamente o que ele vai fazer, que é encontrar um 
 valor entre um valor minimo e um valor máximo;
*/

/* SINTAXE:
    SELECT *
    FROM Production.product
    valor BETWEEN minimo AND maximo;

    É a mesma coisa que dizer:
        valor >= valor minimo AND valor <= valor maximo;
*/

/*Selecionando todas as colunas da tabela Production.product, cujos valores serão 
exibidos de acordo A condição do WHERE, que é valores do Listprice entre 1000 e 1200;
Ou seja, serão apenas exibidos os Produtos/dados que tiverem seu listPrice entre 1000 e 1200;*/
SELECT *
FROM Production.Product 
WHERE ListPrice BETWEEN 1000 and 1200;

/*Se eu quiser, por exemplo, exibir o periodo ou a data em que os usuarios se cadastraram no 
sistenm da empresa, irei fazer assim: */
SELECT *
FROM HumanResources.Employees
WHERE HireDate BETWEEN '2009-01-14' AND '2009-02-08'
ORDER BY HireDate asc;
/*Aqui estou buscando usuarios que tenha se cadastrado entre as datas '2009-01-14' e '2009-02-08'
Logo, também é possivel fazer isso com datas;*/

--O formato de data no SQL ´ra seguir o padrao: ANo-Mes-Dia; EX: '2023/11/06'; entre aspas simples;

--Eu também posso usar o Operador NOT para inverter valores, ou seja, o oposto; EX:
SELECT *
FROM Production.Product
WHERE ListPrice NOT Between 100 and 120;
/*OU seja, nao exiba os dados/produtos que tiverem o seu ListPrice entre 100 e 120; Logo, vai
 exibir todos os outros produtos, menos esses que estao com o lIstPrice entre 100 e 120;
 Serão exibidos qualquer outros valores que não sao esses entre 100 e 120;*/

--Entao o BETWEEN sempre será usado com a condição WHERE;
