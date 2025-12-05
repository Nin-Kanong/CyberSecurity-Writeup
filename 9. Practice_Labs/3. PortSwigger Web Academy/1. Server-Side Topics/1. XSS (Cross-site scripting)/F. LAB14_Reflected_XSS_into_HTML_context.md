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

<img width="1882" height="577" alt="image" src="https://github.com/user-attachments/assets/8541606c-0969-4eed-ac9d-3185a41d9c48" />

- After `Right-Click` -> `Send to Intruder`:
<img width="938" height="918" alt="image" src="https://github.com/user-attachments/assets/22139d94-e820-40fc-a054-9b77836c3129" />

<img width="1870" height="824" alt="image" src="https://github.com/user-attachments/assets/5275d082-1d11-4369-914a-f0519283daaa" />

- After select on only `h1`, or select on only word in the middle -> after click `add`:
<img width="1138" height="538" alt="image" src="https://github.com/user-attachments/assets/232d7a36-541a-48f7-aaa0-e2ab7a6333e0" />

- Now we see this after go to `Payload`:
<img width="1919" height="879" alt="image" src="https://github.com/user-attachments/assets/648dc89f-3bf5-4839-a170-7fb94e899766" />

- And then go to burp suite `Cheat sheet`: https://portswigger.net/web-security/cross-site-scripting/cheat-sheet
- After click copy on `Copy tags to chipboard`:
<img width="977" height="677" alt="image" src="https://github.com/user-attachments/assets/1336196c-4b56-4eb4-ad60-197340b4691f" />


- After this go back to our `Burp Suite` -And past our **Payload**:
<img width="783" height="932" alt="image" src="https://github.com/user-attachments/assets/208e3361-48bd-4bf7-947f-f3a7a50794ac" />

- After we start attack -> click on `Start Attack`:
<img width="1916" height="870" alt="image" src="https://github.com/user-attachments/assets/40e6f141-184b-4d6b-9620-2613ffd4de58" />

- Now it start Attack:
<img width="1863" height="878" alt="image" src="https://github.com/user-attachments/assets/3dae7c1b-eb67-4140-aa4f-2c7716ab62a1" />

<img width="1788" height="520" alt="image" src="https://github.com/user-attachments/assets/6376435d-0737-4497-89ab-f578cc6d46f1" />

<img width="1782" height="525" alt="image" src="https://github.com/user-attachments/assets/b340f37b-5733-45a9-877b-07eb1f97649f" />

- **Note**: In this we want to stop or puase it on what when we find:
<img width="1864" height="1069" alt="image" src="https://github.com/user-attachments/assets/d4e5f608-95d4-4281-ab4f-6f0622282cee" />

- In this if i click on others that have `Status code` 400:
<img width="1862" height="861" alt="image" src="https://github.com/user-attachments/assets/95fb8966-6426-4759-afc9-de780bbc52ea" />

- After go to `Response` -> we will see `Tag is not allowed`:
<img width="1825" height="637" alt="image" src="https://github.com/user-attachments/assets/1b9927c1-3f9c-4ef0-9f6e-ed663a582ceb" />

- IF i click on `Status code` 200:
<img width="1831" height="865" alt="image" src="https://github.com/user-attachments/assets/ef985fc6-8737-4940-ab76-28a3735d545f" />

- Now we see text that allowed `body` and `custom tags`:

- After go to to our Browser -> after type this:
````
<body onerror=alert()>
````
<img width="808" height="710" alt="image" src="https://github.com/user-attachments/assets/74da6525-35e8-48c0-8b6b-f4b13c42cfe0" />

- After we see `"Attribute is not allowed"`:
<img width="1163" height="278" alt="image" src="https://github.com/user-attachments/assets/0c369e43-39a6-4939-a90b-118c02dba73c" />

- After go back to our `Burp`:
<img width="1492" height="673" alt="image" src="https://github.com/user-attachments/assets/2f4081fd-827b-43f5-ad21-92a66c4c582b" />

