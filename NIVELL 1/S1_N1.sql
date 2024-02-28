/* Exercici 2: Realitza la següent consulta: Has d'obtenir el nom,
email i país de cada companyia, ordena les dades en 
funció del nom de les companyies.*/
SELECT  company.company_name as 'Nom', company.email as 'Email' , company.country as 'País'
FROM company
ORDER BY company.company_name;

/* Exercici 3: Des de la secció de màrqueting et sol·liciten que els passis un llistat 
dels països que estan fent compres.*/
SELECT company.country as 'Països que compren'
FROM company
INNER JOIN transaction
ON company.id=transaction.company_id
WHERE transaction.declined = 0
GROUP BY company.country;
/* Filtro las transacciones anuladas en "declined". No hace falta crear filtros ya que en una 
inner join solo aparceran filas que tengan transacciones realizadas*/

/* Exercici 4: Des de màrqueting també volen saber des de quants països 
es realitzen les compres.*/
SELECT COUNT(distinct company.country) as 'Països que compren'
FROM company
INNER JOIN transaction
ON company.id=transaction.company_id
WHERE transaction.declined = 0;
# Es realitzen compres desde 15 països.

/* Exercici 5: El teu cap identifica un error amb la companyia que té aneu 'b-2354'. 
Per tant, et sol·licita que li indiquis el país i nom de companyia d'aquest aneu.*/
SELECT company.country as 'País' , company.company_name as 'Nom'
FROM company
WHERE company.id = 'b-2354';
# La companyía es Ac Libero Inc. del Regne Unit.

/* Exercici 6: A més, el teu cap et sol·licita que indiquis quina és la 
companyia amb major despesa mitjana.*/
SELECT company.company_name, avg(transaction.amount) as'Despesa Mitjana'
FROM company
JOIN transaction
ON company.id=transaction.company_id
WHERE transaction.declined = 0
GROUP BY company.company_name
ORDER BY 2 DESC
LIMIT 3;
# L'empresa amb major despesa mitjana es Eget Ipsum Ltd
