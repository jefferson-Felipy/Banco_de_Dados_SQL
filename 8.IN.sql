/*O operador IN serve para que? 
  -os usamos o operador IN junto com o operador WHERE, para verificar se um valor correspondem
  com quelaquer valor passados na lista de valores;
  Ou seja, eu posso expecificar os produtos, por exemplo, que eu quero encontrar passando
  valores expecificos de uma coluna*/

/*Sintaxe: 
    SELECT *
    FROM production.product
    WHERE nomeDaColuna IN(Valor Especifico);
*/

/*Aqui, por exemplo, estou pegando todas colunas da tabela production.product que tenha
a sua coluna color com o valorigual a 'Blue' e 'Pink'; E será me retornado apenas os produtos
que tiverem sua cor igual a blue ou a pink;*/
  SELECT *
  FROM production.product 
  WHERE color IN('Blue','Pink');--Temos que especificar a coluna e apos usar o IN com o valor 
                                --expecifico;
/*Buscando os dados da tabela production que tenha o seu ID igual a 711, e caso o IN encontrar
esse valore, ele vai retornar essas informacoes;*/
SELECT *
FROM production.product
WHERE ProductID IN(711);

/*Selecionando todas os dados da tabela person que tenha o seu ID igual a 2 ou 3 ou 18, e caso
o IN encontrar esses ID na tabela person, ele irá retornar essas informacoes*/
SELECT *
FROM Person.Person
WHERE BussnisEntitiID IN(2,3,18);--Esse irá substituir o exemplo de baixo;

--Esse exemplo será substituido pelo IN();
SELECT *
FROM person.person
WHERE BussnisEntitiID = 2 
OR BussnisEntitiID = 3
OR BussnisEntitiID = 18;

/*Basicamente o IN irá fazer uma busca no banco de dados, e sempre que ele encontrar um dos
valores passados no seu parentes, ele ira retornar essas informacoes;
E a ordem de valores que eu passar dentro do IN, será a ordem que os dados seroa exibidos
no sql;
--O IN é mais rápido e mais fatoravel e limpa que o exemplo manual, entao sempre irei usar o IN
nesses casos;*/

--Lembrando que eu tambem posso usar o NOT para trazer dados opostos de um determinado operador;