Import-Csv C:\Users\ddelgadillo\Documents\dls.csv  | ForEach-Object { Set-DistributionGroup -Identity $_.Identity -EmailAddresses @{Add=$_.SecondaryEmail}}
