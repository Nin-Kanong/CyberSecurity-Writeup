<h1 align="center"> 🛠️ Active Reconnaissance – Lab Series </h1>

> *This folder documents my fully completed and professionally documented active reconnaissance labs — the phase where I interact directly with target systems to gather intelligence, using tools like Nmap, DNSenum, Amass, and Wappalyzer.*

---

## 🗂️ Folder Structure
````
Active Reconnaissance/
├── 1. Network Discovery & Scanning/
│ └── 1.Nmap.md
|
├── 2. DNS Enumeration/
│ ├── 1.dnsrecon.md
│ ├── 2.dig.md
│ ├── 3.nslookup.md
│ ├── 4.dnswalk.md
│ ├── 5.gobuster.md
│ └── 6.DNSdumpster.md
|
├── 3. Subdomain Enumeration/
│ ├── 1.Amass.md
│ ├── 2.sublist3r.md
│ ├── 3.AssetFinder.md
│ └── 4.findomain.md
|
└── 4. Web Technology Fingerprinting/
  ├── 1.Wappalyzer.md
  └── 2.WhatWeb.md
````


---

## Labs Overview

### 1. Network Discovery & Scanning
- Used **Nmap** for host discovery (`-sn`, `-PR`), port scanning (`-sS`, `-sT`), and service/version detection.
- Mapped live hosts, open ports, and running services across internal and external networks.
- Applied aggressive timing templates (`-T4`) and script scanning (`--script`) for deeper analysis.

### 2. DNS Enumeration
- Enumerated DNS records (A, MX, TXT, SPF, NS) using **dnsrecon**, **dig**, **nslookup**, and **dnswalk**.
- Discovered subdomains and misconfigurations via **gobuster dns** and **DNSdumpster.com**.
- Validated findings by comparing results from multiple tools to reduce false positives.

### 3. Subdomain Enumeration
- Discovered hidden subdomains using **Amass** (active + passive modes), **Sublist3r**, **AssetFinder**, and **Findomain**.
- Combined wordlists and brute-force techniques to uncover targets not visible via search engines.
- Documented how attackers use subdomains as entry points for phishing or vulnerability exploitation.

### 4. Web Technology Fingerprinting
- Identified web server types, frameworks, CMS platforms, and versions using **Wappalyzer** (browser extension) and **WhatWeb** (CLI).
- Mapped technology stacks to known vulnerabilities (e.g., WordPress 5.9 → CVE-2022-21661).
- Added screenshots and command outputs to validate findings.

---

## 🧾 Lab Methodology


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

Active reconnaissance is the **bridge between passive info gathering and exploitation**:
- It reveals **live systems and attack surfaces** that aren’t publicly indexed.
- It teaches **tool selection, command syntax, and result validation**.
- It builds **confidence in interacting with real systems** — ethically and legally.
- It prepares you for **real-world engagements** where stealth and accuracy matter.

Completing this phase thoroughly demonstrates technical proficiency, attention to detail, and methodical thinking — essential traits for any junior pentester or security analyst.

---

## 🔗 Related Projects
- **[Network Scanning Toolkit](../../12.%20Projects/Network_Scanning_Toolkit.md)**: Python-based automation for Nmap scans.
- **[Web Recon Automation](../../12.%20Projects/Web_Recon_Automation.md)**: Scripts to automate subdomain and tech discovery.

---

## 📬 Feedback Welcome!
If you’re reviewing this portfolio and have suggestions, collaboration ideas, or opportunities — I’d love to connect!

- 💼 [LinkedIn](https://www.linkedin.com/in/nin-kanong/)  
- 📧 ninkanong200620@gmail.com  
- 🐱 [GitHub Profile](https://github.com/Nin-Kanong)

> 💡 *“Active reconnaissance turns data into actionable intelligence — it’s where theory meets practice.”*
