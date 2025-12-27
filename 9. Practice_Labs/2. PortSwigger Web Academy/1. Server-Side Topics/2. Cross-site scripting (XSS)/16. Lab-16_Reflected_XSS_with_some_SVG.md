<h1 align="center"> Lab: Reflected XSS with some SVG markup allowed </h1>

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



- After go back to our target browser, after type this:
````
<svg>
````
<img width="934" height="432" alt="image" src="https://github.com/user-attachments/assets/7a3e6748-871c-45a5-97da-f1e96eb20333" />

<img width="952" height="370" alt="image" src="https://github.com/user-attachments/assets/801f621f-3a8b-41d1-a7f1-61e066826365" />

- Now we see no messages alert -> `Right-Click` -> `Inspect`:
<img width="1918" height="966" alt="image" src="https://github.com/user-attachments/assets/c409317a-a94f-4135-96f9-b839bbadd635" />

- Now we see message that i input.

- After i try one more:
````
"><svg>
````
<img width="1918" height="960" alt="image" src="https://github.com/user-attachments/assets/fb530971-102e-42f2-b999-d03686cb1e26" />


- Now i try one more thing:
````
<svg onclick=alert()>
````
<img width="906" height="310" alt="image" src="https://github.com/user-attachments/assets/e9eb32a3-716a-4908-863f-92a02a5c7c23" />

- Now we see `Event is not allowed`:
<img width="1141" height="211" alt="image" src="https://github.com/user-attachments/assets/9ca56709-819d-4074-a5e8-dac7b4fada1a" />

- If i try others:
````
<svg onmouseover=alert()>
````
<img width="954" height="380" alt="image" src="https://github.com/user-attachments/assets/c625699b-9a38-4d92-aecc-146630430f5e" />

- But i still see this:
<img width="1196" height="210" alt="image" src="https://github.com/user-attachments/assets/8df0df41-e73a-4b61-9580-da97da9eadbb" />


-  After go back to our `Burp Suite`:
<img width="1919" height="929" alt="image" src="https://github.com/user-attachments/assets/1840ad82-a8e7-4096-8646-51d34421df5d" />

- After send it to reapeater -> `Right-Click` -> `Send to repeater`:
<img width="1494" height="958" alt="image" src="https://github.com/user-attachments/assets/85808a68-f66b-4d27-a4f6-6cccd994d237" />

<img width="1492" height="712" alt="image" src="https://github.com/user-attachments/assets/ea7b6bdf-f16d-4832-a979-7af6fbaa4d16" />

- After `Right-Click` -> `Send to Intruder`:
<img width="1492" height="1040" alt="image" src="https://github.com/user-attachments/assets/aa955222-0a8a-44a1-8e56-7ec4364c8ee8" />

<img width="1328" height="653" alt="image" src="https://github.com/user-attachments/assets/edf3b8f3-4960-4530-9082-99034dff6cc8" />

- After I chenge `%3Csvg+onmouseover%3Dalert%28%29%3E` -> `<svg+onload=alert()>` after select on `onload` -> click on `add`:
<img width="1353" height="427" alt="image" src="https://github.com/user-attachments/assets/92ab1bfd-c8e1-445c-8296-1c25e332119d" />

<img width="1343" height="435" alt="image" src="https://github.com/user-attachments/assets/33da8166-d047-459d-9223-a07b1d51d69e" />

- After go to payload:
<img width="1922" height="881" alt="image" src="https://github.com/user-attachments/assets/62ed213a-332c-49fc-9e77-29f2ff858046" />

- After go back to our `Cheat sheet`: https://portswigger.net/web-security/cross-site-scripting/cheat-sheet
- After go to `Burp cheat sheet` -> clicl on `Copy events to clipboard`:
<img width="982" height="673" alt="image" src="https://github.com/user-attachments/assets/1cfe8112-e611-4b3f-9078-d4419b2e9874" />


- Afte go back to our `Burp Suite`:
<img width="1918" height="871" alt="image" src="https://github.com/user-attachments/assets/0617e0e0-4ba1-4d42-bc8e-f622f286c339" />

- After click on `Start Attack`:
<img width="1863" height="826" alt="image" src="https://github.com/user-attachments/assets/6b6a8cd1-d618-46b9-9b01-075fb758fd55" />

- Now we found the correct `Payload`: `onbegin`
<img width="1827" height="831" alt="image" src="https://github.com/user-attachments/assets/e588efca-064c-4d7f-9a66-7f336e21abc3" />

<img width="1827" height="866" alt="image" src="https://github.com/user-attachments/assets/94307d14-d28a-4850-b57e-52e8a8f38271" />


- After go back to our target browser -> type this:
````
<svg onbegin=alert()>
````
<img width="900" height="362" alt="image" src="https://github.com/user-attachments/assets/9dc901ea-92b9-4a3e-85a7-53624420a623" />

- But we see nothing:
<img width="1012" height="432" alt="image" src="https://github.com/user-attachments/assets/7cb59943-4e87-4154-9f95-15f49b426450" />

- After if we want to detail about `SVG Vulnerable code`:
- Go to browser: `svg html tag`: https://www.w3schools.com/html/html5_svg.asp
<img width="985" height="923" alt="image" src="https://github.com/user-attachments/assets/1c4f32fa-dc51-4d64-977f-f937bbd35083" />

<img width="1202" height="650" alt="image" src="https://github.com/user-attachments/assets/b152bdbb-3127-4508-88be-c42e4ee2cd2c" />

<img width="1088" height="424" alt="image" src="https://github.com/user-attachments/assets/c1a26aa5-7acd-474d-9d81-dfd7fce4bc85" />

- Now we can see The risk comes when you combine **allowed tags + allowed** events that execute JavaScript:
````
<svg>
  <animatetransform onbegin=alert(1) />
</svg>
````
- `<animatetransform>` is an SVG animation element.
- The `onbegin` event fires immediately when the animation starts (which happens as soon as the browser parses the SVG).
- Since the lab allows this tag + this event, and injects it directly into the DOM, the `alert(1)` executes → XSS!



- After i check about `animatetransform`: https://www.w3schools.com/graphics/svg_animation.asp
<img width="1035" height="472" alt="image" src="https://github.com/user-attachments/assets/8d1787c2-5dbd-450e-948d-ad32d6d4ea35" />



- Now we get all payload and vulnerable code, So we can craft `Payload`:
````
<svg><animatetransform onbegin=alert()></svg>
````
- After past to our `Payload` to our target:
<img width="960" height="554" alt="image" src="https://github.com/user-attachments/assets/1c6fe67d-b4f6-481d-9c69-ae33b22161f3" />

- Now we got successful to inject payload:
<img width="1037" height="571" alt="image" src="https://github.com/user-attachments/assets/2b51e0ec-7c05-454b-a8fa-5fd3c58e8a40" />

<img width="1490" height="632" alt="image" src="https://github.com/user-attachments/assets/a471dc20-3942-4f99-9111-e86ef625bfd2" />


- Now we got success to solve this Lab.


---

<h2 align="center"> Finished Lab 16: SVG tags and event handlers bypassing tag restrictions </h2>


<h2 align="center"> Author: Nin Kanong (k4n0ng) </h2>



<h3 align="center"> Date: 7/12/2025 </h3>
