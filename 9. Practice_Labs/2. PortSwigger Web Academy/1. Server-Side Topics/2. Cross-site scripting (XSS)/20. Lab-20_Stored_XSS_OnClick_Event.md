<h1 align="center"> Lab: Stored XSS into onclick event with angle brackets and double quotes HTML-encoded and single quotes and backslash escaped </h1>

<img width="1050" height="400" alt="image" src="https://github.com/user-attachments/assets/cfa91520-d686-45b7-b49c-0595b2caf842" />


## Lab URL: https://portswigger.net/web-security/cross-site-scripting/contexts/lab-onclick-event-angle-brackets-double-quotes-html-encoded-single-quotes-backslash-escaped


## Lab solution:
This lab contains a stored cross-site scripting vulnerability in the comment functionality.

To solve this lab, submit a comment that calls the alert function when the comment author name is clicked. 


# Start Lab:
<img width="1050" height="400" alt="image" src="https://github.com/user-attachments/assets/cfa91520-d686-45b7-b49c-0595b2caf842" />

- Access Lab:
<img width="1010" height="869" alt="image" src="https://github.com/user-attachments/assets/b55eb94c-5aac-4c0b-b398-a126cd294cc3" />


## Used with **Burp Suite**:
- So first I need to open our `Burp Suite` -> Open `Burp Browser`:
<img width="1918" height="838" alt="image" src="https://github.com/user-attachments/assets/9a721d4d-c7df-499f-a593-f84332477908" />

- After `Past` the target URL:
<img width="1919" height="375" alt="image" src="https://github.com/user-attachments/assets/00da9632-5db7-4643-9f27-e630dc993b78" />


- After click on `View Post`:
<img width="637" height="737" alt="image" src="https://github.com/user-attachments/assets/88fa0b4c-cc3c-46da-8348-e06cc6e381a7" />


- After scroll down, and in this i input something:
<img width="625" height="851" alt="image" src="https://github.com/user-attachments/assets/c6ddf3da-2949-4ed6-917a-70f75aa12bca" />

- After open `Intercept on`:
<img width="1300" height="395" alt="image" src="https://github.com/user-attachments/assets/6373fd62-feb4-42f8-ba78-110d1dc92b89" />

- Now we see this:
<img width="650" height="209" alt="image" src="https://github.com/user-attachments/assets/62dfb441-0cd1-4cb7-ab27-b42fd362e33d" />

- After go back to our `Burp`:
<img width="1919" height="815" alt="image" src="https://github.com/user-attachments/assets/e91d516c-87a7-4cad-93a1-0a5bfb821d58" />


- After send it repeater `Send to Repeater`:
<img width="1918" height="1078" alt="image" src="https://github.com/user-attachments/assets/0fd88e79-94b7-44bd-ac39-9c5ff5b7b2eb" />

- After click `Forward`:
<img width="1918" height="822" alt="image" src="https://github.com/user-attachments/assets/b9cebf4d-81ac-4857-8027-6fa93dab08a2" />

- Click on `Forward` until it has no in this:
<img width="1918" height="880" alt="image" src="https://github.com/user-attachments/assets/c85e8480-e321-40bd-be81-bcc08c27bd52" />

<img width="1919" height="852" alt="image" src="https://github.com/user-attachments/assets/1e0bdc68-65af-4eed-8796-efc576dbd466" />


- After go back to target broewser:
<img width="691" height="212" alt="image" src="https://github.com/user-attachments/assets/eb6cc6aa-4bb3-4786-84e6-37bc399ac564" />

- After go back to our `Burp`:
<img width="1917" height="723" alt="image" src="https://github.com/user-attachments/assets/599db105-3929-4273-8be3-068f35eb2d69" />

- After click on `Forward` until it has no in this like above:
<img width="1919" height="812" alt="image" src="https://github.com/user-attachments/assets/e7d67980-5a90-478a-8fac-ab6df7455385" />

- After go back to our `Burp` -> Sebd it to repeater `Send to Repeater` -> click on ` Intercept off`:
<img width="1492" height="1043" alt="image" src="https://github.com/user-attachments/assets/11a0f32f-9d23-400f-bc59-8eda96e3053f" />

- After go to `Repeater`:
<img width="1485" height="842" alt="image" src="https://github.com/user-attachments/assets/75d50388-26c4-4a29-b73a-2763f7f0dc82" />

- Click `Send` -> and find what that we was input:
<img width="1878" height="900" alt="image" src="https://github.com/user-attachments/assets/1621b624-ef25-4f74-8f21-474102361b73" />



- Now we can use payload to inject it -> Back to our target:
````
https://foo?&apos;-alert(1)-&apos;
````
<img width="627" height="570" alt="image" src="https://github.com/user-attachments/assets/884b82a5-4054-405b-a177-8c23d0d20e94" />

- After click `Post Comment`:
<img width="1052" height="364" alt="image" src="https://github.com/user-attachments/assets/56de0a5e-481f-4a37-a082-940b5751b867" />

- Now we got success but we don't see anything alert, After click on `Back to blog`:
<img width="652" height="263" alt="image" src="https://github.com/user-attachments/assets/367e2609-05d8-4fc5-8f4e-9080cec57c93" />

- After scroll down:
<img width="536" height="911" alt="image" src="https://github.com/user-attachments/assets/bb71c784-4831-4209-8d92-9bf4c8d5b2f0" />

- After click on `k4n0ng`:
<img width="720" height="702" alt="image" src="https://github.com/user-attachments/assets/e2d61a11-7458-48e5-96c6-047baf06e43c" />

- After we will see alert:
<img width="1497" height="485" alt="image" src="https://github.com/user-attachments/assets/1ac20cac-e88e-4ad6-af27-d29dac6ebc71" />


- Now we got success to solve this Lab.




---


<h2 align="center"> Finished of Injecting XSS into comment author name </h2>

<h2 align="center"> Author: Nin Kanong (k4n0ng) </h2>

<h3 align="center"> Date: 17/12/2025 </h3>
