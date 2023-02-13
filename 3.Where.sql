/*O WHERE é usao para extrair/selecionar apenas alguns dados em particulas de uma coluna de uma tabela 
especifica; ou seja, o WHERE é uma condição para que um deteminado dado de uma tabela seja extraido;*/

/*Sintaxe: 
    SELECT nomeDaColuna
    FROM nomeDaTabela
    WHERE nomeDaColuna = 'Jeffersn';
*/

SELECT FirstName
FROM person.person 
WHERE FirstName = 'Jefferson';

--Ira extrair apenas os dados que possuirem seu LastName igual a Miller_
SELECT * --Pegando todos dados de todas as colunas da tabela
FROM person.person
WHERE LastName = 'miller'; --Extraindo apenas aqueles dados que atendem a essa condição

--Esse select irá extrair todos os dados que tiver ao menos uma das condicoes do WHERE como true;
SELECT FirstName,LastName,EmailPromotin--Passando tres colunas da tabela;
FROM person.person --Tabela person.person;
WHERE FirstName = 'Jefferson' or LastName = 'Felipe' or EmailPromotin = 2;
--Esse Where irá extrair tods os dados que possuirem ao menos uma dessas condiçoes como true;
--Entao, como nesse exemplo, estou passando mais de uma condição para o WHERE:

--Esse select vai extrair apenas um usuario especifico cujas condicoes do WHERE sejam verdadeiras_
SELECT FirstName,LastName,EmailPromotin --Eu posso passar mais de uma coluna;
FROM person.person --Da tabela person.person;
WHERE FirstName = 'Jefferson' AND LastName = 'Felipe' AND EmailPromotin = 2;
--Essas tres condicoes precisam serem verdadeiras para retornar/extrair o dados dessas tres tabelas;
--Caso uma das condicoessejam falsas, nao será retirnado/extraido nada;
--Entao, como nesse exemplo, estou passando mais de uma condição para o WHERE:

--Nesse exemplo irá filtrar e extrair apenas valores que atendam com as condicoes do WHERE;
SELECT *
FROM Production.Product --Da tabela Production.product;
WHERE ListPrice < 2000 and ListPrice > 1500; --Valores maior que 1500 e menor que 2000;

SELECT *
FROM Production.product
WHERE Color <> 'Black';

--Podemos usar uma ou mais colunas, e verificar a condição de cada uma delas usando o where e retornar
--um dado espcifico;

--Operadores lógicos que vamos usar em conjunto com o operador WHERE:
/*OPERADOR                DESCRIÇAÕ
    =                       IGUAL
    >                       MAIOR QUE
    <                       MENOR QUE
    >=                      MAIOR IGUAL
    <=                      MENOR IGUAL
    <>                      DIFERENTE DE
    AND                     OPERADOR LOGICO E
    OR                      OPERADOR LOGICO OU
*/

--String sao inseridas entre aspas simples -> '...';
--Numeros sao inseridos assim -> 9, ou seja, normal;

/*EXERCICIO:
        1- A equipe de produçao de produtos precisa do nome de todos as peças que pesam mais que 500kg
        mas não mais que 700kg para inspeção;

        2- Foi pedido pelo marketing uma relação de todos os empregados(emplayees) que sao casados 
        (single = solteiros, married = casado) e são assalariados(salaried).

        3- Um usuario chamado Peter Krebs está devendo um pagamento, consiga o E-mail dele para que possamos enviar uma cobrança.
        (terei que usar a tabela person.person e depois a tabela person.emailaddress);
*/

    --RESOLUÇAO 1:

            SELECT Name
            FROM Production.Product
            WHERE weight > 500 and weight <= 700;

    --RESOLUÇAO 2:

            SELECT *
            FROM HumanResources.Employee
            WHERE MaritalStatus = 'M' and SalariedFlag = 1;

    --RESOLUÇAO 3:
            SELECT *
            FROM Person.Person
            WHERE FirstName = 'Peter' and LastName = 'Krebs';

            SELECT * 
            FROM Person.EmailAddress;

            SELECT *
            FROM Person.EmailAddress
            WHERE BusinessEntityID = 26;


            SELECT EmailAddress
            FROM person.EmailAddress
            WHERE BusinessEntityID = 26;

            SELECT ModifiedDate
            FROM Person.EmailAddress
            WHERE BusinessEntityID = 26;                    