#Find user by filter when you don't know last name, Change John to whatever you want
Get-ADUser -Filter "givenName -eq 'John'"