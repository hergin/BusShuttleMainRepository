
Deployment Documentation

## Shuttle Bus Log Collection System

----------

Driver Application

The driver application is utilizing the Angular Javascript framework. The project was created and built using the Angular CLI.

## Prerequisites

What needs to be installed:

1.  Install Node.js and npm from [https://nodejs.org/en/](https://nodejs.org/en/)
    
2.  Install Angular CLI following the directions at [https://angular.io/cli](https://angular.io/cli)
    
3.  Ensure you can SSH into a remote server.
    
4.  Clone the driver app repository into a folder of your choosing (preferably where you won't have to change permissions)
    
5.  Using Terminal or Command Prompt (depending on your operating system), navigate inside of project folder and run (with sudo if using linux)
    

npm install

This will install all of the project dependencies into a “node modules” folder in the project root. (Ensure this folder exists before moving forward)

## Building and Compiling for Production Environment

### Set Any Environment Dependent Variables Before Deploying

The following list will contain files and method names holding variables that are specific to the environment since there is no configuration file that the application reads on installation. This includes API endpoints, authentication settings, caching strategies, etc that will need to be changed.

#### Authentication API Endpoint

File: src/app/Services/authentication.service.ts

Method: login()

Variable: The string inside of the httpClient observable needs to be updated to reflect the current api endpoint for authentication.

#### API Base Url

File: src/app/Services/log.service.ts

Method: None → Member Variable

Variable: baseUrl

Currently set to “/api” because the [api folder](https://docs.google.com/document/d/15DAMwvFXaoh6W3Pzz6f4mLQdOzJFGnUp2glbzcuz9Uo/edit#heading=h.1atetc7zjiyh) should be residing in the same directory as the driver app on the webhost.

  

### Test Before Deployment

With the prerequisites complete, it is advisable to use the karma test runner, which uses the jasmine testing framework, to ensure that all dependencies were installed without issues. To perform the unit testing:

Using Terminal or Command Prompt (depending on your operating system), navigate inside of project folder and run

ng test

This will open a browser window automatically, displaying the karma interface and the success/failure of tests.

  

### Deployment

#### Build and Compile

Our Angular project gets transpiled into javascript the browser can handle. We need to perform these actions and get them uploaded to a web server.

Using Terminal or Command Prompt (depending on your operating system), navigate inside of project folder and run

ng build --prod

This will create a dist/ folder containing a BusLog/ folder

#### Uploading To a Web Server

In the previous step, the BusLog folder was created. Use Secure Copy (if on linux) or WinSCP (Windows Secure Copy) to copy all of the files from the BusLog folder to the root of the web server.

  

Server Information (4/6/2019)

URL: pbuslog01.aws.bsu.edu

Username: cs695test@bsu.edu

Password: Contact server maintainer

BSU Server MYSQL ACCESS

Username: root

Password: H30fKk4d

##### SCP Command for Mac

scp -r /PATH_TO_BUSLOG/dist/BusLog cs695test@bsu.edu@pbuslog01.aws.bsu.edu:/var/www/html/

  

##### Starting the Apache Server

sudo service httpd start

##### Stopping the Apache Server

sudo service httpd stop

##### Restarting the Apache Server

sudo service httpd restart

# Application Programming Interface (API)

## Prerequisites

-   Linux server must be running on a machine.
    

-   LAMP Stack must be installed
    

  
  

Our API is written in PHP so uploading it to our web-server is very easy. It just consists of multiple PHP files that dump json information - accessed by our driver app.

1.  Modify all Config.php files with the correct MySQL information
    
2.  Upload /api folder to the web server root (preferable because the driver app, by default, assumes the api will reside there)
    

# Administrator Dashboard

Our Administrator Dashboard is written in PHP so uploading it to our web-server is also very easy.

1.  Modify all Config.php files with the correct MySQL information
    
2.  Upload /BusLog folder to the web server root.
    

  

# Final Result

## File Structure Screenshot

![](https://lh6.googleusercontent.com/i1_48nCzX99U37UfZTtlptOGbF9RFkmUjicBUiEu20PtC1y2TQf_YHppGTUcWichjqx3iufIq2NgxWFXAvwpCRGmHXI9hB3If-rO78tfnR5plf2ALdrlVK2_6bHb12bmwm8JwdjY)Deployment Documentation

## Shuttle Bus Log Collection System

----------

Driver Application

The driver application is utilizing the Angular Javascript framework. The project was created and built using the Angular CLI.

## Prerequisites

What needs to be installed:

1.  Install Node.js and npm from [https://nodejs.org/en/](https://nodejs.org/en/)
    
2.  Install Angular CLI following the directions at [https://angular.io/cli](https://angular.io/cli)
    
3.  Ensure you can SSH into a remote server.
    
4.  Clone the driver app repository into a folder of your choosing (preferably where you won't have to change permissions)
    
5.  Using Terminal or Command Prompt (depending on your operating system), navigate inside of project folder and run (with sudo if using linux)
    

npm install

This will install all of the project dependencies into a “node modules” folder in the project root. (Ensure this folder exists before moving forward)

## Building and Compiling for Production Environment

### Set Any Environment Dependent Variables Before Deploying

The following list will contain files and method names holding variables that are specific to the environment since there is no configuration file that the application reads on installation. This includes API endpoints, authentication settings, caching strategies, etc that will need to be changed.

#### Authentication API Endpoint

File: src/app/Services/authentication.service.ts

Method: login()

Variable: The string inside of the httpClient observable needs to be updated to reflect the current api endpoint for authentication.

#### API Base Url

File: src/app/Services/log.service.ts

Method: None → Member Variable

Variable: baseUrl

Currently set to “/api” because the [api folder](https://docs.google.com/document/d/15DAMwvFXaoh6W3Pzz6f4mLQdOzJFGnUp2glbzcuz9Uo/edit#heading=h.1atetc7zjiyh) should be residing in the same directory as the driver app on the webhost.

  

### Test Before Deployment

With the prerequisites complete, it is advisable to use the karma test runner, which uses the jasmine testing framework, to ensure that all dependencies were installed without issues. To perform the unit testing:

Using Terminal or Command Prompt (depending on your operating system), navigate inside of project folder and run

ng test

This will open a browser window automatically, displaying the karma interface and the success/failure of tests.

  

### Deployment

#### Build and Compile

Our Angular project gets transpiled into javascript the browser can handle. We need to perform these actions and get them uploaded to a web server.

Using Terminal or Command Prompt (depending on your operating system), navigate inside of project folder and run

ng build --prod

This will create a dist/ folder containing a BusLog/ folder

#### Uploading To a Web Server

In the previous step, the BusLog folder was created. Use Secure Copy (if on linux) or WinSCP (Windows Secure Copy) to copy all of the files from the BusLog folder to the root of the web server.

  

Server Information (4/6/2019)

URL: pbuslog01.aws.bsu.edu

Username: cs695test@bsu.edu

Password: Contact server maintainer

BSU Server MYSQL ACCESS

Username: root

Password: H30fKk4d

##### SCP Command for Mac

scp -r /PATH_TO_BUSLOG/dist/BusLog cs695test@bsu.edu@pbuslog01.aws.bsu.edu:/var/www/html/

  

##### Starting the Apache Server

sudo service httpd start

##### Stopping the Apache Server

sudo service httpd stop

##### Restarting the Apache Server

sudo service httpd restart

# Application Programming Interface (API)

## Prerequisites

-   Linux server must be running on a machine.
    

-   LAMP Stack must be installed
    

  
  

Our API is written in PHP so uploading it to our web-server is very easy. It just consists of multiple PHP files that dump json information - accessed by our driver app.

1.  Modify all Config.php files with the correct MySQL information
    
2.  Upload /api folder to the web server root (preferable because the driver app, by default, assumes the api will reside there)
    

# Administrator Dashboard

Our Administrator Dashboard is written in PHP so uploading it to our web-server is also very easy.

1.  Modify all Config.php files with the correct MySQL information
    
2.  Upload /BusLog folder to the web server root.
    

  

# Final Result

## File Structure Screenshot

![](https://lh6.googleusercontent.com/i1_48nCzX99U37UfZTtlptOGbF9RFkmUjicBUiEu20PtC1y2TQf_YHppGTUcWichjqx3iufIq2NgxWFXAvwpCRGmHXI9hB3If-rO78tfnR5plf2ALdrlVK2_6bHb12bmwm8JwdjY)