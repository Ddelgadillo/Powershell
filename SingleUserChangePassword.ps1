#create the secure string representation of the new password by running the command below in PowerShell. This command will convert the plain text password into a secure string and save it to a variable.
$NewPwd = ConvertTo-SecureString "MyComplexPassword@123" -AsPlainText -Force

#Next, reset the AD user’s password by running the Set-ADAccountPassword command below. The -Identity parameter accepts the AD user’s ID, while the -NewPassword parameter accepts the secure password object you created in the previous step. Lastly, the -Reset switch instructs the cmdlet to reset the user’s password.
Set-ADAccountPassword -Identity (username) -NewPassword $NewPwd -Reset

#Force the user to change the password at the next login, run the Set-ADUser command below with -ChangePasswordAtLogon $true parameter.
Set-ADUser -Identity (username) -ChangePasswordAtLogon $true