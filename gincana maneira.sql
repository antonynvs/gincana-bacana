use avaliacao_222b;

-- 1

insert into livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ('As crônicas de Narnia', 'C.S Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

-- 2

UPDATE livros
set disponivel = false
where ano_publicacao < 2000;

-- 3

UPDATE livros
set editora = 'Plume Books'
where titulo = '1984';

-- 4

DELETE FROM livros 
WHERE idioma = 'Francês' and ano_publicacao < 1970;

-- 5

SELECT * from livros
WHERE quantidade_paginas > 500;

-- 6

SELECT COUNT(categoria)
FROM livros
GROUP BY categoria;

-- 7

SELECT titulo
from livros
order by titulo asc
limit 5;

-- 8

SELECT AVG(ano_publicacao)
FROM livros;

-- 9

SELECT * 
from livros
order by ano_publicacao desc;


-- 10

SELECT * 
from livros
WHERE titulo like 'A%' and ano_publicacao between 1980 and 2000
