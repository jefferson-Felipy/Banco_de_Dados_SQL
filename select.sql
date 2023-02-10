/* Com o comando SELECT vamos fazer uma busca selecionando uma quantidade específica de
  linhas/dados em linhas com um tipo específico de categoria que vamos definir em nosso comando;*/

/* O comando SELECT é um comando universal do SQL que pode ser usado independente do banco de dados 
 que eu estiver trabalhando, e a sua ideia básica é que eu selecione uma coluna ou todas as colunas
 de uma tabela; */

 /* SINTAXE:
         SELECT coluna1,coluna2
         FROM nomeDaTabela; */
/*SELECT -> Usado para selecionar uma coluna ou varias colunas especificas de uma tabela especifica;
 FROM -> vai indicar de qual tabela será selecionado as colunas/elementos, indica qual é a tabela;
*/

-- O *(asteriscos) vai selecionar e retornar todas as colunas daquela tabela especifica;

-- Selecionar todos os elementos/colunas da tabelo person.person_
SELECT * 
FROM person.person;

-- Selecionar todos os dados da coluna title da tabela person.person_
SELECT Title --Especificando que quero pegar os dados da coluna Title da tabela person.person;
FROM person.person;

-- Seleciona todos os dados da coluna BusinessEntityID da tabela person.person_
SELECT BusinessEntityID --Estou especificando o nome da coluna, filtrando os dados e retornando apenas os dados daquela coluna;
FROM Person.Person
WHERE BusinessEntityID = 100; 
--Seleciona os dados da coluna BusinessEntityID da tabela person.person que tenha o valor igual a 100;
/*WHERE -> é a condição para a seleção de um ou mais dados de uma tabela , ou seja, quando eu quiser filtrar alguma informação,
ou seja, quando eu nao quiser que todos os valores sejam retornados, mas apenas valores especificos, eu vou entao usar o WHERE;*/

-- Os comandos SQL devem sempre estar em maiusculo;
/* Cada linha representa uma entreda ou uma informação individual do banco de dados e as colunas são os detalhes ou infor-
mações específicas que estao gravadas no banco de dados, por exemplo, cada usuario irá ocupar uma linha dessa tabela com 
suas informações*/

--Selecionando todos os elementos/colunas da tabela Person.EmailAddress
SELECT *
FROM Person.EmailAddress;

/* Exercicio:
        A equipe de marketing precisa fazer uma pesquisa sobre os nomes mais comuns de seus clientes e precisa do nome e sobre-
        nome de todos os clientes que estao cadastrados no sistema.*/

    --RESOLUÇAO:
        SELECT FirstName,LastName --Selcionando ambas as colunas;
        FROM person.person; --Da tabela person.person;
        /*Listando os dados da coluna FirstName e LastName da tabela person.person*/
