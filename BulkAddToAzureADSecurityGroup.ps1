$Group = "InsideSalesParksite"
$GroupObj = Get-AzureADGroup -SearchString $Group
 
#Read group members from CSV file
$GroupMembers = Import-CSV "C:\Users\ddelgadillo\Documents\InsideSales.csv"
$i = 0;
$TotolRows = $GroupMembers.Count
#Iterate members one by one and add to group
Foreach($GroupMember in $GroupMembers)
{
    $User = $GroupMember."UserPrincipalName"
    Write-Progress -Activity "Adding member" -Status $User
    Try
    {
        $UserObj = Get-AzureADUser -SearchString $User
        Add-AzureADGroupMember -ObjectId $GroupObj.ObjectId -RefObjectId $UserObj.ObjectId
    }
    catch
    {
        Write-Host "Error occurred for $User" -f Yellow
        Write-Host $_ -f Red
    }
}
