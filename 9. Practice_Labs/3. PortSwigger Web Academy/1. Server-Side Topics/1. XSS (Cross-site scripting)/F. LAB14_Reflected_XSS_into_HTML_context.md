<h1 align="center"> Lab: Reflected XSS into HTML context with most tags and attributes blocked </h1>

<img width="1094" height="748" alt="image" src="https://github.com/user-attachments/assets/2b745e89-79b6-44c9-ac2c-384f9eb27b8c" />


## Requirement:
This lab contains a reflected XSS vulnerability in the search functionality but uses a web application firewall (WAF) to protect against common XSS vectors.
To solve the lab, perform a cross-site scripting attack that bypasses the WAF and calls the print() function. 


# Start Lab:
<img width="1094" height="748" alt="image" src="https://github.com/user-attachments/assets/2155e590-3b38-4245-87ac-853abec92c40" />

- Access the Lab:
<img width="977" height="878" alt="image" src="https://github.com/user-attachments/assets/03346870-0821-4db5-8cf4-ba28f5dc7e28" />

- In this i used tools to solve this Lab with my **Burp Suite** -> after i open `Burp` -> open `BVurp Browser`:
<img width="1918" height="853" alt="image" src="https://github.com/user-attachments/assets/6bc899d6-00ee-45a4-860f-458e66b0ccc8" />

- After pat the link `URL` into our `Burp Browser`:
<img width="1919" height="1074" alt="image" src="https://github.com/user-attachments/assets/479a29f1-43b0-484f-a5c7-89d815bba446" />

- After i search this:
````
<img src=X onerror=alert()>
 ````
<img width="941" height="798" alt="image" src="https://github.com/user-attachments/assets/3c092344-96b2-44e7-af0b-83edc97a34c7" />

- After i see this`Tag is not allowed`:
<img width="1219" height="304" alt="image" src="https://github.com/user-attachments/assets/b9124b74-884c-4787-bfeb-8a44978bd39e" />

- After go back to our `BURP`:
<img width="1921" height="767" alt="image" src="https://github.com/user-attachments/assets/f5ba65f4-4440-47c8-aa49-1032e0ad6420" />

- Now we see this string is specila character.


- What about if I input other:
````
<img src=1 onerror=alert(document.cookie)>
````
<img width="909" height="422" alt="image" src="https://github.com/user-attachments/assets/5ff427af-3117-43f4-b84a-87f51f50878f" />

- We see it still see `Tag is not allowed`:
<img width="1362" height="271" alt="image" src="https://github.com/user-attachments/assets/4c1f7a02-d4cf-4b17-9404-ddb494c5e2a5" />


````
<svg src=X onerror=alert()>
````
<img width="938" height="391" alt="image" src="https://github.com/user-attachments/assets/7a8d8e42-d738-41cc-8f48-3e5f44fe85e5" />

- We see it still:
<img width="1182" height="213" alt="image" src="https://github.com/user-attachments/assets/a6d72ee1-0a2a-4db5-bb2f-6fa31140709c" />

````
<iframe src=X onerror=alert()>
````
<img width="930" height="424" alt="image" src="https://github.com/user-attachments/assets/32b7fb5c-aa7b-40fc-bb84-6682781ba760" />

- For this i want to see `Cheat sheet` -> go to our lab:
<img width="1670" height="841" alt="image" src="https://github.com/user-attachments/assets/a09c8912-bb27-445c-a293-50a140ab40fb" />

- Click on `Copy tags to clipboard`:
<img width="1173" height="842" alt="image" src="https://github.com/user-attachments/assets/b6e76114-acb2-40ff-b897-a771b23727ee" />


- **Note**: But in this we go to do first -> Go to our `Burp`:
<img width="1889" height="1038" alt="image" src="https://github.com/user-attachments/assets/f8b4d16c-ae56-491e-88e5-b0f30a1ea9a7" />

- After `Right-Click` -> `Send to Reapeater`:
<img width="1877" height="727" alt="image" src="https://github.com/user-attachments/assets/9e62f19a-7ad2-4732-b327-2343253db832" />

- After go to `Repeater`
<img width="1918" height="727" alt="image" src="https://github.com/user-attachments/assets/31fd2813-9ffc-412e-a805-a478ec031f78" />

- In this we see:
<img width="1493" height="798" alt="image" src="https://github.com/user-attachments/assets/98527a51-1e25-45a1-9db4-7367b05c71b4" />

- And if I change this to `<h1>`:
<img width="1493" height="551" alt="image" src="https://github.com/user-attachments/assets/76c39838-5789-4c78-b838-3c2d40da8f92" />






















