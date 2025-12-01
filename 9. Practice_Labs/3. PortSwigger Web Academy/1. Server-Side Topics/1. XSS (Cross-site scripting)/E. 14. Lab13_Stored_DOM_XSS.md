<h1 align="center"> Lab: Stored DOM XSS </h1>

<img width="1003" height="433" alt="image" src="https://github.com/user-attachments/assets/2783a028-0427-4aae-a98b-241659054f5a" />


## Lab Requirement:
This lab demonstrates a stored DOM vulnerability in the blog comment functionality. To solve this lab, exploit this vulnerability to call the alert() function. 




# Start Lab:
<img width="803" height="433" alt="image" src="https://github.com/user-attachments/assets/d360630f-f966-478b-8b80-42ed96ded4f0" />

- Access the Lab:
<img width="1003" height="867" alt="image" src="https://github.com/user-attachments/assets/0ba6b889-ae51-46b9-b6a0-f012ad086fd3" />


- Also in this i used with my `Burp Suite` -> Open our `Burp` -> open `Burp Browser`:
<img width="1918" height="905" alt="image" src="https://github.com/user-attachments/assets/c04aad25-6a5c-4497-8baa-93f456290850" />

- After past our target URL to `Burp Browser`:
<img width="1918" height="937" alt="image" src="https://github.com/user-attachments/assets/6eb766c3-64bb-4317-bb58-f6c25ed9647a" />

- After i want to view post so scroll down and click on `View post`:
<img width="788" height="877" alt="image" src="https://github.com/user-attachments/assets/02cfec89-8ec8-4c48-a196-adfab18f994c" />

- After go back to our `Burp`:
<img width="1919" height="957" alt="image" src="https://github.com/user-attachments/assets/ee2b597b-818c-4831-968a-0a217d777a8e" />

- After i want to find any javascript code:
<img width="746" height="717" alt="image" src="https://github.com/user-attachments/assets/61e8a77b-da6a-44ee-bf23-33493fdfe2a1" />

- Or we can view it in browser -> `Right-Click` -> `Inspect` or press `f12`:
<img width="718" height="807" alt="image" src="https://github.com/user-attachments/assets/50fd4829-49d0-44ad-a5d4-d3835a74e9d7" />

- We see it the same in `Burp`:
<img width="1863" height="637" alt="image" src="https://github.com/user-attachments/assets/b22fcce4-965b-4292-9380-75a04758ddc4" />

<img width="1858" height="508" alt="image" src="https://github.com/user-attachments/assets/9a27fa72-d4da-4f2d-af90-9d81aaf4a7e6" />

<img width="1856" height="656" alt="image" src="https://github.com/user-attachments/assets/12e45fd0-86b8-4c0a-b8cc-0cf8078d0fcb" />

- IF we want to view this javascript -> `Double-click`:
<img width="1255" height="1015" alt="image" src="https://github.com/user-attachments/assets/71bfe097-d08e-40a4-9924-1af2033146e2" />

- Now we see javascript code.
- The Critical Flaw: Incomplete HTML Escaping
````
function escapeHTML(html) {
    return html.replace('<', '&lt;').replace('>', '&gt;');
}
````
- Problem:
  - `.replace()` only replaces the first occurrence of `<` and `>`.
  - It does NOT use a global regex, so:
````
escapeHTML("<script>alert(1)</script>")
// Returns: "&lt;script>alert(1)</script>"
//                    ↑↑↑ still has </script> → DANGEROUS!
````
- But even worse — `comment.body` is inserted via `.innerHTML`:
````
commentBodyPElement.innerHTML = escapeHTML(comment.body);
````
- So if a comment body is:
````
<a href="javascript:alert(1)">Click me</a>
````
- `escapeHTML()` does nothing (no `<` or `>` in this string!)
- It gets inserted raw via `.innerHTML` → XSS executes.
Similarly:
````
Click here: javascript:alert(1)
````
- Or 
````
<img src=x onerror=alert(1)>
````

