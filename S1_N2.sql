/*Exercici 1
El teu cap està redactant un informe de tancament de l'any i et sol·licita 
que li enviïs informació rellevant per al document. Per a això et sol·licita 
verificar si en la base de dades existeixen companyies amb identificadors (aneu) duplicats.*/
SELECT company.company_name, COUNT(company.id) as conteig
FROM company
GROUP BY  company_name
HAVING conteig > 1;
#No hi ha cap empresa amb l'id duplicat

/*Exercici 2
DIME LOS 5 DIAS EN LOS QUE SE HICIERON LAS COMPRAS POR MAYOR VALOR I DAME LA SUMA DE ESOS DIAS*/
SELECT date(transaction.timestamp) as Data, SUM(transaction.amount) as Quantitat
FROM transaction
GROUP BY data
ORDER BY Quantitat DESC
LIMIT 5;

/*Exercici 3
DIME LOS 5 DIAS EN LOS QUE SE HICIERON LAS COMPRAS POR MENOR VALOR Y 
DAME LA SUMA DE ESOS DIAS*/
SELECT date(transaction.timestamp) as Data, SUM(transaction.amount) as Quantitat
FROM transaction
GROUP BY data
ORDER BY Quantitat ASC
LIMIT 5;

/*Exercici 4
Quina és la mitjana de despesa per país? 
Presenta els resultats ordenats de major a menor mitjà.*/
SELECT country, AVG(transaction.amount) as 'Despesa Mitjana'
FROM company
JOIN transaction 
ON company.id=transaction.company_id
GROUP BY country
ORDER BY 2 DESC;
