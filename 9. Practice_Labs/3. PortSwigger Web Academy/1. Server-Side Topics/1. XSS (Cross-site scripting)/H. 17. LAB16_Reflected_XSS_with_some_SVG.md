<img width="1140" height="488" alt="image" src="https://github.com/user-attachments/assets/c4384246-6863-4696-90ea-b7f5da641739" /><h1 align="center"> Lab: Reflected XSS with some SVG markup allowed </h1>

<img width="1307" height="756" alt="image" src="https://github.com/user-attachments/assets/a062e9de-d808-4b5f-8e9d-835f4cb4e2ba" />


## Lab URL: https://portswigger.net/web-security/cross-site-scripting/contexts/lab-some-svg-markup-allowed


## Lab solution:
 This lab has a simple reflected XSS vulnerability. The site is blocking common tags but misses some SVG tags and events.

To solve the lab, perform a cross-site scripting attack that calls the `alert()` function. 



# Start LAb Methodology:
<img width="792" height="451" alt="image" src="https://github.com/user-attachments/assets/341e4cba-81f3-4618-b36c-f68760b5d375" />


- Access the Lab:
<img width="1442" height="963" alt="image" src="https://github.com/user-attachments/assets/b860ff6f-bdab-430d-ab27-3da0f96ae503" />

- In this i used with `Burp Suite`, so open our `Burp` -> after opren our `Bupr Browser`:
<img width="1912" height="838" alt="image" src="https://github.com/user-attachments/assets/78d408a0-0c05-4ceb-bd21-675440ede147" />

- After `Past` the target URL:
<img width="1919" height="576" alt="image" src="https://github.com/user-attachments/assets/837edac5-8ff5-4184-b58e-0a58fb4d2c90" />

<img width="1913" height="1040" alt="image" src="https://github.com/user-attachments/assets/cb0a7be9-9c04-458c-ac7c-2a5f9db46851" />

- After i input:
````
<h1>
````
<img width="939" height="355" alt="image" src="https://github.com/user-attachments/assets/f22ffdcc-fd1b-4893-a28a-693ab4238525" />

- After i click on `Search` in show me `Tag is not allowed`:
<img width="978" height="290" alt="image" src="https://github.com/user-attachments/assets/2baf9576-6f72-4333-b343-933698b0223c" />

- If i input other:
````
<p>
````
<img width="912" height="344" alt="image" src="https://github.com/user-attachments/assets/57f120ed-1f2f-4686-b49d-8103f9515e95" />

- But it still show me `Tag is not allowed`:
<img width="907" height="296" alt="image" src="https://github.com/user-attachments/assets/94827c92-055c-4904-9ae4-21c0c5d6f4ef" />


- After go back to our `Burp Suite` -> after find what we was input:
<img width="1921" height="890" alt="image" src="https://github.com/user-attachments/assets/7f6dfe82-038d-4735-a4cb-c8f7e639ca91" />

- After `Right-Click` -> Select `Send to Repeater`:
<img width="1490" height="954" alt="image" src="https://github.com/user-attachments/assets/d9bf9eb9-ae81-4744-88e6-63dbb4aaf5f6" />

- After click on `Send`:
<img width="1492" height="695" alt="image" src="https://github.com/user-attachments/assets/7275e25f-4feb-4ffc-a85f-28de96a1bd9c" />

- After check it to normal not encode:
````
<h1>
````
<img width="1496" height="548" alt="image" src="https://github.com/user-attachments/assets/af8770ea-4205-41fd-9212-cb207a03a8e9" />


- After go to `Burp LAb` -> and find `Cheat sheet`: https://portswigger.net/web-security/cross-site-scripting/cheat-sheet
<img width="1135" height="647" alt="image" src="https://github.com/user-attachments/assets/ffb7adac-21a1-4a0f-8afe-4c50ef837a70" />

- And then click on `Copy tags to clipboard`
<img width="1002" height="675" alt="image" src="https://github.com/user-attachments/assets/579d9e93-9812-41cb-8313-2d6c5ae6986c" />

- And after go back to our `Burp` -> `Right-Click` -> select `Send to Intruder` -> after go to `Intruder`:
<img width="1488" height="1045" alt="image" src="https://github.com/user-attachments/assets/c5389aef-f269-41f9-a7e9-aee66db2f29a" />

- Now we see:
<img width="1918" height="828" alt="image" src="https://github.com/user-attachments/assets/0ea86471-df0f-4ac8-b316-25ed31691e0b" />

- In this i select on `h1` not include `< >` -> click on `add`:
<img width="1140" height="488" alt="image" src="https://github.com/user-attachments/assets/6ab9bb19-ec2c-4f11-8798-063069520679" />

- Now we see:
<img width="1925" height="880" alt="image" src="https://github.com/user-attachments/assets/f83c53c0-d34c-4be4-9557-37ef362f8401" />

- After go to our `Burp Cheat Sheet` -> click on `Copy tags to clipboard` again:
<img width="983" height="677" alt="image" src="https://github.com/user-attachments/assets/ea44d78f-4b60-4156-8430-db5ad87dee42" />

- After back to our `Burp` -> click on `Past` -> click `Start Attack`:
<img width="1918" height="941" alt="image" src="https://github.com/user-attachments/assets/2fc39ec3-0364-4b16-a06f-fb14ae2d74d5" />

<img width="1866" height="867" alt="image" src="https://github.com/user-attachments/assets/a87c5de2-2d16-462f-814d-40443f3fe276" />

- Now it start attack and wait a few minute it will finish:
<img width="1865" height="681" alt="image" src="https://github.com/user-attachments/assets/1d1b2a76-af22-42ce-bc2f-f05ba12edfcc" />

- After find what payload that have `Status code` `200`:
<img width="1861" height="913" alt="image" src="https://github.com/user-attachments/assets/993cd77e-96f2-4b53-8ffd-c55a89ade91d" />

- And now i found payload that have `Status code 200` -> And if in this i click on others that have `Status code` `400`:
<img width="1827" height="627" alt="image" src="https://github.com/user-attachments/assets/95fbfcbe-b9f7-4476-9d9c-5e549f997b26" />

- Now we see it show `Tag is not allowed`.

- If i click on `payload` that have `Status code` `200`:
<img width="1823" height="865" alt="image" src="https://github.com/user-attachments/assets/3472f050-2ed9-45a7-b93f-05a3dec7b3f4" />

- Now i see we got success, and found `animatetransform` is the correct payload.

- And in this we the **Allowed tags**:
````
<animatetransform>
<svg>
<tittle>
<image>
````

- And **Allowed event**:
````
<animatetransform>
onbegin
````

- **Note**: If we want to stop attack when we found the correct payload -> click on `Attack` -> after click on `pause`:
<img width="1137" height="135" alt="image" src="https://github.com/user-attachments/assets/a09ed349-f7e0-47de-9493-bbda06ad83bb" />


---





























