Get-ADUser -Server "atlanticplywood.local" -Filter * -Properties "Name", "Enabled", "Company", "LastBadPasswordAttempt", "LastLogonDate", "LockedOut", "PasswordExpired", "PasswordLastSet", "msDS-UserPasswordExpiryTimeComputed" | Select-Object -Property "Name", "Enabled", "Company", "LastBadPasswordAttempt", "LastLogonDate", "LockedOut", "PasswordExpired", "PasswordLastSet", @{Name="ExpiryDate";Expression={[datetime]::FromFileTime($_."msDS-UserPasswordExpiryTimeComputed")}}