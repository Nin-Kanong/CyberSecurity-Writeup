<h1 align="center"> Gaining Access </h1> 

## Overview
This section focuses on the **Gaining Access** phase of penetration testing, where an attacker attempts to obtain initial access to a target system after identifying vulnerabilities.

All content here is for **educational and defensive security purposes only**, performed in **legal lab environments** (TryHackMe, Hack The Box, local VMs).

---

## Objectives
- Understand common techniques used to gain initial access
- Learn how attackers exploit weak configurations and vulnerabilities
- Build defensive awareness from an attacker’s perspective

---

## Topics Covered

### 1. Exploiting Network Services
- Misconfigured services (FTP, SMB, SSH, HTTP)
- Weak authentication mechanisms
- Insecure service versions
- Enumeration-to-exploitation workflow

**Tools & Techniques**
- Nmap (service & version detection)
- Netcat
- Metasploit Framework
- Manual exploitation techniques

---

### 2. Web Application Exploits
- SQL Injection
- Cross-Site Scripting (XSS)
- File inclusion vulnerabilities
- Command injection basics

**Tools & Techniques**
- Burp Suite
- SQLMap
- Manual payload testing

---

### 3. Password Attacks
- Online vs offline password attacks
- Weak password policies
- Credential reuse

**Tools & Techniques**
- Hydra
- John the Ripper
- Hashcat
- Wordlists (rockyou, custom lists)

---

### 4. Exploiting Known Vulnerabilities (CVE-based)
- Understanding CVEs and CVSS scores
- Mapping vulnerabilities to exploits
- Safe exploitation in lab environments

**Tools & Resources**
- Exploit-DB
- CVE Details
- Metasploit modules

---

### 5. Social Engineering (Theory & Awareness)
- Phishing attack concepts
- Human factor vulnerabilities
- Defensive awareness and prevention

**Tools (Lab Use Only)**
- Social Engineering Toolkit (SET)

---

### 6. Wireless Attacks
🚧 **Status: Not Started Yet**

This section is planned for future study and will include:
- Wireless network fundamentals
- Wi-Fi security protocols (WEP, WPA, WPA2, WPA3)
- Attack vectors and defensive measures

> This content will be added after completing the required theoretical background and lab setup.

---

## Lab Environment
- VirtualBox / VMware
- Kali Linux
- Vulnerable VMs (Metasploitable, DVWA)
- TryHackMe / Hack The Box

---

## Disclaimer
This repository is intended **only for educational purposes**.  
All techniques are practiced in controlled environments.  
Unauthorized testing on real systems is illegal and unethical.

---

## Progress
- [x] Network Service Exploitation
- [x] Web Application Exploits
- [x] Password Attacks
- [x] CVE-based Exploitation
- [x] Social Engineering (theory)
- [ ] Wireless Attacks (planned)

---

## Author
**Nin Kanong**  
Entry-Level Cybersecurity / Blue Team Focus
