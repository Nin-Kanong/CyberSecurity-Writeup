# Cross-site scripting(XSS)


### What is cross-site scripting (XSS)?
Cross-site scripting (XSS) is a web security vulnerability that allows an attacker to compromise user interactions with a vulnerable web application.

### How does it work?
XSS works by injecting `malicious JavaScript` into a vulnerable website. When the victim loads the page, their `browser executes the attacker’s code`. This lets the attacker fully control the victim’s interaction with the application.


### XSS proof of concept
To confirm XSS vulnerabilities, inject a JavaScript payload in your browser. Commonly:
- `alert()` is used for its simplicity and visibility. Since Chrome v92 (July 20, 2021).
- `alert()` is blocked in cross-origin iframes, used in advanced XSS attacks.
- `print()` as an alternative PoC payload. Labs are updated to accept print(), with instructions provided.


### What are the types of XSS attacks?
- `Reflected XSS` : Malicious script in HTTP request (e.g., URL) executes in browser via server response.
- `Stored XSS` : Malicious script stored in website’s database, runs when users visit the page.
- `DOM-based XSS` : Malicious script exploits client-side code, manipulating the DOM directly.


### Reflected cross-site scripting
Reflected XSS happens when an app includes unsanitized HTTP request data (e.g., URL parameters) in its response, executing malicious scripts in the user’s browser.
##### Normal URL:
- URL: ````https://insecure-website.com/status?message=All+is+well.````
- Output: ````<p>Status: All is well.</p>````

##### Malicious URL:
- Malicious URL: ````https://insecure-website.com/status?message=<script>/*+Bad+stuff+here...+*/</script>````
- Output: ````<p>Status: <script>/* Bad stuff here... */</script>````

If a user visits the malicious URL, the attacker’s script runs in their browser within their session, enabling actions like data theft or unauthorized operations.


### Stored cros-site scripting
- Stored XSS (persistent/second-order XSS) occurs when an application stores data from an untrusted source and includes it in later HTTP responses without sanitization, allowing malicious scripts to execute in users’ browsers.
- User-submitted data or external sources (e.g., SMTP emails, social media posts, network packet data).

- Normal Submits: ````<p>Hello, this is my message!</p>```` , In this displayed as-is
- Malicious Submits: ````<p><script>/* Bad stuff here... */</script></p>````, In this stored and displayed to all users.

The malicious script runs in the browsers of all users who view the affected content, enabling attackers to steal data, manipulate pages, or act as the user within their session.


### DOM-Based XSS 
- DOM-based XSS occurs when client-side JavaScript processes data from an untrusted source (e.g., user input) unsafely, typically by writing it to the DOM, allowing malicious scripts to execute in the user’s browser.

- an application uses some JavaScript to read the value from an input field and write that value to an element within the HTML:
````
var search = document.getElementById('search').value;
var results = document.getElementById('results');
results.innerHTML = 'You searched for: ' + search;
````
- Normal User input: hello -> Ouput: You search for: hello
- Mallicious Attacker input: ````<img src=1 onerror='/* Bad stuff here... */'>````, via URL -> Output: Executes the mallicious script.
- The script runs in the user’s browser within their session, enabling attackers to steal data, manipulate the page, or perform actions as the user. Unlike reflected/stored XSS, the vulnerability lies entirely in client-side code, not server responses.


### What can XSS be used for?

- Pretend to be you: They can act like you on the website.
- Do what you can do: If you can post, delete, or buy something, they can too.
- See what you see: They can read your messages, files, or private info.
- Steal your password: They can grab your login details.
- Change how the site looks: They can make the site look hacked or defaced.
- Add bad code: They can put malware or trojan code into the site.


### Impact of XSS Vulnerabilities

The effect of an XSS attack depends on what kind of website/app it is and who gets hacked:
- Simple public site (brochureware)
   - Everyone is anonymous
   - All info is public
   - Impact: Low / Minimal
- Sensitive app (banking, email, healthcare, etc.)
   - Holds private or personal data
   - Impact: Serious (data theft, fraud, privacy leaks)
- Admin or privileged user compromised
   - Attacker gains admin powers
   - Can control the whole site & all users
   - Impact: Critical (full takeover, mass compromise)


### Content Security Policy (CSP)

- What it is: A browser security feature that helps reduce the risk of XSS and some other attacks.

- How it works: It controls what content (scripts, images, styles, etc.) the browser is allowed to load and run.

- Effect: If a site has an XSS bug, CSP may block or limit the attack.

- Limitations:
   -  CSP is not perfect
   -  Hackers can sometimes bypass CSP and still exploit the vulnerability



### Dangling Markup Injection

- What it is: A trick to steal data across domains when full XSS is blocked (like by filters or defenses).
- How it works:
   - Exploits small HTML/markup flaws instead of full XSS.
   - Can access sensitive info visible to users, like CSRF tokens.
- Why it’s dangerous:
   - CSRF tokens can be used to perform actions as the user without their permission.
   - Even if XSS is blocked, attackers can still extract important data.



### How to Prevent XSS Attacks

- Filter input (on arrival)
    - Check and allow only valid input from users.
    - Block anything unexpected.

- Encode data (on output)
    - Convert user data before displaying it so it can’t run as code.
    - Use HTML, URL, JavaScript, or CSS encoding depending on where it’s used.

- Set proper HTTP headers
    - Use Content-Type and X-Content-Type-Options to make sure browsers interpret data correctly.
    - Prevents the browser from executing unexpected code.

- Use Content Security Policy (CSP)
     - Acts as a last line of defense.
     - Limits what scripts or content the browser will run.


### Common Questions About XSS

1. How common are XSS vulnerabilities?
   - Very common – probably the most frequent web security issue.

2. How common are XSS attacks?
   - Hard to measure in real life, but less often exploited than some other vulnerabilities.

3. XSS vs CSRF:
   - XSS: injects malicious JavaScript into a website.
   - CSRF: tricks a user into performing actions they didn’t intend.

4. XSS vs SQL Injection:
   - XSS: client-side, targets other users.
   - SQLi: server-side, targets the database.

5. Preventing XSS in PHP:
   - Filter inputs using a whitelist
   - Use type hints/casting
   - Escape outputs:
      - htmlentities + ENT_QUOTES for HTML
      - JavaScript Unicode escapes for JS

6. Preventing XSS in Java:
   - Filter inputs with a whitelist
   - Use libraries (e.g., Google Guava) to HTML-encode outputs
   - Use JavaScript Unicode escapes for JS contexts



----
====>> End OF XSS


----



----
### Practice in LAB BY: Nin Kanong (k4n0ng)
---


#### Date: 8/Sept/2025

-----
