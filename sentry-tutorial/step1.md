You have now gotten access to a terminal that contains a folder named *sample-app*, which is a basic React application. 
In this step we will tell you how to start using Sentry on the application, by installing the SDK.

# Add Sentry package as a dependency
In the terminal, you will have access to an already existing React application. 

You can write `cd sample-app` in the terminal, in order to navigate to the folder containing the different application files. 
If you write `ls` you can list the different folders and look them through to get a better overview of the app.

*Firstly* you need to sign up for an account at https://sentry.io/signup/. You will be able to select the platform that you want to use for the project, which in this tutorial is React.js. 

You will then need to add the Sentry package as a dependency, which is done by executing the commands stated below. Sentry captures data using an SDK within your application's runtime. These are platform specific and allow Sentry to have a deep understanding of how your application works. 

1. Navigate to the application-folder: `cd sample-app`{{execute}} 

2. Install the Sentry package: `npm install @sentry/browser`{{execute}}

When the installation is complete, you can continue to the next step of the tutorial!