- After `escapeHTML()`:
``&lt;img src=x onerror=alert(1)>`` → only the `<` is escaped, but `>` remains →
The browser may still parse this as malformed but executable HTML in some contexts.
- But the real killer is: `escapeHTML` only escapes one `<` and one `>`.
---


### The second way to find javascript file -> go back to our `burp`:
<img width="1605" height="1037" alt="image" src="https://github.com/user-attachments/assets/d636eddb-df52-4171-8136-2ea4dab66c39" />

<img width="1607" height="895" alt="image" src="https://github.com/user-attachments/assets/c36d0d2c-2348-4316-967a-c6cf4153362d" />

<img width="1632" height="905" alt="image" src="https://github.com/user-attachments/assets/8ae96e03-8014-41f3-b2e1-3243e5067294" />

- Now we see the javascript code like above. 


- If i found this vulnerablecode in browser: https://www.w3schools.com/jsref/jsref_replace.asp
````
   function escapeHTML(html) {
        return html.replace('<', '&lt;').replace('>', '&gt;');
    }
````
<img width="1483" height="967" alt="image" src="https://github.com/user-attachments/assets/a2dfa77e-2c71-434b-a798-87fb32180659" />

- Now we see .  

- After go back to our target in `Browser`, In this i input something in command:
<img width="697" height="892" alt="image" src="https://github.com/user-attachments/assets/b25a3502-18bc-4263-8275-a5aec38951fe" />

- This we got successful to input command -> after click on `Back to blog`:
<img width="665" height="232" alt="image" src="https://github.com/user-attachments/assets/a7f42368-1d5a-46a3-aed6-f84fcb308491" />

- Now we this our command show only this:
<img width="633" height="967" alt="image" src="https://github.com/user-attachments/assets/f739f1e4-5965-4008-992e-7978f737c899" />

- Now we no all about vulnerable code -> So after we need to creft payload to exploit it:
````
<>Helo<img src=X onerror=alert()>
````
<img width="1038" height="907" alt="image" src="https://github.com/user-attachments/assets/118d2a65-0ce0-405b-8607-05e0d67d95b7" />

- Ater click on `Back to blog`:
<img width="1021" height="343" alt="image" src="https://github.com/user-attachments/assets/29dbcd49-dd83-4a5f-bed1-fb2df5c03c58" />

- Now we got successful to input `Payload`:
<img width="1011" height="668" alt="image" src="https://github.com/user-attachments/assets/0f0709d5-0265-4c13-98a3-af9e379de900" />

<img width="1857" height="806" alt="image" src="https://github.com/user-attachments/assets/bc110b66-22d2-4b05-8801-c3c4049ac64a" />

<img width="868" height="775" alt="image" src="https://github.com/user-attachments/assets/4fdcf94f-ec35-46b8-a670-7c085f96032f" />


- Othera `Payload`:
````
<h1><h1 onmouseover="alert()">Helo</h1>
````
<img width="818" height="757" alt="image" src="https://github.com/user-attachments/assets/dada57dd-6d08-4d12-9668-9f990138f385" />

- Now we got successful, after click on `Back to blog`:
<img width="1333" height="347" alt="image" src="https://github.com/user-attachments/assets/b1c7c580-d7f0-4484-b4a2-ee511d383d24" />

<img width="1314" height="691" alt="image" src="https://github.com/user-attachments/assets/f6049c1c-15a8-42d2-b23f-1aafbc446bf3" />

<img width="935" height="730" alt="image" src="https://github.com/user-attachments/assets/cb6edbeb-e36b-4bed-b15e-67059a93bb3c" />

<img width="856" height="623" alt="image" src="https://github.com/user-attachments/assets/1f8cc561-e259-4966-8ea2-ca7a59555ed4" />

- Now we got successful to solve this Lab.


---


<h2 align="center"> Finished Of LAB 13 Stored DOM XSS </h2>

<h2 align="center"> Author: Nin Kanong (k4n0ng) </h2>


<h3 align="center"> Date: 30/11/2025 </h3>
