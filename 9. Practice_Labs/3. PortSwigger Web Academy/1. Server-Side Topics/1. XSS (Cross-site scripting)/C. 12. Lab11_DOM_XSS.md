<h1 align="center"> Lab: DOM XSS in AngularJS expression with angle brackets and double quotes HTML-encoded </h1>

<img width="1000" height="600" alt="image" src="https://github.com/user-attachments/assets/bb039d00-e0b5-4be4-b72b-237d579c62b5" />


## Lab URL: https://portswigger.net/web-security/cross-site-scripting/dom-based/lab-angularjs-expression


## Requirements:
 This lab contains a DOM-based cross-site scripting vulnerability in a AngularJS expression within the search functionality.

AngularJS is a popular JavaScript library, which scans the contents of HTML nodes containing the ng-app attribute (also known as an AngularJS directive). When a directive is added to the HTML code, you can execute JavaScript expressions within double curly braces. This technique is useful when angle brackets are being encoded.

To solve this lab, perform a cross-site scripting attack that executes an AngularJS expression and calls the alert function. 


# Start Lab
<img width="1000" height="620" alt="image" src="https://github.com/user-attachments/assets/bb039d00-e0b5-4be4-b72b-237d579c62b5" />

- Access the Lab:
<img width="1162" height="950" alt="image" src="https://github.com/user-attachments/assets/0051ba32-25d7-4e07-9c6b-29e14372067b" />

- If in this i input something like:
````
test123
````
<img width="755" height="800" alt="image" src="https://github.com/user-attachments/assets/489699ac-5123-4f55-ab96-2cc2a813a979" />

<img width="757" height="333" alt="image" src="https://github.com/user-attachments/assets/dbb80f7a-6db3-4f90-afaf-fdef0b71e473" />

- If i want to see what i was input, press `F12` or `Right-click` -> `Inspect`:
<img width="1566" height="782" alt="image" src="https://github.com/user-attachments/assets/9f8fedcd-4a12-447d-a8cc-ed36a55cbaac" />

- An din this i don't see any `Javascript` here.


- After i want to see source code -> `Right-click` -> `View Page`:
<img width="742" height="622" alt="image" src="https://github.com/user-attachments/assets/6021f935-fd8b-4376-8ac9-bc34b3e3df22" />



