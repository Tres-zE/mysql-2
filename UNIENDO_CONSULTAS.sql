SELECT DISTINCT BARRIO FROM tabla_de_clientes;

SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

/*JUNTA LOS BARRIOS SIN REPETIRLOS*/
SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_vendedores
ORDER BY BARRIO ASC;

/*JUNTA TODOS LOS BARRIOS AUNQUE SE REPITA*/
SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_vendedores
ORDER BY BARRIO ASC;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO,NOMBRE, 'Vendedor' AS TIPO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO,NOMBRE, 'Vendedor' AS TIPO_VENDEDOR FROM tabla_de_vendedores;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
LEFT JOIN 
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION 
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN 
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;