/*Exercici 1
Presenta el nom, telèfon i país de les companyies, juntament amb la quantitat 
total gastada, d'aquelles que van realitzar transaccions amb una despesa 
compresa entre 100 i 200 euros. Ordena els resultats de major a menor quantitat gastada.*/
SELECT company_name as'Nom', phone as'Telèfon', country as'País', SUM(amount) as'Quantitat Total Gastada'
FROM company
JOIN transaction
ON company.id=transaction.company_id
WHERE transaction.amount BETWEEN 100 AND 200
GROUP BY company_name, phone, country
ORDER BY SUM(amount) DESC;


