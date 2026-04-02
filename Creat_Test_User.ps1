# Import the AD module (in case it isn't loaded automatically)
Import-Module ActiveDirectory

#  1 Create a new Organizational Unit
$ouName = "TestLabOU"
$ouPath = "OU=$ouName,DC=aazaboualid,DC=local" # change this 

# Check if OU exists first to avoid errors
if (-not (Get-ADOrganizationalUnit -Filter "Name -eq '$ouName'" -ErrorAction SilentlyContinue)) {
    New-ADOrganizationalUnit -Name $ouName -ProtectedFromAccidentalDeletion $false
    Write-Host "✅ Created OU: $ouName"
} else {
    Write-Host "ℹ️ OU already exists: $ouName"
}

# 2 Create 5 test users
for ($i = 1; $i -le 5; $i++) {
    $username = "TestUser$i"
    $password = ConvertTo-SecureString "P@ssword123" -AsPlainText -Force

    if (-not (Get-ADUser -Filter "SamAccountName -eq '$username'" -SearchBase $ouPath -ErrorAction SilentlyContinue)) {
        New-ADUser `
            -Name $username `
            -SamAccountName $username `
            -AccountPassword $password `
            -Enabled $true `
            -ChangePasswordAtLogon $false `
            -Path $ouPath
        Write-Host "✅ Created user: $username"
    } else {
        Write-Host "ℹ️ User already exists: $username"
    }
}

# 3 Create a group and add the users to it
$groupName = "TestLabGroup"

if (-not (Get-ADGroup -Filter "Name -eq '$groupName'" -ErrorAction SilentlyContinue)) {
    New-ADGroup -Name $groupName -GroupScope Global -Path $ouPath
    Write-Host "✅ Created group: $groupName"
} else {
    Write-Host "ℹ️ Group already exists: $groupName"
}

# Add users to the group
for ($i = 1; $i -le 5; $i++) {
    $username = "TestUser$i"
    Add-ADGroupMember -Identity $groupName -Members $username
    Write-Host "✅ Added $username to $groupName"
}

Write-Host "`n All done!"
