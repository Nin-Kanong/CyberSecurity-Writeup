<h1 align="center"> Lab: Reflected XSS into a template literal with angle brackets, single, double quotes, backslash and backticks Unicode-escaped </h1>

<img width="1050" height="528" alt="image" src="https://github.com/user-attachments/assets/eae3c7e0-47ef-4c02-bc13-c1ae59ceefdf" />


## Lab URL: https://portswigger.net/web-security/cross-site-scripting/contexts/lab-javascript-template-literal-angle-brackets-single-double-quotes-backslash-backticks-escaped



## Lab Solution:
This lab contains a reflected cross-site scripting vulnerability in the search blog functionality. The reflection occurs inside a template string with angle brackets, single, and double quotes HTML encoded, and backticks escaped. To solve this lab, perform a cross-site scripting attack that calls the alert function inside the template string. 



# Start Lab:
<img width="1050" height="528" alt="image" src="https://github.com/user-attachments/assets/eae3c7e0-47ef-4c02-bc13-c1ae59ceefdf" />

- Access the Lab:
<img width="1050" height="953" alt="image" src="https://github.com/user-attachments/assets/cdd0eb62-6450-495a-9bdb-0416917d5978" />


## Use with Inspect
- After access the Lab I input something like:
````
<>'''`
````
<img width="1050" height="792" alt="image" src="https://github.com/user-attachments/assets/ae2691c4-6d1f-4966-adb0-a90c09c81fc8" />


<img width="1050" height="328" alt="image" src="https://github.com/user-attachments/assets/8269a2c5-2c99-4899-9f85-20351f83a2e5" />

- After `Right-click` -> `Inspect`:
<img width="1050" height="656" alt="image" src="https://github.com/user-attachments/assets/62e35728-e9da-479c-aee4-363246241f3f" />

- Now we found what that we was input:
<img width="1050" height="892" alt="image" src="https://github.com/user-attachments/assets/d085f272-feab-482c-a86e-a3031be64be1" />


#### Explain about this:
- `var message = ...`:
  - This - creates a variable called message.
  - The value is a string:
````
0 search results for 'hello'
````
  - The backticks (`) are JavaScript template literals. They allow you to embed variables or expressions inside with ${...}, though here it’s just plain text.

- `document.getElementById('searchMessage')`:
  - This looks in the HTML document for an element with the ID `searchMessage`.
  - Example HTML might look like:
````
<div id="searchMessage"></div>
````

- `.innerText = message;`:
  - This sets the visible text content of that element to whatever is stored in `message`.
  - In this case, the `<div>` would display:
````
0 search results for 'hello'
````

- This code simply displays a message inside an element with ID `searchMessage`. It’s safe and straightforward because it uses `.innerText`.



- If I input something like:
````
hello
````
<img width="743" height="316" alt="image" src="https://github.com/user-attachments/assets/c8ce9c51-2d23-423b-a4cd-c59f64a5193c" />

- After back to our `Inspect` -> and search what that we was input `hello`:
<img width="1922" height="778" alt="image" src="https://github.com/user-attachments/assets/ba22dd86-1e3d-4e45-9f27-e869c30b0602" />


#### Explain about this script:
- `var message = ...`:
  - Creates a variable called message.
  - Stores the string:
````
0 search results for 'hello'
````
  - The backticks (`) are template literals in JavaScript. They allow embedding variables or expressions with ${...}, but here it’s just plain text.


- `document.getElementById('searchMessage')`:
  - Finds the HTML element with the ID searchMessage.
  - Example:
````
<div id="searchMessage"></div>
````
 
- `.innerText = message;`:
  - Sets the visible text inside that element to the value of `message`.
  - The result on the page would be:
````
0 search results for 'hello'
````



- After I input something like:
````
${8*8}
````
<img width="721" height="305" alt="image" src="https://github.com/user-attachments/assets/40d45ac4-bb32-4971-83ec-09731f1267fd" />

<img width="733" height="312" alt="image" src="https://github.com/user-attachments/assets/98998c0f-c189-467b-950d-85f6cf916ad6" />

- After go to `Ispect`:
<img width="1531" height="742" alt="image" src="https://github.com/user-attachments/assets/e8b87d97-75d4-4a78-96e9-2465c13c4a56" />

#### What this code do:
- Expression `${8*8}` is evaluated safely in JavaScript
  - This is template literal interpolation in JavaScript.
  - `8*8` is a static arithmetic expression, evaluated at runtime to `64`.
  - The resulting string become:
````
"0 search results for '64'"
````


- Now we can use `Payload`:
````
${alert()}
````
<img width="742" height="305" alt="image" src="https://github.com/user-attachments/assets/2b99e862-51fa-4d28-8402-e3db467e3e5f" />

<img width="690" height="522" alt="image" src="https://github.com/user-attachments/assets/862acb67-5a28-471c-be0c-ae330ed4dd58" />

<img width="1183" height="405" alt="image" src="https://github.com/user-attachments/assets/6361f5f3-0e9e-462a-b7df-c0c4c7fefd14" />


- Now we got success to solve this lab.

---

<h2 align="center"> Finished Of Reflected XSS into a template literal </h2>


<h2> Credit By: Nin Kanong (k4n0ng) </h2>


<h3 align="center"> Date: 18/12/2025 </h3>
