<h1 align="center"> 🕵️‍♂️ Information Gathering Lab Series </h1> 

> *This folder contains my fully completed and documented reconnaissance labs — the foundational phase of ethical hacking and penetration testing. All passive and active intelligence-gathering techniques have been practiced, validated, and professionally reported.*

---

## 🗂️ Folder Structure
````
Information_Gathering/
├── 1. Passive Reconnaissance (Footprinting)/
│ ├── 1. Domain & WHOIS Information Gathering.md
│ ├── 2. Email & Username Enumeration.md
│ ├── 3. OSINT Frameworks.md
│ ├── 4. Search Engines for Devices & Services.md
│ └── 5. Metadata & File Analysis.md
|
└── 2. Active Reconnaissance/
  ├── 1. Network Discovery & Scanning.md
  ├── 2. DNS Enumeration.md
  ├── 3. Subdomain Enumeration.md
  └── 4. Web Technology Fingerprinting.md
````


---



## Completed Labs Overview

### 1. Passive Reconnaissance (Footprinting)
All labs in this section are **fully completed** with detailed writeups, command outputs, and mitigation guidance:

- **Domain & WHOIS**: Extracted registrar, IP ranges, and contact info using `whois`, `dig`, and online registrars.
- **Email & Username Enumeration**: Used `theHarvester`, `Hunter.io`, and LinkedIn scraping to map personnel.
- **OSINT Frameworks**: Leveraged **Maltego**, **Recon-ng**, and **SpiderFoot** for automated intelligence mapping.
- **Search Engines for Devices**: Discovered exposed cameras, routers, and servers via **Shodan**, **Censys**, and **Google Dorks**.
- **Metadata & File Analysis**: Extracted hidden data from PDFs, images, and documents using `exiftool`, `strings`, and `binwalk`.

### 2. Active Reconnaissance
All active scanning and enumeration techniques are **fully documented**:

- **Network Discovery**: Identified live hosts using `nmap -sn`, `arp-scan`, and `Netcat`.
- **DNS Enumeration**: Mapped DNS records (A, MX, TXT, SPF) using `dig`, `nslookup`, and `dnsenum`.
- **Subdomain Enumeration**: Discovered hidden subdomains via **Sublist3r**, **Amass**, **Gobuster**, and **brute-force wordlists**.
- **Web Technology Fingerprinting**: Identified server types, frameworks, and versions using **Wappalyzer**, **WhatWeb**, and manual HTTP header analysis.

---

## 🧾 Lab Methodology
> Objective → Tools → Recon Process → Findings → Analysis → Risk Impact → Remediation Notes → Lessons Learned

Every lab follows a consistent, professional structure:
- **🎯 Objective**: Clear goal of the exercise  
- **🛠️ Tools Used**: List of tools and versions  
- **📋 Step-by-Step Procedure**: Detailed commands and workflow  
- **📊 Results**: Screenshots, command outputs, and findings  
- **💡 Lessons Learned**: Key takeaways and pitfalls  
- **🛡️ Remediation**: Actionable recommendations to reduce exposure  

This mirrors real-world penetration test reporting standards.

---

## 📌 Why This Matters

Information gathering is the **silent foundation** of cybersecurity:
- It enables **targeted, efficient attacks** (or defenses).
- It reveals **attack surface** often overlooked by defenders.
- It teaches **ethical boundaries** — knowing what’s public vs. private.
- It builds **critical thinking** before a single exploit is run.

Completing this phase thoroughly demonstrates discipline, curiosity, and professionalism — essential traits for any cybersecurity role.

---

## 🔗 Related Projects
- **[Web Recon Automation](../12.%20Projects/Web_Recon_Automation.md)**: Python scripts to automate subdomain and tech discovery.
- **[Network Scanning Toolkit](../12.%20Projects/Network_Scanning_Toolkit.md)**: Custom Nmap wrapper for rapid host enumeration.

---

## 📬 Feedback Welcome!
If you’re reviewing this portfolio and have suggestions, collaboration ideas, or opportunities — I’d love to connect!

- 💼 [LinkedIn](https://www.linkedin.com/in/nin-kanong/)  
- 📧 ninkanong200620@gmail.com  
- 🐱 [GitHub Profile](https://github.com/Nin-Kanong)

> 💡 *“Reconnaissance is not optional — it’s the difference between guessing and knowing.”*
---

<h2 align="center"> Last Update: January/26/2026 </h2>
