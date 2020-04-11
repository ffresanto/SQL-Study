-- SELECT * FROM senso

-- usando operador =

SELECT * FROM senso
WHERE cod_uf = '35'
AND ano = '2014';

-- usando operador =

SELECT * FROM senso
WHERE nome_mun = 'Dourado'
AND cod_uf = '35'
AND ano = '2014';

-- usando o operador >

SELECT * FROM senso
WHERE populacao > 1000000
AND cod_uf = '35'
AND ano = '2014';

-- usando operador <

SELECT * FROM senso
WHERE populacao < 10000
AND ano = '2014';

-- usando operador <

SELECT * FROM senso
WHERE populacao < 50000
AND ano = '2014';

-- usando operador <=

SELECT * FROM senso
WHERE populacao <= 10000
AND ano = '2014';

SELECT * FROM senso
WHERE populacao <= 50000
AND ano = '2014';

-- usando operador <>

SELECT * FROM senso
WHERE cod_uf <> '35'
AND cod_uf <> '14'
AND ano = '2014';

SELECT * FROM senso
WHERE (cod_uf = '35' OR cod_uf = '14')
AND ano = '2014'

-- usando todos os operadores

SELECT * FROM senso
WHERE populacao <= 100000
AND populacao >= 50000
AND cod_uf = '35'
AND nome_mun = 'Vinhedo'
AND ano= '2014'




