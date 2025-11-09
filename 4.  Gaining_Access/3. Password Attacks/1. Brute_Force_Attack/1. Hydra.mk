# Hydra Brute Force Attack



## What is a Brute Force Attack?
A brute force attack is a hacking method where an attacker tries every possible combination of passwords until the correct one is found.



## What is Hydra?
Hydra (or THC-Hydra) is one of the most popular password-cracking tools used in penetration testing.

### Supported Services:
 - SSH
 - FTP
 - Telnet
 - HTTP (web logins)
 - SMB
 - RDP
 - MySQL
 - And many more



## How Does Hydra Work?
Hydra works by:
- Connecting to a service (like SSH or a login page)
- Trying each username/password from a list
- Checking if the login succeeds
- Reporting the correct credentials when found




# Hydra Methodology


##  Installation & Setup

### Installation in Linux
```
sudo apt install hydra
```


- Or Compile from Source
````
git clone https://github.com/vanhauser-thc/thc-hydra
cd thc-hydra
./configure
make
sudo make install
````
















































