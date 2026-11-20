# Project 10: Internal DNS Setup

## Goal
Access an application using a hostname (`webapp.lab.local`) instead of an IP address.

## Environment
| Item | Value |
|---|---|
| Platform | Azure VM |
| OS | Windows Server 2022 Datacenter |
| VM name | AZ-LKM-JAV-01 |
| VM private IP | 10.5.3.127 |
| DNS zone | lab.local |
| Hostname | webapp.lab.local |

## Tasks
- Deploy a DNS server
- Create an A record for the web server

## Steps

### 1. Install the DNS Server role
Run in a 64-bit PowerShell opened as Administrator:
```powershell
Install-WindowsFeature DNS -IncludeManagementTools
```

### 2. Create the forward lookup zone
```powershell
Add-DnsServerPrimaryZone -ZoneName "lab.local" -ZoneFile "lab.local.dns"
```

### 3. Create the A record
```powershell
Add-DnsServerResourceRecordA -ZoneName "lab.local" -Name "webapp" -IPv4Address "10.5.3.127"
```

### 4. Verify the service
```powershell
Get-Service DNS
```

### 5. Verify name resolution
```powershell
nslookup webapp.lab.local 127.0.0.1
```

## Result
`nslookup` resolves `webapp.lab.local` to `10.5.3.127`:

```
Server:  localhost
Address:  127.0.0.1

Name:    webapp.lab.local
Address:  10.5.3.127
```

## Screenshots
| Description | File |
|---|---|
| DNS service running | ![DNS service](screenshots/01-dns-service-running.png) |
| DNS Manager showing the A record | ![DNS Manager](screenshots/02-dns-manager-a-record.png) |
| nslookup proof | ![nslookup](screenshots/03-nslookup-proof.png) |

## Issues faced and fixes
- **`Install-WindowsFeature` not recognized:** PowerShell was running as 32-bit. Fixed by opening the 64-bit Windows PowerShell as Administrator.
- **Error 9609 (ResourceExists) when creating the zone:** the zone `lab.local` already existed from an earlier run, so no action was needed.
- **Azure VM IP:** the static IP was not changed, because Azure assigns it through DHCP. The VM's
