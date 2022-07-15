Connect-ExchangeOnline 
Import-Csv -Path "C:\Users\ddelgadillo\Documents\Users.csv" | foreach {  
 $User=$_.DisplayName
 Write-Progress -Activity "Adding $UPN to group… " 
 Add-DistributionGroupMember –Identity birstusers@parksite.com -Member $User
 If($?)  
 {  
 Write-Host $UPN Successfully added -ForegroundColor Green 
 }  
 Else  
 {  
 Write-Host $UPN - Error occurred –ForegroundColor Red  
 }  
} 