- After change `h1` to our text that we found `body`:
<img width="1488" height="607" alt="image" src="https://github.com/user-attachments/assets/692369f3-61bc-4b22-b3e9-27fd68ab5c08" />

- And then we see `HTTP/2 200`:
<img width="1487" height="802" alt="image" src="https://github.com/user-attachments/assets/e9039e4a-7c04-4f5a-91e8-770717bdc553" />

- If i add more like payload above:
````
<body onerror=alert()>
````
<img width="1491" height="541" alt="image" src="https://github.com/user-attachments/assets/b8bd2440-ac8a-4fd2-b7c1-f5fa2393ffdc" />

- Now we see like in browser above.

- After `Right-Click` -> select on `Send to Intruder` -> After go to `Intruder`:
<img width="1493" height="1043" alt="image" src="https://github.com/user-attachments/assets/79c6ec4b-a774-4283-8ad8-debc0acaccbe" />

- After we see this:
<img width="1918" height="822" alt="image" src="https://github.com/user-attachments/assets/5197eb8d-12e5-4083-8cdd-d64503052b77" />

- After select on `onerror` -> click `add`:
<img width="1136" height="472" alt="image" src="https://github.com/user-attachments/assets/08e62d4e-2ee6-4949-946f-0b4a1e1d08a9" />

<img width="1918" height="938" alt="image" src="https://github.com/user-attachments/assets/7cd713de-1fef-444e-a950-80bad053cd71" />

- After go to burp XSS `Cheat Sheet`: https://portswigger.net/web-security/cross-site-scripting/cheat-sheet
- After click on `Copy event to clipboard`:
<img width="982" height="687" alt="image" src="https://github.com/user-attachments/assets/413188ab-c8d6-44d9-8e33-4c48e0d1d8b9" />

- After go back to our `Burp` -> And past it to our payload, click on `Past` -> After we can start attack, click on `Start Attack`:
<img width="1916" height="878" alt="image" src="https://github.com/user-attachments/assets/43c550c6-5152-4857-9078-66650fa09dec" />

- Now it will start attack:
<img width="1820" height="716" alt="image" src="https://github.com/user-attachments/assets/ac648cac-ff0a-430d-8258-9526e406ec1c" />

- After click on `Status code`:
<img width="1822" height="500" alt="image" src="https://github.com/user-attachments/assets/e15f30cd-45b1-40a9-a777-b5f8da0bbab7" />

- Now we found the text that allowed and have `Status code` 200:
<img width="1826" height="567" alt="image" src="https://github.com/user-attachments/assets/3d9f05b3-f2cb-4e01-8dcc-df3489461a1d" />

- Now we see the status code HTTP/2 200:
<img width="1817" height="866" alt="image" src="https://github.com/user-attachments/assets/fc926ad8-51cb-49ea-ae95-cbc48e4b6782" />

- Now we found a lots text that allowed.

- In this we can `Exit` this -> just click on `Discute`:
<img width="1863" height="1071" alt="image" src="https://github.com/user-attachments/assets/bfdb23c3-e6c4-4c56-aab6-fa2405ee1154" />


- After this go back to our `Burp Suite` -> go to `Repeater`:
<img width="1490" height="508" alt="image" src="https://github.com/user-attachments/assets/43dd89c5-cea1-4c6f-9048-82fd4353fd18" />

- After change in `onerror` to our text that we found, and also in this i change it to ``:
````
<body onreisze=alert()>
````
<img width="1495" height="855" alt="image" src="https://github.com/user-attachments/assets/4921f38e-3adc-4e06-b0ff-74fafc52db29" />


- After if i type this it our target:
````
<body onresize=alert()>
````
<img width="730" height="771" alt="image" src="https://github.com/user-attachments/assets/ba8d21dd-9de8-4e23-b4f9-34020a1b9d50" />

- After click `Search` we don't see anything:
````
<body onresize=alert()>
````
<img width="952" height="684" alt="image" src="https://github.com/user-attachments/assets/36b4c442-8648-403d-b2d7-446662bcf145" />

