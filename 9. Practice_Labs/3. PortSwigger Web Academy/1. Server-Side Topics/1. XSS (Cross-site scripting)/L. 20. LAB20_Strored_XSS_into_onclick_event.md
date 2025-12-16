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
<img width="648" height="898" alt="image" src="https://github.com/user-attachments/assets/5335eaef-7c37-4447-bb34-575a49127031" />

- After finished click on `Post Comment`, after we will see this:
<img width="655" height="200" alt="image" src="https://github.com/user-attachments/assets/4351cc77-9728-423a-b2d1-b0650d9c44a4" />



























