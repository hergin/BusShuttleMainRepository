## Deploying the Driver Application
[![Build Status](https://travis-ci.com/kdesimini/continuousIntegratingTesting.svg?token=6czNpzV32VeKpLFD2zS7&branch=master)](https://travis-ci.com/kdesimini/continuousIntegratingTesting)
#### Prerequisites 
What needs to be installed before starting:

##### Your local machine. 
1.  Install Node.js and npm from [https://nodejs.org/en/](https://nodejs.org/en/)
    
2.  Install Angular CLI following the directions at [https://angular.io/cli](https://angular.io/cli)
    
3.  Ensure you can SSH into a remote server.
    
4.  Clone the driver app repository into a folder of your choosing (preferably where you won't have to change permissions)
    
5.  Using Terminal or PowerShell (depending on your operating system), navigate inside of project folder and run (with sudo if using linux) 
```sh
npm install 
```
    

This will install all of the project dependencies into a “node modules” folder in the project root. (Ensure this folder exists before moving forward)

It is likely that you will have a newer version of Angular than the version in the package.json file (where all dependencacies are specified for the project) so stick with the older version.

### Building and Compiling

##### Set Any Environment Dependent Variables Before Deploying

The following list will contain files and method names holding variables that are specific to the environment since there is no configuration file that the application reads on installation. This includes API endpoints, authentication settings, caching strategies, etc that will need to be changed.

###### Authentication API Endpoint
If using the JWT authentication system (not currently in use due to inconsistent internet connection)
```
File: src/app/Services/authentication.service.ts

Method: login()

Variable: The string inside of the httpClient observable needs to be updated to reflect the current api endpoint for authentication.
```
###### API Base Url

```
File: src/app/Services/log.service.ts

Method: None → Member Variable

Variable: baseUrl
```
Currently set to ```/api``` because the [api folder](https://docs.google.com/document/d/15DAMwvFXaoh6W3Pzz6f4mLQdOzJFGnUp2glbzcuz9Uo/edit#heading=h.1atetc7zjiyh) should be residing in the same directory as the driver app on the webhost.

##### Test Before Deployment

With the prerequisites complete, it is advisable to use the karma test runner, which uses the jasmine testing framework, to ensure that all dependencies were installed without issues. To perform the unit testing:

Using Terminal or Command Prompt (depending on your operating system), navigate into the **project root** and run

``` sh
ng test
```
This will open a browser window automatically, displaying the karma interface and the success/failure of tests.


##### Build and Compile

Our Angular project gets transpiled into javascript the browser can handle. We need to perform these actions and get them uploaded to a web server.

Using Terminal or PowerShell (depending on your operating system), navigate inside of project folder and run

```sh
ng build --prod
```

This will create a ```dist/``` folder containing a ```BusLog/``` folder. The BusLog folder will be directly uploaded to the webserver.

#### Uploading To the Web Server

In the previous step, the BusLog folder was created. Use Secure Copy (if on linux) or WinSCP (Windows Secure Copy) to copy all of the files from the BusLog folder to the root of the web server.

  

Server Information (4/6/2019)

URL: pbuslog01.aws.bsu.edu

Username: cs695test@bsu.edu

Password: Contact server maintainer

BSU Server MYSQL ACCESS

Username: root

Password: H30fKk4d

##### SCP Command for Mac
```
$ scp -r /PATH_TO_BUSLOG/dist/BusLog cs695test@bsu.edu@pbuslog01.aws.bsu.edu:/var/www/html/
```
The command above will send the entire `/BusLog` folder to the server but not actually extract its contents to the server root. Futher commands to extract the data from the folder to the root of the webserver are required.

If the `/assets` or `/images` folder already exists on the server, run these commands to remove the assets folder and images folder to allow the next step to work:
```sh
$ rm -r assets
$ rm -r images
```

After ensuring that the folders are deleted, run the following command to move all files from the `BusLog` to your working directory(you should be in the project root (if installed in a typical way, `/var/www/html/`))
```sh
$ mv BusLog/* ./
```
### Starting and stopping the webserver. 
If they aren't running or need to be restarted for any reason. This also depends on what type of LAMP stack was used. I would refer to the documentation used when configuring the server.
##### Starting the Apache Server

sudo service httpd start

##### Stopping the Apache Server

sudo service httpd stop

##### Restarting the Apache Server

sudo service httpd restart

## Deploying the API
Our API is written in PHP so uploading it to our web-server is very easy. It consists of multiple PHP files that dump json information - accessed by our driver app.

1.  Modify all `Config.php` files with the correct MySQL information. Make sure that ANY `connect.php` file is pointing to an exisiting `config.php` file with the SQL server credentials. We didn't have time to create one standard config file so it's a little scattered at the moment. There are maybe 3 or 4 total config files that will need to be set. Take a look at the production environment before replacing any code.  
    
2.  Upload `/api` folder to the web server root (preferable because the driver app, by default, assumes the api will reside there. If uploaded somewhere else, the driver app will need to be re-compiled if in production already)

# Administrator Dashboard

Our Administrator Dashboard is written in PHP so uploading it to our web-server is also very easy.

1.  Modify all Config.php files with the correct MySQL information

2. Visit http://ulogin.sourceforge.net/usage.php to view how to configure ulogin (our auth library). There are only a few parameters that need to be changed. It is HIGHLY reccomended to look at the the configuration files ON THE SERVER before removing/replacing any code. The repository **should** have the correct information set but it but if the files are not uploaded exactly as shown here, then things will need to be changed.
    
3. Upload the contents (with the config files set to the correct information) to a folder called `/dashboard` in the project root. If uploaded anywhere else or under any different name, it may require modification to a few pages in the admin dashboard. 

4. Use supplied database schema to build database using the command line OR through phpMyAdmin. You can find the schema with or without data [HERE](https://github.com/hergin/Bus-Shuttle-Log-Collection-System/tree/master/Resources) 

# Final Result
If everything has gone correctly, this is how the server root should look. 
- You can see that the `/BusLog` contents have been extracted to the root of the server. 
- The `/api` resides in it's own folder.
- The `/dashboard` folder holds the Administrator dashboard. 

![](https://lh6.googleusercontent.com/i1_48nCzX99U37UfZTtlptOGbF9RFkmUjicBUiEu20PtC1y2TQf_YHppGTUcWichjqx3iufIq2NgxWFXAvwpCRGmHXI9hB3If-rO78tfnR5plf2ALdrlVK2_6bHb12bmwm8JwdjY)
    
