/*Exercici 1
Presenta el nom, telèfon i país de les companyies, juntament amb la quantitat 
total gastada, d'aquelles que van realitzar transaccions amb una despesa 
compresa entre 100 i 200 euros. Ordena els resultats de major a menor quantitat gastada.*/
SELECT company_name as'Nom', phone as'Telèfon', country as'País', amount as'Quantitat Total Gastada'
FROM company
JOIN transaction
ON company.id=transaction.company_id
WHERE transaction.amount BETWEEN 100 AND 200
ORDER BY amount DESC;

/*Exercici 2
Indica el nom de les companyies que van fer compres el 16 de març del 2022, 
28 de febrer del 2022 i 13 de febrer del 2022.*/
SELECT company_name as'Nom', date(transaction.timestamp) as Data
FROM company
JOIN transaction
ON company.id=transaction.company_id
WHERE date(transaction.timestamp) IN('2022-03-16','2022-02-28','2022-02-13')
GROUP BY Nom, Data
ORDER BY Data ASC;


