# Project 10: Internal DNS Setup
# Run in 64-bit PowerShell as Administrator on Windows Server 2022

# 1. Install the DNS Server role
Install-WindowsFeature DNS -IncludeManagementTools

# 2. Create the forward lookup zone
Add-DnsServerPrimaryZone -ZoneName "lab.local" -ZoneFile "lab.local.dns"

# 3. Create the A record for the web server
Add-DnsServerResourceRecordA -ZoneName "lab.local" -Name "webapp" -IPv4Address "10.5.3.127"

# 4. Verify the DNS service
Get-Service DNS

# 5. Verify name resolution (nslookup proof)
nslookup webapp.lab.local 127.0.0.1o

