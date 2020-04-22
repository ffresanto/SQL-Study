-- usando WHERE
SELECT * FROM senso
WHERE nome_mun = 'jundiai';

-- usando AND

SELECT * FROM senso
WHERE cod_uf = '35'
AND populacao > 50000
AND ano = '2014';

-- operador between

SELECT * FROM senso
WHERE cod_uf = '35'
AND populacao BETWEEN 5000 AND 10000
AND ano = '2014'
ORDER BY populacao DESC;

-- operador in

SELECT * FROM senso
WHERE cod_uf IN ('35','12')
AND ano = '2014';

-- operador not in

SELECT * FROM senso
WHERE cod_uf NOT IN ('35','12')
AND ano = '2014';

-- LIKE localiza valores que contenham "OR" em qualquer lugar

SELECT * FROM senso
WHERE nome_mun LIKE ('%or%')
AND ano = '2014';

-- LIKE encontra qualquer valor que tenham "r" na segunda posição

SELECT * FROM senso
WHERE nome_mun LIKE '_r%'
AND ano =  '2014';

-- LIKE localiza valores que começam com "a" e possuem pelomenos 3 caracteres de comprimento

SELECT * FROM senso
WHERE nome_mun LIKE 'a_%_%'
AND ano = '2014';

-- LIKE localiza valores que começam com "a" e termina com "o"

SELECT * FROM senso
WHERE nome_mun LIKE 'a%o'
AND ano = '2014';

-- LIKE localiza valores que começam com "a"

SELECT * FROM senso
WHERE nome_mun LIKE 'a%'
AND ano = '2014';

-- operador LIKE coringa

SELECT * FROM senso
WHERE nome_mun LIKE '_a%'
AND ano = '2014';

-- operador NOT

SELECT ano, cod_uf, estado, nome_mun, populacao FROM senso
WHERE nome_mun NOT LIKE ('A%')
AND cod_uf = '35'
AND NOT populacao > 40000
AND ano = '2014';

-- operador OR

SELECT * FROM senso
WHERE nome_mun LIKE ('a%')
AND (cod_uf = '35' OR cod_uf = '15');

-- evidencia de erro OR

SELECT * FROM senso
WHERE nome_mun LIKE ('a%')
AND cod_uf = '35'
AND cod_uf = '15';

-- operador IS NOT NULL / retorna valores que não estao nulos

SELECT * FROM senso
WHERE regiao IS NOT NULL;

-- operador IS NULL / retorn valores nulos

SELECT * FROM senso
WHERE regiao IS NULL;

-- preparando cenario is null
SELECT * FROM senso
WHERE regiao = ''

UPDATE senso SET regiao = NULL
WHERE regiao = '';

UPDATE senso SET regiao = ''
WHERE regiao IS NULL;

-- operador HAVING / COUNT

SELECT cod_uf, estado, COUNT(*) qtd FROM senso
WHERE ano = '2014'
GROUP BY cod_uf, estado HAVING COUNT(cod_mun) > 500; 

-- operador HAVING

SELECT cod_uf, estado, COUNT(*) qtd FROM senso
WHERE ano = '2014'
GROUP BY cod_uf, estado HAVING COUNT(cod_mun) < 500; 

-- operador HAVING / SUM

SELECT cod_uf, estado, COUNT(cod_mun) AS qtd, SUM(populacao) AS soma_populacao FROM senso
WHERE ano = '2014'
GROUP BY cod_uf, estado 
HAVING SUM(populacao) > 5000000;

-- operador HAVING 

SELECT cod_uf, estado, COUNT(cod_mun) AS qtd, SUM(populacao) AS soma_populacao 
FROM senso
WHERE ano = '2014'
GROUP BY cod_uf, estado 
HAVING SUM(populacao) < 5000000;

SELECT ano, SUM(populacao) FROM senso
GROUP BY ano

