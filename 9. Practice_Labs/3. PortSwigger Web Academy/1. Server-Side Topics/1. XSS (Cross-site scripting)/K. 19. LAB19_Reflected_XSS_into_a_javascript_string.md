<h1 align="center"> Lab: Reflected XSS into a JavaScript string with angle brackets and double quotes HTML-encoded and single quotes escaped </h1>

<img width="1050" height="555" alt="image" src="https://github.com/user-attachments/assets/ab4ef781-83bf-46ea-a289-4c535004f51c" />

## Lab URL: https://portswigger.net/web-security/cross-site-scripting/contexts/lab-javascript-string-angle-brackets-double-quotes-encoded-single-quotes-escaped


## Lab solution:
This lab contains a reflected cross-site scripting vulnerability in the search query tracking functionality where angle brackets and double are HTML encoded and single quotes are escaped.

To solve this lab, perform a cross-site scripting attack that breaks out of the JavaScript string and calls the `alert` function. 



# Start Lab:
<img width="1050" height="555" alt="image" src="https://github.com/user-attachments/assets/ab4ef781-83bf-46ea-a289-4c535004f51c" />


- Access the lab:
<img width="984" height="783" alt="image" src="https://github.com/user-attachments/assets/28bca39b-800e-4dcc-9943-f0104808012d" />


## Used with Burp Suite:
- Open our `Burp` -> after Open `Burp Browser` -> or we can open this in `FireFox`:
<img width="1921" height="910" alt="image" src="https://github.com/user-attachments/assets/e606f4bd-e68f-4ba6-b1ce-85489738557d" />

- Open in FireFox:
<img width="1621" height="548" alt="image" src="https://github.com/user-attachments/assets/820b2601-b7c7-4860-8cce-818724f9f31d" />

- But in this I use with `Burp Browser` -> And then `Past` target URL:
<img width="1682" height="356" alt="image" src="https://github.com/user-attachments/assets/e4b2b93e-2374-4186-abd8-4adabc3cfc0c" />


- After I input something like:
````
Hello
````
<img width="949" height="382" alt="image" src="https://github.com/user-attachments/assets/dc4d8d53-900f-4ede-b817-79d99e8fa6bb" />

- But we has nothing alert:
<img width="952" height="415" alt="image" src="https://github.com/user-attachments/assets/74b2d557-f393-4fdf-94a5-6f8023afc2ce" />


- After back to our `Burp` -> `HTTP history`:
<img width="1919" height="1013" alt="image" src="https://github.com/user-attachments/assets/8896f4cb-aef2-44aa-8748-6d4428fadd69" />

- And in this I want to search what that I was input `Hello`:
<img width="1916" height="790" alt="image" src="https://github.com/user-attachments/assets/96ac10cb-e29b-4947-bb4e-7e5cd3b6e405" />

### Now we see this have vulnerable to reflected XSS:
#### Explain:
The Application:
- Takes user input from the `search` parameter (e.g., `?search=Hello`)
- Directly embeds it inside a JavaScript string literal without proper escaping
````
var searchTerms = 'Hello';
````
IF an attacker submits:
````
?search=Hello';alert(1);//
````
The resulting JavaScript becomes:
````
var searchTerms = 'Hello';alert(1);//';
````
This:
- Terminates the string with `'`
- Injects and executes `alert(1)`
- Comments out the rest with `//` to avoid syntax errors
Arbitrary JavaScript execution = Reflected XSS


- And Why `encodeURIComponent()` Doesn't Help
  - `encodeURIComponent()` is only applied inside the `<img>` URL, after the JavaScript variable is created.
  - It does not protect against breaking out of the `'...'` string in JavaScript.
  - The vulnerability happens before that line — at the point of string interpolation.


#### Or now we can input payload:
- In this first we need t send it to `Repeater` -> `Right-Click` -> select `Send to repeater`:
<img width="1917" height="956" alt="image" src="https://github.com/user-attachments/assets/76a20faa-1c91-48c9-8cc3-62355cbbea1a" />

- And then If I input add:
````
\payload
````
<img width="1881" height="855" alt="image" src="https://github.com/user-attachments/assets/95ca3e95-1926-4ac7-b7f9-337b50569a1b" />

- Now we can craft `Payload`:
````
\'-alert(1)//
````
<img width="1878" height="850" alt="image" src="https://github.com/user-attachments/assets/c70caae5-bc2c-40e4-8f4a-28a1bb5fe8bb" />

- After go to target `Browser`:
<img width="1905" height="866" alt="image" src="https://github.com/user-attachments/assets/7170eb1e-1831-44e4-afdd-030c7fdf2b52" />

- Now we got successful, but it not show alert so i want to input payload again:
<img width="958" height="326" alt="image" src="https://github.com/user-attachments/assets/6232e3bf-0b46-4c12-b829-96461f78711a" />

- Now we see alert.
<img width="1528" height="394" alt="image" src="https://github.com/user-attachments/assets/c540973a-3c6b-4209-8b88-ea24361dab30" />


- Now we got successful to solve this lab.

---



<h2 align="center"> Finished of HTML-encoded angle brackets, double quotes, and escaped single quotes </h2>


<h2 align="center"> Author: Nin Kanong (k4n0ng) </h2>

<h3 align="center"> Date: 15/12/2025 </h3>
