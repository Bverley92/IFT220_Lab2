# brutforce script to make some organizational units

# you need to change "BVERLEY.LAN" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name BV_Computers -Path "BVERLEY.LAN" -Description "BV Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=BV_Computers,BVERLEY.LAN"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=BV_Computers,BVERLEY.LAN"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=BV_Computers,BVERLEY.LAN"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=BV_Computers,BVERLEY.LAN"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=BV_Computers,BVERLEY.LAN"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=BV_Computers,BVERLEY.LAN"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=BV_Computers,BVERLEY.LAN"
 New-ADOrganizationalUnit -Name Servers -Path "OU=ST_Computers,BVERLEY.LAN"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=BV_Computers,BVERLEY.LAN"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=BV_Computers,BVERLEY.LAN"
New-ADOrganizationalUnit -Name BV_Groups -Path "BVERLEY.LAN" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name BV_Privileged_Accounts -Path "BVERLEY.LAN" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name BV_Users -Path "BVERLEY.LAN" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=BV_Groups,BVERLEY.LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=BV_Groups,BVERLEY.LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=BV_Groups,BVERLEY.LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=BV_Groups,BVERLEY.LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=BV_Groups,BVERLEY.LAN"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=BV_Groups,BVERLEY.LAN"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=BV_Groups,BVERLEY.LAN"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