- We see nothing:
<img width="962" height="401" alt="image" src="https://github.com/user-attachments/assets/3504156c-22fa-4bbd-b9ef-54fd8f50ad31" />

<img width="1918" height="746" alt="image" src="https://github.com/user-attachments/assets/b9484502-9a49-4285-91f4-6823f87000b0" />

- After we see this, but it not mean we solve this lab:
<img width="1817" height="940" alt="image" src="https://github.com/user-attachments/assets/23eea7c9-fd1f-427f-8d5f-887cdd61ffd8" />

<img width="1919" height="694" alt="image" src="https://github.com/user-attachments/assets/b0f75900-84ee-4a1e-bce0-2b603869a4b9" />

- After click on `Go to exploit server`:
<img width="1477" height="597" alt="image" src="https://github.com/user-attachments/assets/6abf817b-7584-4c7d-9f19-869b76bce2f4" />

- After in this i open my `notpad` to note my payload:
<img width="1526" height="738" alt="image" src="https://github.com/user-attachments/assets/20fa57cd-d94f-4237-9ebb-c39b852ea495" />

- And then in our brower back to `Search` place:
<img width="1919" height="756" alt="image" src="https://github.com/user-attachments/assets/cca6994a-5372-429f-bed3-32b8e7187cf4" />

- After we cracft payload:
````
<iframe src="https://0a0b00320340784680049937009d002d.web-security-academy.net/?search=<body onresize=print()>" onload=this.style.width='100px'>
````
<img width="1527" height="420" alt="image" src="https://github.com/user-attachments/assets/6fbadb58-b1fd-44c8-ac59-3c5f781d030c" />


- And then in `<body onresize=alert()>` is our `payload` that we succeed to brute force.
- And `onload=this.style.width='100px'`:
This is an inline JavaScript event handler attached to an HTML element (in your case, an `<iframe>`). Here's what it means:
  - `onload`: This event fires when the element (like an iframe or image) finishes loading.
  - `this.style.width='100px'`: When the element loads, it sets its own width to `100px`.


- Now we was successful for craft `payload` for send to victim:
````
<iframe src="https://0a0b00320340784680049937009d002d.web-security-academy.net/?search=<body onresize=print()>" onload=this.style.width='100px'>
````
- And after go back to to `Exploit Server`:
<img width="1526" height="1017" alt="image" src="https://github.com/user-attachments/assets/d5db4bef-c41e-440c-8815-defcab4d72b1" />

- Delete text `Hello, world!` -> and change to our payload URL above -> after click on `Store`:
<img width="968" height="828" alt="image" src="https://github.com/user-attachments/assets/b5fbd027-b09f-4da3-b96b-dbcba8178f88" />


- After we click on `Store` -> and then click on `Delivery exploit to victim`:
<img width="997" height="827" alt="image" src="https://github.com/user-attachments/assets/6b3d7c09-3c52-4f04-891d-5b9aff18037b" />

- Now we got successful to solve this lab:
<img width="1847" height="893" alt="image" src="https://github.com/user-attachments/assets/7a390d20-2d7c-42e5-9fee-ca0bf0e0412d" />

- After click on`View exploit`:
<img width="970" height="817" alt="image" src="https://github.com/user-attachments/assets/22b3702b-7d11-42fc-a0fd-3ee162522a33" />

- Now we see:
<img width="1674" height="877" alt="image" src="https://github.com/user-attachments/assets/9744ee27-f50a-4ccd-ac66-319ac6b91318" />


<img width="1247" height="295" alt="image" src="https://github.com/user-attachments/assets/a9caf28c-d449-4e83-8eb0-b1fdac66ab10" />

- We got successful to solve this Lab.


----



<h2 align="center"> Finished Lab14: Reflected XSS into HTML context with most tags and attributes blocked </h2>

<h2 align="center"> Author: Nin Kanong (k4n0ng) </h2>


<h3 align="center"> Date: 5/12/2025 </h3>
