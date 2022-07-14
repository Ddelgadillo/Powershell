#Export users by department
Get-ADUser -Filter 'department -like "Sales"' -Properties * | select name, UserPrincipalName,samaccountname,displayname | export-csv C:\Users\ddelgadillo\Documents\SalesGroups.csv -NoTypeInformation
PS C:\Users\ddelgadillo>
