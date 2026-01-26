<h1 align="center"> 🕵️‍♂️ Passive Reconnaissance (Footprinting) – Lab Series </h1>


> *This folder documents my fully completed and professionally documented passive reconnaissance labs — the foundational phase of ethical hacking where intelligence is gathered without directly interacting with the target system.*

---

## 🗂️ Folder Structure
````
Passive Reconnaissance (Footprinting)/
├── 1. Domain & WHOIS Information Gathering/
│ ├── 1.WHOIS_Lookup.md
│ └── 2.ViewDNS_URLScan_VirusTotal.md
|
├── 2. Email & Username Enumeration/
│ ├── 1.TheHarvester.md
│ ├── 2.holehe.md
│ ├── 3.Sherlock.md
│ └── 4.Maigret.md
|
├── 3. OSINT Frameworks/
│ ├── 1.Maltego.md
│ ├── 2.Recon-ng.md
│ ├── 3.Spiderfoot.md
│ └── 4.Google_Dorking.md
|
├── 4. Search Engines for Devices & Services/
│ ├── 1.Shodan.md
│ └── 2.Censys.md
|
└── 5. Metadata & File Analysis/
  ├── 1.Exiftool.md
````




---

## Labs Overview

### 1. Domain & WHOIS Information Gathering
- Extracted domain registration details using `whois`, `dig`, and online services like ViewDNS.info.
- Validated findings with VirusTotal to check for malicious history.
- Mapped IP ranges, DNS records, and contact info for target domains.

### 2. Email & Username Enumeration
- Used `theHarvester` to gather emails from public sources.
- Leveraged `holehe`, `Sherlock`, and `Maigret` to find social media accounts linked to usernames.
- Demonstrated how attackers can build attack surfaces using publicly available data.

### 3. OSINT Frameworks
- Built automated intelligence maps using **Maltego** (graphical analysis).
- Automated data collection with **Recon-ng** modules.
- Used **SpiderFoot** for multi-source OSINT aggregation.
- Mastered **Google Dorking** techniques to discover exposed files, directories, and devices.

### 4. Search Engines for Devices & Services
- Discovered exposed cameras, routers, servers, and IoT devices via **Shodan** and **Censys**.
- Learned to filter results by location, service type, and vulnerability status.
- Documented real-world examples of misconfigured systems.

### 5. Metadata & File Analysis
- Extracted hidden metadata from images, PDFs, and documents using `exiftool`.
- Analyzed file contents with `strings`, `binwalk`, and `file` commands.
- Showcased how metadata leaks can reveal sensitive information (e.g., GPS coordinates, author names, software versions).

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

Passive reconnaissance is the **silent foundation** of any successful security assessment:
- It enables **targeted, efficient attacks** (or defenses).
- It reveals **attack surface** often overlooked by defenders.
- It teaches **ethical boundaries** — knowing what’s public vs. private.
- It builds **critical thinking** before a single exploit is run.

Completing this phase thoroughly demonstrates discipline, curiosity, and professionalism — essential traits for any cybersecurity role.

---

## 🔗 Related Projects
- **[Web Recon Automation](../../12.%20Projects/Web_Recon_Automation.md)**: Python scripts to automate subdomain and tech discovery.
- **[Network Scanning Toolkit](../../12.%20Projects/Network_Scanning_Toolkit.md)**: Custom Nmap wrapper for rapid host enumeration.

---

## 📬 Feedback Welcome!
If you’re reviewing this portfolio and have suggestions, collaboration ideas, or opportunities — I’d love to connect!

- 💼 [LinkedIn](https://www.linkedin.com/in/nin-kanong/)  
- 📧 ninkanong200620@gmail.com  
- 🐱 [GitHub Profile](https://github.com/Nin-Kanong)

> 💡 *“The best way to defend a system is to think like the attacker — and that starts with passive reconnaissance.”*
