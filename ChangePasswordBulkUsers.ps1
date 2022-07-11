#First, create the text file with a list of user identities. This file will serve as input for your script. In this example, the text file is C:\Temp\userlist.txt and contains the user IDs below.

# user01
 #user02
 #user03
#2. Next, open your code editor and create a new file called reset-password.ps1. Place this file in any folder that you want. In this example, the script will be in C:\Temp.

#3. Once you’ve created the reset-password.ps1 script, copy the code below, paste it into your code editor, and save the script.

# Import ActiveDirectory module
 Import-module ActiveDirectory
# Grab list of users from a text file.
 $ListOfUsers = Get-Content C:\Temp\userlist.txt
 foreach ($user in $ListOfUsers) {
     #Generate a 15-character random password.
     $Password = -join ((33..126) | Get-Random -Count 15 | ForEach-Object { [char]$_ })
     #Convert the password to secure string.
     $NewPwd = ConvertTo-SecureString $Password -AsPlainText -Force
     #Assign the new password to the user.
     Set-ADAccountPassword $user -NewPassword $NewPwd -Reset
     #Force user to change password at next logon.
     Set-ADUser -Identity $user -ChangePasswordAtLogon $true
     #Display userid and new password on the console.
     Write-Host $user, $Password
 }

#Finally, run the script by executing its full path in PowerShell as you can see below.

#C:\Temp\reset-password.ps1
#As a result, the image below shows each user with their corresponding new password. You can now copy these passwords and provide them to their respective users.

#Resetting multiple passwords