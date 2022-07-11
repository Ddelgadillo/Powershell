#Gets the list of a user's groups (repalce username)
Get-ADPrincipalGroupMembership ddelgadillo | select name | export-csv C:\Users\ddelgadillo\Documents\Groups.csv