<h1 align="center"> Lab: Reflected DOM XSS </h1>

<img width="1000" height="600" alt="image" src="https://github.com/user-attachments/assets/52c554b6-032d-4f94-9960-c4ea1cb8c2e5" />


## Requirements:
- This lab demonstrates a reflected DOM vulnerability. Reflected DOM vulnerabilities occur when the server-side application processes data from a request and echoes the data in the response. A script on the page then processes the reflected data in an unsafe way, ultimately writing it to a dangerous sink.

- To solve this lab, create an injection that calls the `alert()` function. 




## Start Lab:
<img width="1000" height="600" alt="image" src="https://github.com/user-attachments/assets/52c554b6-032d-4f94-9960-c4ea1cb8c2e5" />

- Access the Lab:
<img width="973" height="928" alt="image" src="https://github.com/user-attachments/assets/0db9af3a-17f1-4660-badd-36c6a8cb2657" />


- In this i test it with my `Burp Suite` -> After open our `Burp`:
<img width="1918" height="887" alt="image" src="https://github.com/user-attachments/assets/7a0dc2d3-54ba-4ec4-bd5d-6306c2fcdfdb" />

- Past our target link:
<img width="1890" height="830" alt="image" src="https://github.com/user-attachments/assets/3a114b97-36b2-46c2-9004-1531092a1c80" />

- after go back to our `BURP`:
<img width="1919" height="924" alt="image" src="https://github.com/user-attachments/assets/8f295337-63b7-442d-9a83-b8d7de120b6f" />


- Ater back to our `Browser` and type this:
<img width="987" height="611" alt="image" src="https://github.com/user-attachments/assets/b1c624a1-545d-408b-86a6-54c27559645d" />

-  after back tp our `Burp`:
<img width="1918" height="825" alt="image" src="https://github.com/user-attachments/assets/b85a3e4c-bd7c-4c0f-906c-12a4ce1e75e9" />



- An dthen if we want to see Javascript source code:
<img width="928" height="506" alt="image" src="https://github.com/user-attachments/assets/59ba57b7-8644-4c77-a223-2ae380ad4753" />

<img width="1918" height="708" alt="image" src="https://github.com/user-attachments/assets/e96c878f-91fe-4079-bf13-225fb32a3a58" />

<img width="1922" height="780" alt="image" src="https://github.com/user-attachments/assets/aeb301a2-4ca0-4291-ab78-19602635827c" />

- After `Double-click` on `searchResults.js`:
<img width="1106" height="1079" alt="image" src="https://github.com/user-attachments/assets/d9d914f1-ba09-42b6-9063-ad75efe9bc59" />



---
### In this we see vulnerable code:

1.  Use of `eval()` with Server Response (Critical Vulnerability):
````
eval('var searchResultsObj = ' + this.responseText);
````
- In this if i go to browser and type this:
<img width="1428" height="866" alt="image" src="https://github.com/user-attachments/assets/adeb27e5-57ed-413c-9533-4fba8213bc8b" />

They recommand that we shouldn't use `eval()`.

- Why it dangerous:
`eval()` executes arbitrary JavaScript code. If the server response (`this.responseText`) is not strictly controlled or can be manipulated by an attacker, this leads to client-side Remote Code Execution (RCE) or Stored/Reflected XSS.

- Attack Scenario:
IF an attacker can:
  -  Poison the response from the endpoint used in `xhr.open("GET", path + window.location.search)`, or
  -  Trick the user into visiting a malicious URL that causes the app to fetch attacker-controlled JSON (e.g., via DNS rebinding, SSRF, or if the `path` is user-controllable),
  - They can use inject javascript like:
````
{"searchTerm":"test"}; alert(document.cookie); //
````
  - When passed to eval(), it becomes:
````
var searchResultsObj = {"searchTerm":"test"}; alert(document.cookie); //
````
Arbitrary code execution in the victim's browser.


- Fix:
Replace `eval()` with `JSON.parse()`:
````
var searchResultsObj = JSON.parse(this.responseText);
````

2. DOM-based XSS in dynamic content insertion
Even after fixing `eval()`, the code inserts user-controlled data into the DOM using `.innerText` and `.innerHTML`.

