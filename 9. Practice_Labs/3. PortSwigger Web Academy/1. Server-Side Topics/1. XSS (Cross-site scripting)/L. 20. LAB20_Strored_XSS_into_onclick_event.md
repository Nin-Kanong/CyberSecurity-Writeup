<img width="1878" height="857" alt="image" src="https://github.com/user-attachments/assets/e4a3e063-1db2-4e2a-a51a-41f52d6ae06e" /><h1 align="center"> Lab: Stored XSS into onclick event with angle brackets and double quotes HTML-encoded and single quotes and backslash escaped </h1>

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
<img width="648" height="898" alt="image" src="https://github.com/user-attachments/assets/5335eaef-7c37-4447-bb34-575a49127031" />

- After finished click on `Post Comment`, after we will see this:
<img width="655" height="200" alt="image" src="https://github.com/user-attachments/assets/4351cc77-9728-423a-b2d1-b0650d9c44a4" />

- After click on `Back blog` and scroll down:
<img width="671" height="962" alt="image" src="https://github.com/user-attachments/assets/31d18550-7474-4ded-972a-3cbb8cc67f39" />

- And now we see our comment that we was Post.

- After go back to our `Burp` -> `HTTP history`:
<img width="1921" height="992" alt="image" src="https://github.com/user-attachments/assets/577954ce-e33a-40f6-ba22-fe558b2c7a51" />

- And then choose our `postid`:
<img width="1914" height="993" alt="image" src="https://github.com/user-attachments/assets/37078502-145b-4ae5-a57a-a88de3f52397" />

- After send it to repeater `Right-Click` -> Select `Send to Repeater`:
<img width="1878" height="958" alt="image" src="https://github.com/user-attachments/assets/8576422c-7ded-4a72-9b6f-3f652304a97f" />

<img width="1881" height="987" alt="image" src="https://github.com/user-attachments/assets/9fc0fa1e-2151-437f-84c7-0cf07184cf9f" />
 
- After find what that we have input:
<img width="1882" height="855" alt="image" src="https://github.com/user-attachments/assets/192f6262-d5a3-45e7-8f1f-b1a5f20d1602" />

- Now we can input `XSS`, first go to target `Browser` -> And input new credentials:
````
https://foo?apos:-alert(1)-&apos:
````
<img width="680" height="953" alt="image" src="https://github.com/user-attachments/assets/f4e96a11-2d28-4100-9c7b-cfad63984502" />

- After click on `Post Comment`:


- Now we got successful go input:





























