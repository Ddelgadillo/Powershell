#Find user by filter when you don't know last name, Change John to whatever you want
Get-ADUser -Server "atlanticplywood.local" -Filter "givenName -eq 'Frank'"