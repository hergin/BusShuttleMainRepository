Shuttle Bus Log Collection System

Development Documentation

  

# Technology Stack

## Dashboard & API

LAMP Stack

Linux

Running on an Amazon AWI Image

  
  

Apache

Apache server for interpreting our PHP built API and Dashboard. Also used to host the files for the Driver app

MySQL

Database designed and utilizing MySQL server.

PHP

Dashboard and API written in PHP to simplify deployment process.

  

## Driver App

The driver app is written using Angular, a javascript framework utilizing typescript that gets transpiled into javascript. The driver app accesses the API to pull and push information to our MySQL database.

# Replicating Development Environment

  

## Driver App:

(Service worker won't work in the development server)

Run ng serve --open inside of the project folder and let the project build and compile . If a browser window does not automatically open, navigate to http://localhost:4200/. The app will automatically reload if you change any of the source files.

  

### Testing:

Using Terminal or Command Prompt (depending on your operating system), navigate inside of project folder and run

ng test

This will open a browser window automatically, displaying the karma interface and the success/failure of tests.

  

## API and Dashboard:

Install any development environment that you prefer, as long as it’s set up to easily run PHP applications.

  

In our case, we installed XAMPP on our machines and developed using Visual Studio Code.

# File and Folder Structure

  

## Driver App:

![](https://lh6.googleusercontent.com/PiviktTQxzrk3mrHCzSVMOakaSgX8Wdk29oZMmfycf9rH07793jmFVr_9yxFKLnw4a8Pu3jzaN5VMOMmuGU3EBMDWc8cR7cmj_CAPL_iBzRuKpRNCGwIJnghYhFnBmZRZXDbhjaO)

This is the main folder for the driver app. The dist folder is the output folder when the project is built for the production environment.

  

The e2e folder deals with any end to end testing that may have been done.

  

The node_modules folder is the folder that is created when the user runs npm install. It contains all of the project’s dependencies that are specified int the package.json file.

  

![](https://lh5.googleusercontent.com/PZxjklfTtZy31j61MmGKzvAfcbliNXTwtSJFMaW6ShFrDkkwPlmbV3Yf4dpvhJyty1TOVC0674OOLeA4scAAhbrNB6c182sczH7_Y_BWCqOJsH2P-r74tO-o_5jX04aHOI1cxo9r)

  

The source folder is where the development occurred. There are a number of folders here as well that have been created to keep a model view controller schema. The capitalized folders Guards, Helpers, Models, and Services are all internal segmentations of the software. The lowercase folders configure, confirmation, home, and login are all separate pages that the user is able to see in the app.

  

## API:

![](https://lh5.googleusercontent.com/Ycqat4Cg9kFxg1kZXXxcDP1d_norPHbYx9VWFXl5rz9Vkh5UleQ1KDJvOLU-W5y6CAK4dze16BQVWKD5LeGyvPGVjii3RJnMQS8jGJF2xhQAEpC5C4j6GaMXHcp07atZz3AIX2sj)

Our API is a simple one written in PHP. each api endpoint is its own separate php file. The config folder holds the files that need to be modified for whatever environment it’s being installed on.