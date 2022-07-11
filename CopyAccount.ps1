New-ADUser -Name "Fleur Wade" 
-GivenName Fleur 
-Surname Wade 
-SAMAccountName fleurwade 
-Instance $newuserattributes 
-DisplayName "Fleur Wade" 
-AccountPassword (ConvertTo-SecureString Pas$W0rd!!12 -AsPlainText -Force) 
-ChangePasswordAtLogon $true 
-Enabled $true