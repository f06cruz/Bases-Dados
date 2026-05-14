-- a.1
SELECT *
FROM Produto;

-- a.2
SELECT Nome, Email, Localidade, DataNascimento
FROM Cliente;

-- b.1
SELECT Nome AS 'Descricao do Produto', Preco AS 'Preço sem IVA'
FROM Produto;

-- b.2
SELECT Nome AS 'Colaborador', Cargo -- AS 'Cargo'
FROM funcionario;

-- c.1
SELECT Nome, Stock*Preco AS 'Valor total', (Stock*0.8)*Preco AS 'Stock 20% Reduzido'
FROM Produto; 

-- c.2
SELECT Quantidade*Subtotal AS 'Receita', Quantidade*(Subtotal*0.7) AS 'Custo Estimado', (Quantidade*Subtotal)-(Quantidade*(Subtotal*0.7)) AS 'Lucro'
FROM ProdutoVenda;

-- d.1
SELECT Nome, timestampdiff(YEAR,DataContratacao,CURDATE())
FROM funcionario;

-- d.2
SELECT Nome, substring_index(Email,'@',-1)
FROM Cliente;

-- d.3
SELECT UPPER(Nome), format(Preco,1) -- , Preco (para comarar)
FROM Produto; 

-- e.1
SELECT Nome
FROM funcionario
where Cargo = 'Vendedor';

-- e.2
SELECT Nome
FROM Cliente
where timestampdiff(YEAR,DataNascimento,CURDATE()) <30;

-- e.3
SELECT ID
FROM venda
where total>1000;

-- f.1
SELECT Nome
FROM produto
where (CategoriaID = 1 or CategoriaID = 2) and Stock>10;

-- f.2
SELECT Nome
FROM cliente
where (Localidade = 'Porto' or Localidade = 'Lisboa') and timestampdiff(YEAR,DataNascimento,CURDATE()) >30;

-- g.1
SELECT Nome
FROM produto
where Preco between 100 and 500;

-- g.2
SELECT ID
FROM venda
where DataVenda between '2023-01-01' and '2023-05-31';

-- g.3
SELECT Nome
FROM cliente
where timestampdiff(YEAR,DataNascimento,CURDATE()) between 25 and 40;

-- h.1
SELECT ID
FROM venda
where ClienteID IN (1, 5, 7);

-- h.2
SELECT Nome
FROM cliente
where Localidade IN ('Braga', 'Viseu', 'Coimbra');

-- i.1
SELECT Nome
FROM produto
where Nome REGEXP 'Máquina';

-- i.2
SELECT Nome
FROM Cliente
where Nome regexp '^A....[ ]';

-- i.3
SELECT Nome
FROM Cliente
where Email regexp '@gmail.com$|@hotmail.com$';

-- i.4
SELECT Nome
FROM Produto
where Nome regexp '^Ar|^As';

-- j.1
SELECT CategoriaID, max(Preco)
FROM Produto
group by CategoriaID;

-- j.2
SELECT VendaID, count(ProdutoID)
FROM produtovenda
group by VendaID;

-- k.1
SELECT FuncionarioID, sum(total)
FROM Venda
group by FuncionarioID
having sum(total)>600;

-- k.2
SELECT CategoriaID
FROM Produto
group by CategoriaID
having sum(stock)>100;

-- l.1
SELECT Nome
FROM Produto
order by Preco desc;

-- l.2
SELECT Nome
FROM Cliente
order by DataNascimento desc;

-- m.1
SELECT Nome
FROM Produto
order by Preco
limit 5;

-- m.2
SELECT ID
FROM Venda
order by DataVenda desc
limit 10;

-- m.3
SELECT Nome
FROM Cliente
where Nome like 'A%'
limit 5;

-- n.1
SELECT c.Nome, v.DataVenda
from venda v
join cliente c
on  c.ID = v.ClienteID
where DataVenda>'2023-03-01';

-- n.2
select c.Nome, f.Nome, v.Total
from venda v
join cliente c
on  c.ID = v.ClienteID
join funcionario f
on  v.FuncionarioID = f.ID
order by v.total desc;

-- n.3
select c.Nome, count(v.ID)
from cliente c
join venda v
on c.ID = v.ClienteID
group by c.Nome
having count(v.ID)>2;

-- n.4
select c.Nome, sum(v.Total)
from cliente c
join venda v
on c.ID = v.ClienteID
group by c.Nome
having sum(v.Total)>1000;

-- n.5
select v.ID, c.Nome, p.Nome, pv.Quantidade, pv.Subtotal, p.Preco
from venda v
join cliente c
on c.ID = v.ClienteID
join produtovenda pv
on v.ID = pv.VendaID
join produto p
on p.ID = pv.ProdutoID
where pv.Subtotal>300 and pv.Quantidade>1 and v.DataVenda>'2023-04-01'
order by c.Nome
limit 10;