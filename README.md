# Active_Directory_lab
Active Directory Lab built in a virtualized environment to simulate a real enterprise network. This project demonstrates domain setup, user and group management, Group Policy configuration, and basic offensive security techniques such as enumeration and privilege escalation using Kali Linux.
#  Active Directory Lab (Red Team & Blue Team)

This repository contains a fully functional Active Directory lab environment designed for learning, practicing, and simulating real-world enterprise scenarios.

##  Objectives

* Build and configure an Active Directory domain from scratch
* Understand Windows Server roles and services (AD DS, DNS)
* Practice user, group, and policy management
* Simulate common attack techniques used in penetration testing
* Analyze and secure AD environments

##  Lab Architecture

* Domain Controller: Windows Server 2019/2022
* Client Machine: Windows 10
* Attacker Machine: Kali Linux
* Network: Host-Only (isolated lab environment)

##  Features

* Domain setup (aazaboualid.local)
* Active Directory Users & Groups
* Group Policy Objects (GPO)
* DNS configuration
* Domain join configuration
* SMB shares and permissions

## Offensive Security (Kali Linux)

* Network scanning (Nmap)
* SMB/LDAP enumeration
* BloodHound analysis
* Basic privilege escalation scenarios
* Credential harvesting simulations

## Skills Practiced

* Active Directory Administration
* Windows Networking
* Cybersecurity & Penetration Testing
* Troubleshooting and debugging

##  Future Improvements

* Add vulnerable configurations (Kerberoasting, LLMNR poisoning)
* Automate lab setup with PowerShell
* Add detection & defense scenarios (Blue Team)
* Integrate SIEM tools

##  Disclaimer

This lab is created for educational purposes only. All attacks are performed in a controlled environment.
