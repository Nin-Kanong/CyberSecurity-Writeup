<h1 align="center"> Lab: Reflected DOM XSS </h1>

<img width="811" height="471" alt="image" src="https://github.com/user-attachments/assets/52c554b6-032d-4f94-9960-c4ea1cb8c2e5" />


## Requirements:
- This lab demonstrates a reflected DOM vulnerability. Reflected DOM vulnerabilities occur when the server-side application processes data from a request and echoes the data in the response. A script on the page then processes the reflected data in an unsafe way, ultimately writing it to a dangerous sink.

- To solve this lab, create an injection that calls the `alert()` function. 




## Start Lab:
<img width="811" height="471" alt="image" src="https://github.com/user-attachments/assets/52c554b6-032d-4f94-9960-c4ea1cb8c2e5" />

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


- In this we vulnerable code:






















