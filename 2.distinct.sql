/*O DISTINCT basicamente é usado quando eu quero omitir os dados duplicados de uma tabela; 
Ou seja, ela faz com que a tabela retorne apenas os dados unicos daquela tabela expecífica;*/

/*Sintaxe: 
        SELECT DISTINCT coluna1
        FROM nomeDaTabela;
*/

SELECT DISTINCT FirstName -- -> Irá retornar apenas os dados unicos da coluna Firstname da tabela person;
FROM person.person;
/*Ou seja, irei usar o distinct para retornar dados de uma coluna especifica de uma tabela especifica 
onde esse dados nao estao duplicados, e sim sao os dados unicos daquela coluna da tabela;*/

--Selecionando os dados unicos nao duplicados da coluna Lastname da tabela Person.person;
SELECT DISTINCT LastName
FROM person.Person;

--Mas o DISTINCT nao funciona em mais de uma coluna ao mesmo tempo e na mesma linha, ex:
SELECT DISTINCT FirstName, DISTINCT LastName --Nao é possivel fazer assim,pois dará erro de sintaxe 
                                             --incorreta,pois tem que ser apenas em uma coluna;
FROM person.person;

SELECT DISTINCT FirstName,LastName
FROM person.person; --Posso ate tentar usar assim, mas nao sei se é correto, pois o Lastname ainda 
                    --fica com nomes duplicados;

/*Logo, o DISTINCT irá remover os dados deplicados de uma coluna, retornando os dados unicos de uma 
coluna de uma tabela especifica*/

/*EXECICIO: 
        Quantos nomes e sobrenomes unicos nos temos em nossa tabela Person.Person*/

        --RESOLUÇÂO:
        SELECT DISTINCT FirstName
        FROM Person.Person;
        --Ira remover os FIrstNames duplicados da tabela person e irá selecionar e retornar os nomes unicos;

        SELECT DISTINCT LastName
        FROM Person.Person;
        --Ira remover os LasttNames duplicados da tabela person e irá selecionar e retornar os nomes unicos;

        SELECT DISTINCT FirstName,LastName
        FROM Person.Person; --Ainda tem essa opção, mas nao sei se esta correta;