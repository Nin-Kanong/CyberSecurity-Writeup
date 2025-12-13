<h1> Lab: Reflected XSS into a JavaScript string with single quote and backslash escaped </h1>

<img width="1000" height="491" alt="image" src="https://github.com/user-attachments/assets/93bdab34-230f-402e-b52c-1b53b7880eaa" />


## Lab URL: https://portswigger.net/web-security/cross-site-scripting/contexts/lab-javascript-string-single-quote-backslash-escaped



## Lab Solution:
This lab contains a reflected cross-site scripting vulnerability in the search query tracking functionality. The reflection occurs inside a JavaScript string with single quotes and backslashes escaped.

To solve this lab, perform a cross-site scripting attack that breaks out of the JavaScript string and calls the `alert` function. 



# Start Lab:
<img width="1000" height="491" alt="image" src="https://github.com/user-attachments/assets/93bdab34-230f-402e-b52c-1b53b7880eaa" />


- Access the Lab:
<img width="1144" height="949" alt="image" src="https://github.com/user-attachments/assets/a70153c4-1ea6-443b-b65d-c1ea1c07eec1" />

- In this we can use `Burp Suite` to solve this Lab -> after open `Burp` -> Open `Burp Browser`:
<img width="1921" height="852" alt="image" src="https://github.com/user-attachments/assets/9cd2b2a0-0068-463e-b098-1b77dd5fea8d" />

- After I `PAst` the target URL in this: https://0aeb00c903e747f380b1261e009500ac.web-security-academy.net/
<img width="1688" height="344" alt="image" src="https://github.com/user-attachments/assets/a0fda9d9-dac8-4b1b-8520-dacf08c9fa28" />

- And then I input something like:
````
abc123
````
<img width="928" height="563" alt="image" src="https://github.com/user-attachments/assets/2f121163-5e54-4cc3-baaa-2bcfe03931bf" />

- Now we see this:
<img width="941" height="402" alt="image" src="https://github.com/user-attachments/assets/f4b96f06-12a0-4d35-84cd-dadd71a0c7a9" />


- And After go to our `Burp` -> `HTTP history`:
<img width="1920" height="1040" alt="image" src="https://github.com/user-attachments/assets/3a5e79a8-f151-4317-9dbe-91b5664e6b42" />

- And then in `Response` -> find our what input `abc123`:
<img width="1918" height="800" alt="image" src="https://github.com/user-attachments/assets/232ec611-1996-48eb-8465-79b8f840eee2" />

- Now we see our what we input. And why in this have vulnerability:
````
<script>
    var searchTerms = 'abc123';
    document.write('<img src="/resources/images/tracker.gif?searchTerms='+encodeURIComponent(searchTerms)+'">');
</script>
````
- The value `abc123` comes from the user’s search input (e.g., `?search=abc123`).
- It’s directly embedded into a JavaScript string literal inside a `<script>` block.
- Then it’s used in `document.write()` to create an <img> tag.

- The Vulnerability: Reflected XSS via JavaScript Context Injection
Even though `encodeURIComponent()` is used in the URL of the image, the real danger is earlier: the `searchTerms` variable is unsafely inserted into JavaScript code.

- The vulnerable code:
  - The application reflects user input (e.g., from a search parameter) directly into the HTML page without proper sanitization.
  - It blocks most common XSS vectors (like `<img onerror=...>` or `<script>`), returning a `400 Bad Request` for them.
  - However, it insecurely allows certain SVG-related tags:
`<svg>`, `<animatetransform>`, `<title>`, `<image>`
  - Among event attributes, only `onbegin` (on `<animatetransform>`) is allowed and not blocked.
  - Since `<animatetransform onbegin=...>` can execute JavaScript when the SVG animation starts (immediately upon parsing), an attacker can bypass the filter and trigger XSS.



- After send it to repeater -> `Right-Click` -> `Send to Repeater` -> go to `Repeater`:
<img width="1881" height="955" alt="image" src="https://github.com/user-attachments/assets/f340549c-58a9-4e9e-b1ff-5a2c2b2cb3eb" />

- And in `Repeater`:
<img width="1495" height="712" alt="image" src="https://github.com/user-attachments/assets/0a22701e-66ea-4945-a75a-cf443031b9c1" />

- After I add more in `abc123` to `abc123'payload`
<img width="1876" height="853" alt="image" src="https://github.com/user-attachments/assets/7601a40a-e197-465d-b784-e3d3f5b31327" />

- After find our `payload` that we was input:
<img width="1878" height="857" alt="image" src="https://github.com/user-attachments/assets/649782cf-feeb-4e15-be7a-c17ce6aa133e" />

- Vulnerable in this:
  - User input (`abc123'payload`) is directly embedded inside a JavaScript string literal without proper escaping.
  - The single quote (`'`) in the input breaks out of the JavaScript string:
````
var searchTerms = 'abc123'payload';
//                 ^^^^^^^^^^ breaks here → syntax error or code injection
````

- Now we can input `payload`:
````
</script><script>alert()</script>
````
<img width="943" height="393" alt="image" src="https://github.com/user-attachments/assets/1a0c9a7b-4eb4-4498-8cdd-3cf2dc5cb213" />

- Now we got successful to input `payload`:
<img width="1528" height="384" alt="image" src="https://github.com/user-attachments/assets/2f804172-785f-484c-8ebc-ac48376f3631" />

<img width="1918" height="743" alt="image" src="https://github.com/user-attachments/assets/54428908-44c7-464d-8e80-50b5101403e4" />


- Now we solve this Lab.

---


<h2 align="center"> Finished OF Reflected XSS into a JavaScript string with single quote and backslash escaped  </h1>

<h2 align="center"> Author: Nin KAnong (k4n0ng) </h2>

<h3 align="center"> Date: 13/12/2025 </h3>
