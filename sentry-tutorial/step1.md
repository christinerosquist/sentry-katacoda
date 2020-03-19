You have now gotten access to a terminal that contains a folder named *sample-app*, which is a basic Node.js application. 
In this step we will tell you how to start using Sentry on the application, by installing the SDK.

# Add Sentry package as a dependency
In the terminal, you will have access to an already existing application based on React and Node.js (sample-app). 

You can write `cd sample-app` in the terminal, in order to navigate to the folder containing the different application files. 
If you write `ls` you can list the different folders and look them through to get a better overview of the app.

*Firstly* we need to add the Sentry package as a dependency, which is done by executing the commands stated below. Sentry captures data using an SDK within your application's runtime. These are platform specific and allow Sentry to have a deep understanding of how your application works. This tutorial is made when using Node.js. 

1. Navigate to the application-folder: `cd sample-app`{{execute}} 

2. Install the Sentry package: `npm install @sentry/node@5.14.1`{{execute}}

When the installation is complete, you can continue to the next step of the tutorial!