- While .innerText is generally safe (it doesn’t parse HTML), note this line:
````
blogList.innerHTML += "<br/>";
````
  - Although `<br/>` is static, if any part of the loop used `.innerHTML` with attacker-controlled content (e.g., `searchResult.title` or `summary`), it would be vulnerable.
  - In your code, you use `.innerText` for `title` and `summary`, which mitigates XSS there — good.
But caution: if the server returns malicious strings that are later inserted via `.innerHTML` elsewhere (or if this code evolves), it becomes risky.



3. Open redirection / SSRF risk (indirect)
- The path parameter is passed into the XHR URL:
````
xhr.open("GET", path + window.location.search);
````
- If path is derived from user input (e.g., URL parameters, DOM), an attacker might control the fetch destination.
- This could lead to:
  - Server-Side Request Forgery (SSRF) if the backend proxies this request,
  - Leakage of local files if the client can be tricked into fetching file:// URLs (unlikely in modern browsers),
  - Or bypassing CORS in edge cases.

---


- After go back to our `Burp`:
<img width="1919" height="846" alt="image" src="https://github.com/user-attachments/assets/92a318c6-8e9a-4b40-bfe3-c37e4175fedf" />

- `Right-Click` on it and after select `Send to Repeater`:
<img width="1491" height="1043" alt="image" src="https://github.com/user-attachments/assets/09101950-56de-4fa7-82b1-f0de65a2e1b3" />

- After go to `Repeater`: 
<img width="1493" height="632" alt="image" src="https://github.com/user-attachments/assets/1dcf3bd2-ced2-497b-abd7-9ccc0bd0759b" />

- After click on `Send` -> after we will see the `Response`:
<img width="1493" height="677" alt="image" src="https://github.com/user-attachments/assets/fa2ba2c6-18b6-467c-a4b0-595a89e5136f" />

- After i change the search from `test123` -> `test123"`:
<img width="1490" height="602" alt="image" src="https://github.com/user-attachments/assets/600ed66a-eef6-49e0-9351-3fa2828f9a1b" />

- Now we see this, and in this it so interest `\`:
<img width="1488" height="437" alt="image" src="https://github.com/user-attachments/assets/89a4ce65-1b29-4193-8a9b-664bd9411850" />


- Or if i want to see `searcresult.js` file, in this i back to `Target`:
<img width="1920" height="748" alt="image" src="https://github.com/user-attachments/assets/45166f29-019f-4984-8f66-10de0a7c9f24" />

- After i click on it:
<img width="1918" height="965" alt="image" src="https://github.com/user-attachments/assets/b6b80a40-98dc-417c-85fb-09ab07607fc8" />

- In this if i find eval `eval`:
<img width="1528" height="722" alt="image" src="https://github.com/user-attachments/assets/3abbab65-8129-41db-940b-293abcdc38b0" />

- **This allows arbitrary JavaScript execution if an attacker can control the response from the endpoint called via xhr.open("GET", path + window.location.search).**

#### Understand the Expected Response
- The code expects JSON like:
````
{"searchTerm":"test","results":[]}
````
- But `eval()` executes any valid JavaScript, not just JSON.

- So if the server returns:
````
{"searchTerm":"x"}; alert(1); //
````
- It becomes:
````
var searchResultsObj = {"searchTerm":"x"}; alert(1); //
````
`alert(1)` executes!



- After in this i can try to exploit it:
````
\"-alert(1)}//
````
<img width="917" height="390" alt="image" src="https://github.com/user-attachments/assets/06b5489e-ea5b-4950-8970-e604668e616b" />

<img width="990" height="419" alt="image" src="https://github.com/user-attachments/assets/4cb09f9e-3dc1-4e1b-8b83-a1dcba8ab11c" />

- Now we got success to inject payload.

- If i want another payload:
````
test123\"&alert()}//
````
<img width="926" height="368" alt="image" src="https://github.com/user-attachments/assets/c7100c36-3041-4f9a-90c7-d4904cfcfc0a" />

<img width="920" height="432" alt="image" src="https://github.com/user-attachments/assets/679a5c6a-c7e4-4cf3-bfd2-2d533669f29c" />

- Now i got success.


----

<h2 align="center"> Finished Lab 12 Reflected DOM XSS  </h2>


<h2 align="center"> Author: Nin Kanong (k4n0ng) </h2>
