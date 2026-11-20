# Project 9 - Domain Controller Setup

## Goal

Practice basic authentication using Active Directory Domain Services (AD DS).

## Tasks Completed

### 1. Installed Active Directory Domain Services (AD DS)

- Opened Server Manager
- Added the Active Directory Domain Services role
- Installed required management tools and features

### 2. Promoted Server to Domain Controller

- Created a new forest
- Configured the domain:

```text
capstone.local
```

- Installed DNS during domain setup
- Restarted the server after promotion

### 3. Created Domain Users

Added the following domain users:

```text
pratham.sharma
vishal
```

---

## Environment

| Component | Details |
|------------|------------|
| Operating System | Windows Server 2022 Datacenter |
| Domain Name | capstone.local |
| NetBIOS Name | CAPSTONE |

---

## PowerShell Commands Used

### Verify AD DS Installation

```powershell
Get-WindowsFeature AD-Domain-Services
```

### Promote Server to Domain Controller

```powershell
Install-ADDSForest `
-DomainName "capstone.local" `
-DomainNetbiosName "CAPSTONE" `
-InstallDNS
```

---

## Deliverables

### Screenshot 1

Active Directory Domain Services (AD DS) installed successfully.

### Screenshot 2

Domain Controller configured with:

```text
capstone.local
```

---

## Benefits of Active Directory

- Centralized authentication
- User management
- DNS integration
- Access control
- Simplified administration

---

## Result

Successfully installed Active Directory Domain Services (AD DS), promoted the server to a Domain Controller, created the domain **capstone.local**, and configured domain users for centralized authentication.
