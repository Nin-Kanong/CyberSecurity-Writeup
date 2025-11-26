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

- But i see only this:
<img width="1788" height="680" alt="image" src="https://github.com/user-attachments/assets/2d88097a-c5ec-41be-8e04-844a9b2472f6" />


- If i search for this:
````
{11 + 22}
````
<img width="934" height="403" alt="image" src="https://github.com/user-attachments/assets/68a76663-ae1a-4207-b21b-31754bdf16dd" />

````
{{22 + 22}}
````
<img width="925" height="399" alt="image" src="https://github.com/user-attachments/assets/e4a8eca3-3570-43b7-8614-f7eb914f54d7" />



````
alert()
````
<img width="960" height="436" alt="image" src="https://github.com/user-attachments/assets/929664be-1ee2-412c-b4c0-d360e588b660" />

<img width="1851" height="572" alt="image" src="https://github.com/user-attachments/assets/8f9fe81c-ed71-43ee-92fd-be67871a6ff7" />



### MVC Framework Reminder
  - MVC - FRAMEWORK
  - M - Model
  - V - View
  - C - Controller

- Just a reminder of what MVC means in web frameworks like AngularJS.



- Constructor & AngularJS Services
````
CONSTRUCTOR:
$scope
$watch
$on
$eval
$emit
$apply
$digest
````
- See more angularJS:


These are core AngularJS services and properties:
- `$scope`: The data model object passed to views.
- `$watch`: Watches for changes in scope variables.
- `$eval`: Evaluates an expression in the current scope.
- `$apply`: Triggers digest cycle manually.
- `$digest`: Processes watchers (usually called internally).
- `$on`, `$emit`: For event handling.


- The Exploit Payload:
````
{{$watch.construct('alert()')()}}
````





- Break down:
````
{{ ... }} 
````
- This is AngularJS interpolation syntax. Anything inside {{ }} gets evaluated as an



- Expression:
````
$watch.construct('alert()')()
````
- This tries to:
  - Access the $watch service (which is available in scope)
  - Call .construct() — but this is NOT a real method in AngularJS! → So this will throw an error unless someone has extended $watch or it’s a trick.



- Actually, the real exploit in AngularJS template injection usually looks like this:
````
{{constructor.constructor('alert(1)')()}}
````
Or
````
{{'a'.constructor.prototype.charAt=[].join;$eval('x=1')+$error}}
````
- But here, they’re trying to use `$watch.construct(...)` — which doesn’t exist.




















