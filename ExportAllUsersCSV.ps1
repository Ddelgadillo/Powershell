#Exports CSV file of ALL users from an ON-PREM ACtive directory. (Name, city, Email, Number, Department, Title)
Get-ADUser -Filter * -Properties * | Select-Object Name, City, EmailAddress, telephonenumber, Department, Title | export-csv -path C:\Users\ddelgadillo\Documents\ParksiteUserExport.csv
